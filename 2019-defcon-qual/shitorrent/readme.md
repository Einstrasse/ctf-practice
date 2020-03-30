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

[Service registration ref blog](https://nasanx2001.tistory.com/entry/%EC%9A%B0%EB%B6%84%ED%88%AC-1804-%EC%9E%90%EB%8F%99%EC%8B%A4%ED%96%89-%EC%84%9C%EB%B9%84%EC%8A%A4%EB%93%B1%EB%A1%9D)    
