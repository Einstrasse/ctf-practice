# shitorrent

distributed messaging service, bug in FD_SET


## Mitigations in binary
```
    Arch:     amd64-64-little
    RELRO:    Partial RELRO
    Stack:    Canary found
    NX:       NX enabled
    PIE:      No PIE
```
The binary is statically linked.

## Vulnerability

You can find the article with command `man fd_set`

```
BUGS
       POSIX allows an implementation to define an upper limit, advertised via
       the  constant  FD_SETSIZE, on the range of file descriptors that can be
       specified in a file descriptor set.  The Linux kernel imposes no  fixed
       limit,  but  the  glibc  implementation makes fd_set a fixed-size type,
       with FD_SETSIZE defined  as  1024,  and  the  FD_*()  macros  operating
       according  to  that  limit.   To  monitor file descriptors greater than
       1023, use poll(2) instead.

```
Ref: [linux man page](http://man7.org/linux/man-pages/man2/select.2.html)    

Because of the feature above, the buffer overflow in local variable occurs.
The variable reisdes in main function context, it can overwrite the return address of main function.

The NX is set, we can do rop to exploit the binary.

# Exploitation

## Service registration
In order to take advantage the feature provided by the binary, we should construct the client peer on my server. You can easily get the peer binary just compile the `peer.c` file with `make` command. Two version of peer binary provided, the first one is for the normal user, the other is for the amdin user, they provide different function.

I used xinetd to register the service.

create two files at `/etc/xinetd.d/defcon1` and `/etc/xinetd.d/defcon2`

defcon1 file

```
{
	socket_type	= stream
	protocol	= tcp
	wait		= no
	user		= nobody
	bind		= 0.0.0.0
	server		= /home/bobgil/Desktop/ctf-practice/2019-defcon-qual/shitorrent/lis
	port		= 10001
	type		= UNLISTED
}
```
defcon2 file
```
{
	socket_type	= stream
	protocol	= tcp
	wait		= no
	user		= nobody
	bind		= 0.0.0.0
	server		= /home/bobgil/Desktop/ctf-practice/2019-defcon-qual/shitorrent/peer
	port		= 10002
	type		= UNLISTED
}
```
Append two line to `/etc/services`
```
$ echo -e "defcon1\t\t10001/tcp" >> /etc/service
$ echo -e "defcon2\t\t10002/tcp" >> /etc/service
```

Config file edit is finished. Now, let's restart xinetd service.

```
$ sudo systemctl restart xinetd
```

Now, at 127.0.0.1:10001 normal user service registered, at 127.0.0.1:10002 admin user service registered.

## Stack canary bypass
Although stack canary is found in binary, fd_set bug can overwrite return address without corrupting the stack canary value, we can simply bypass the mitigation.

## Ulimit setting(maximum no. of open files)
open files number should be longer than your exploit payload + 1216.

In the server source code, there is code snippet to increate NOFILE of system limit, if the binary execution permission(euid) is not root, it does not do well.

I do not understand the full mechanism of ulimit, but I intensively advise you run server binary with root user privilage and config ulimit.

ulimit setting example

```
$ ulimit -a
core file size          (blocks, -c) 0
data seg size           (kbytes, -d) unlimited
scheduling priority             (-e) 0
file size               (blocks, -f) unlimited
pending signals                 (-i) 63521
max locked memory       (kbytes, -l) 16384
max memory size         (kbytes, -m) unlimited
open files                      (-n) 1024
pipe size            (512 bytes, -p) 8
POSIX message queues     (bytes, -q) 819200
real-time priority              (-r) 0
stack size              (kbytes, -s) 8192
cpu time               (seconds, -t) unlimited
max user processes              (-u) 63521
virtual memory          (kbytes, -v) unlimited
file locks                      (-x) unlimited
$ ulimit -n 60000
$ ulimit -a
core file size          (blocks, -c) 0
data seg size           (kbytes, -d) unlimited
scheduling priority             (-e) 0
file size               (blocks, -f) unlimited
pending signals                 (-i) 63521
max locked memory       (kbytes, -l) 16384
max memory size         (kbytes, -m) unlimited
open files                      (-n) 60000
pipe size            (512 bytes, -p) 8
POSIX message queues     (bytes, -q) 819200
real-time priority              (-r) 0
stack size              (kbytes, -s) 8192
cpu time               (seconds, -t) unlimited
max user processes              (-u) 63521
virtual memory          (kbytes, -v) unlimited
file locks                      (-x) unlimited
```

## Offset calculation
```
000000000040171c <main>:
  40171c:	55                   	push   %rbp
  40171d:	48 89 e5             	mov    %rsp,%rbp
  401720:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
  401727:	89 bd 6c ff ff ff    	mov    %edi,-0x94(%rbp)
  40172d:	48 89 b5 60 ff ff ff 	mov    %rsi,-0xa0(%rbp)
  401734:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40173b:	00 00 
  40173d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401741:	31 c0                	xor    %eax,%eax
  401743:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  40174a:	48 89 05 bf ac 2d 00 	mov    %rax,0x2dacbf(%rip)        # 6dc410 <rfds>
  401751:	c7 05 bd ac 2d 00 02 	movl   $0x2,0x2dacbd(%rip)        # 6dc418 <lastfd>
  401758:	00 00 00 
  40175b:	e8 d4 f5 ff ff       	callq  400d34 <_Z10setfdlimitv>
  401760:	e8 4e f6 ff ff       	callq  400db3 <_Z5nobufv>
  401765:	e8 aa f6 ff ff       	callq  400e14 <_Z5introv>
  40176a:	e8 00 ff ff ff       	callq  40166f <_Z7notmainv>
  40176f:	b8 00 00 00 00       	mov    $0x0,%eax
  401774:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401778:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  40177f:	00 00 
  401781:	74 05                	je     401788 <main+0x6c>
  401783:	e8 48 6b 06 00       	callq  4682d0 <__stack_chk_fail>
  401788:	c9                   	leaveq 
  401789:	c3                   	retq   
```
rfds is the global variable resides in 0x6dc410. `fd_set` local variable resides in -0x90(%rbp)

To reach the rbp, 0x90 * 8 (1152) bit should be dummy value. For jump the saved rbp, 64bit added to length,
the total dummy length is 1216 bit.

Stack seems like below
```
-------------
|  ret addr |
-------------
| saved rbp |
-------------
|           | <---- rbp 
-------------
|  canary   |
-------------
|           |
-------------
     .
     .
     .
-------------
| fd_set    | <---- (rbp - 0x90)
-------------
```

The payload will be crafted like below.

Dummy 1216 bit + ROP gadgets(Ret addr and stack values)

```
     -------------
     |  ret addr |
---  -------------
 D   | saved rbp |
 U   -------------
 M   |           | <---- rbp 
 M   -------------
 Y   |  canary   |
 1   -------------
 2   |           |
 1   -------------
 6         .
 b         .
 i           .
 t   -------------
     | fd_set    | <---- (rbp - 0x90)
     -------------
```

## Socket connection unavailable due to "CLOSE_WAIT" state connections
During the local debugging, the socket connection is no longer available.
I don't know why I checked network status with netstat command.

```
$ netstat -an
Active Internet connections (servers and established)
Proto Recv-Q Send-Q Local Address           Foreign Address         State      
tcp        0      0 0.0.0.0:10001           0.0.0.0:*               LISTEN     
tcp        0      0 0.0.0.0:10002           0.0.0.0:*               LISTEN     
tcp        0      0 127.0.0.53:53           0.0.0.0:*               LISTEN     
tcp        0      0 127.0.0.1:631           0.0.0.0:*               LISTEN     
tcp        0      0 127.0.0.1:3306          0.0.0.0:*               LISTEN     
tcp        1      0 127.0.0.1:39356         127.0.0.1:10001         CLOSE_WAIT 
tcp        0      0 127.0.0.1:10001         127.0.0.1:36464         TIME_WAIT  
tcp        0      0 127.0.0.1:10001         127.0.0.1:34722         TIME_WAIT  
tcp        0      0 127.0.0.1:10001         127.0.0.1:36572         TIME_WAIT  
tcp        1      0 127.0.0.1:56334         127.0.0.1:10002         CLOSE_WAIT 
tcp        1      0 127.0.0.1:57648         127.0.0.1:10002         CLOSE_WAIT 
tcp        0      0 127.0.0.1:10001         127.0.0.1:34710         TIME_WAIT  
tcp        1      0 127.0.0.1:56606         127.0.0.1:10002         CLOSE_WAIT 
tcp        1      0 127.0.0.1:57496         127.0.0.1:10002         CLOSE_WAIT 
tcp        1      0 127.0.0.1:57326         127.0.0.1:10002         CLOSE_WAIT 
tcp        0      0 127.0.0.1:10002         127.0.0.1:56990         FIN_WAIT2  
tcp        0      0 127.0.0.1:10001         127.0.0.1:36674         TIME_WAIT  
tcp        1      0 127.0.0.1:57594         127.0.0.1:10002         CLOSE_WAIT 
tcp        1      0 127.0.0.1:56670         127.0.0.1:10002         CLOSE_WAIT 
tcp        0      0 127.0.0.1:10002         127.0.0.1:56380         FIN_WAIT2  
tcp        1      0 127.0.0.1:57340         127.0.0.1:10002         CLOSE_WAIT 
tcp        1      0 127.0.0.1:57494         127.0.0.1:10002         CLOSE_WAIT 
tcp        1      0 127.0.0.1:56802         127.0.0.1:10002         CLOSE_WAIT 
tcp        1      0 127.0.0.1:57808         127.0.0.1:10002         CLOSE_WAIT 
tcp        1      0 127.0.0.1:39326         127.0.0.1:10001         CLOSE_WAIT 
tcp        0      0 127.0.0.1:10001         127.0.0.1:35430         TIME_WAIT  
tcp        1      0 127.0.0.1:57512         127.0.0.1:10002         CLOSE_WAIT
```

There are very very many CLOSE_WAIT, FIN_WAIT2, TIME_WAIT state connections.
You must reset that connections..
[Ref blog](http://docs.likejazz.com/close-wait/)    
Time wait state have life. So after several time elapsed, the time wait state connection will disappear. But close_wait state seems such kind of a zombie_state. We must resolve that.

After kill the process, the CLOSE_WAIT status connection all vanished.

Then, what is the cause of connection error? 

About this phenomenon, further research is required.

--------------------------
The cause of socket connection error is due to too fast connection request.
The server program(echo mewo, TORADMIN service) reply 'Connection Refused' because of too fast connection request.
I insert some sleep command between payload request, and it worked!