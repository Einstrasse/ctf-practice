
main:     file format elf32-i386


Disassembly of section .interp:

08048154 <.interp>:
 8048154:	2f                   	das    
 8048155:	6c                   	insb   (%dx),%es:(%edi)
 8048156:	69 62 2f 6c 64 2d 6c 	imul   $0x6c2d646c,0x2f(%edx),%esp
 804815d:	69 6e 75 78 2e 73 6f 	imul   $0x6f732e78,0x75(%esi),%ebp
 8048164:	2e 32 00             	xor    %cs:(%eax),%al

Disassembly of section .note.ABI-tag:

08048168 <.note.ABI-tag>:
 8048168:	04 00                	add    $0x0,%al
 804816a:	00 00                	add    %al,(%eax)
 804816c:	10 00                	adc    %al,(%eax)
 804816e:	00 00                	add    %al,(%eax)
 8048170:	01 00                	add    %eax,(%eax)
 8048172:	00 00                	add    %al,(%eax)
 8048174:	47                   	inc    %edi
 8048175:	4e                   	dec    %esi
 8048176:	55                   	push   %ebp
 8048177:	00 00                	add    %al,(%eax)
 8048179:	00 00                	add    %al,(%eax)
 804817b:	00 02                	add    %al,(%edx)
 804817d:	00 00                	add    %al,(%eax)
 804817f:	00 06                	add    %al,(%esi)
 8048181:	00 00                	add    %al,(%eax)
 8048183:	00 20                	add    %ah,(%eax)
 8048185:	00 00                	add    %al,(%eax)
	...

Disassembly of section .note.gnu.build-id:

08048188 <.note.gnu.build-id>:
 8048188:	04 00                	add    $0x0,%al
 804818a:	00 00                	add    %al,(%eax)
 804818c:	14 00                	adc    $0x0,%al
 804818e:	00 00                	add    %al,(%eax)
 8048190:	03 00                	add    (%eax),%eax
 8048192:	00 00                	add    %al,(%eax)
 8048194:	47                   	inc    %edi
 8048195:	4e                   	dec    %esi
 8048196:	55                   	push   %ebp
 8048197:	00 63 2d             	add    %ah,0x2d(%ebx)
 804819a:	24 7d                	and    $0x7d,%al
 804819c:	31 43 50             	xor    %eax,0x50(%ebx)
 804819f:	a4                   	movsb  %ds:(%esi),%es:(%edi)
 80481a0:	4e                   	dec    %esi
 80481a1:	b5 90                	mov    $0x90,%ch
 80481a3:	22 62 a7             	and    -0x59(%edx),%ah
 80481a6:	4e                   	dec    %esi
 80481a7:	12 29                	adc    (%ecx),%ch
 80481a9:	65                   	gs
 80481aa:	38                   	.byte 0x38
 80481ab:	25                   	.byte 0x25

Disassembly of section .gnu.hash:

080481ac <.gnu.hash>:
 80481ac:	02 00                	add    (%eax),%al
 80481ae:	00 00                	add    %al,(%eax)
 80481b0:	05 00 00 00 01       	add    $0x1000000,%eax
 80481b5:	00 00                	add    %al,(%eax)
 80481b7:	00 05 00 00 00 00    	add    %al,0x0
 80481bd:	20 00                	and    %al,(%eax)
 80481bf:	20 00                	and    %al,(%eax)
 80481c1:	00 00                	add    %al,(%eax)
 80481c3:	00 05 00 00 00 ad    	add    %al,0xad000000
 80481c9:	4b                   	dec    %ebx
 80481ca:	e3 c0                	jecxz  804818c <_init-0x164>

Disassembly of section .dynsym:

080481cc <.dynsym>:
	...
 80481dc:	1a 00                	sbb    (%eax),%al
	...
 80481e6:	00 00                	add    %al,(%eax)
 80481e8:	12 00                	adc    (%eax),%al
 80481ea:	00 00                	add    %al,(%eax)
 80481ec:	44                   	inc    %esp
	...
 80481f5:	00 00                	add    %al,(%eax)
 80481f7:	00 20                	add    %ah,(%eax)
 80481f9:	00 00                	add    %al,(%eax)
 80481fb:	00 32                	add    %dh,(%edx)
	...
 8048205:	00 00                	add    %al,(%eax)
 8048207:	00 12                	add    %dl,(%edx)
 8048209:	00 00                	add    %al,(%eax)
 804820b:	00 2b                	add    %ch,(%ebx)
	...
 8048215:	00 00                	add    %al,(%eax)
 8048217:	00 12                	add    %dl,(%edx)
 8048219:	00 00                	add    %al,(%eax)
 804821b:	00 0b                	add    %cl,(%ebx)
 804821d:	00 00                	add    %al,(%eax)
 804821f:	00 4c 86 04          	add    %cl,0x4(%esi,%eax,4)
 8048223:	08 04 00             	or     %al,(%eax,%eax,1)
 8048226:	00 00                	add    %al,(%eax)
 8048228:	11 00                	adc    %eax,(%eax)
 804822a:	10 00                	adc    %al,(%eax)

Disassembly of section .dynstr:

0804822c <.dynstr>:
 804822c:	00 6c 69 62          	add    %ch,0x62(%ecx,%ebp,2)
 8048230:	63 2e                	arpl   %bp,(%esi)
 8048232:	73 6f                	jae    80482a3 <_init-0x4d>
 8048234:	2e 36 00 5f 49       	cs add %bl,%ss:0x49(%edi)
 8048239:	4f                   	dec    %edi
 804823a:	5f                   	pop    %edi
 804823b:	73 74                	jae    80482b1 <_init-0x3f>
 804823d:	64 69 6e 5f 75 73 65 	imul   $0x64657375,%fs:0x5f(%esi),%ebp
 8048244:	64 
 8048245:	00 5f 5f             	add    %bl,0x5f(%edi)
 8048248:	73 74                	jae    80482be <_init-0x32>
 804824a:	61                   	popa   
 804824b:	63 6b 5f             	arpl   %bp,0x5f(%ebx)
 804824e:	63 68 6b             	arpl   %bp,0x6b(%eax)
 8048251:	5f                   	pop    %edi
 8048252:	66 61                	popaw  
 8048254:	69 6c 00 6d 65 6d 73 	imul   $0x65736d65,0x6d(%eax,%eax,1),%ebp
 804825b:	65 
 804825c:	74 00                	je     804825e <_init-0x92>
 804825e:	5f                   	pop    %edi
 804825f:	5f                   	pop    %edi
 8048260:	6c                   	insb   (%dx),%es:(%edi)
 8048261:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%edx),%esp
 8048268:	72 74                	jb     80482de <_init-0x12>
 804826a:	5f                   	pop    %edi
 804826b:	6d                   	insl   (%dx),%es:(%edi)
 804826c:	61                   	popa   
 804826d:	69 6e 00 5f 5f 67 6d 	imul   $0x6d675f5f,0x0(%esi),%ebp
 8048274:	6f                   	outsl  %ds:(%esi),(%dx)
 8048275:	6e                   	outsb  %ds:(%esi),(%dx)
 8048276:	5f                   	pop    %edi
 8048277:	73 74                	jae    80482ed <_init-0x3>
 8048279:	61                   	popa   
 804827a:	72 74                	jb     80482f0 <_init>
 804827c:	5f                   	pop    %edi
 804827d:	5f                   	pop    %edi
 804827e:	00 47 4c             	add    %al,0x4c(%edi)
 8048281:	49                   	dec    %ecx
 8048282:	42                   	inc    %edx
 8048283:	43                   	inc    %ebx
 8048284:	5f                   	pop    %edi
 8048285:	32 2e                	xor    (%esi),%ch
 8048287:	30 00                	xor    %al,(%eax)
 8048289:	47                   	inc    %edi
 804828a:	4c                   	dec    %esp
 804828b:	49                   	dec    %ecx
 804828c:	42                   	inc    %edx
 804828d:	43                   	inc    %ebx
 804828e:	5f                   	pop    %edi
 804828f:	32 2e                	xor    (%esi),%ch
 8048291:	34 00                	xor    $0x0,%al

Disassembly of section .gnu.version:

08048294 <.gnu.version>:
 8048294:	00 00                	add    %al,(%eax)
 8048296:	02 00                	add    (%eax),%al
 8048298:	00 00                	add    %al,(%eax)
 804829a:	03 00                	add    (%eax),%eax
 804829c:	03 00                	add    (%eax),%eax
 804829e:	01 00                	add    %eax,(%eax)

Disassembly of section .gnu.version_r:

080482a0 <.gnu.version_r>:
 80482a0:	01 00                	add    %eax,(%eax)
 80482a2:	02 00                	add    (%eax),%al
 80482a4:	01 00                	add    %eax,(%eax)
 80482a6:	00 00                	add    %al,(%eax)
 80482a8:	10 00                	adc    %al,(%eax)
 80482aa:	00 00                	add    %al,(%eax)
 80482ac:	00 00                	add    %al,(%eax)
 80482ae:	00 00                	add    %al,(%eax)
 80482b0:	10 69 69             	adc    %ch,0x69(%ecx)
 80482b3:	0d 00 00 03 00       	or     $0x30000,%eax
 80482b8:	53                   	push   %ebx
 80482b9:	00 00                	add    %al,(%eax)
 80482bb:	00 10                	add    %dl,(%eax)
 80482bd:	00 00                	add    %al,(%eax)
 80482bf:	00 14 69             	add    %dl,(%ecx,%ebp,2)
 80482c2:	69 0d 00 00 02 00 5d 	imul   $0x5d,0x20000,%ecx
 80482c9:	00 00 00 
 80482cc:	00 00                	add    %al,(%eax)
	...

Disassembly of section .rel.dyn:

080482d0 <.rel.dyn>:
 80482d0:	fc                   	cld    
 80482d1:	9f                   	lahf   
 80482d2:	04 08                	add    $0x8,%al
 80482d4:	06                   	push   %es
 80482d5:	02 00                	add    (%eax),%al
	...

Disassembly of section .rel.plt:

080482d8 <.rel.plt>:
 80482d8:	0c a0                	or     $0xa0,%al
 80482da:	04 08                	add    $0x8,%al
 80482dc:	07                   	pop    %es
 80482dd:	01 00                	add    %eax,(%eax)
 80482df:	00 10                	add    %dl,(%eax)
 80482e1:	a0 04 08 07 03       	mov    0x3070804,%al
 80482e6:	00 00                	add    %al,(%eax)
 80482e8:	14 a0                	adc    $0xa0,%al
 80482ea:	04 08                	add    $0x8,%al
 80482ec:	07                   	pop    %es
 80482ed:	04 00                	add    $0x0,%al
	...

Disassembly of section .init:

080482f0 <_init>:
 80482f0:	53                   	push   %ebx
 80482f1:	83 ec 08             	sub    $0x8,%esp
 80482f4:	e8 a7 00 00 00       	call   80483a0 <__x86.get_pc_thunk.bx>
 80482f9:	81 c3 07 1d 00 00    	add    $0x1d07,%ebx
 80482ff:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048305:	85 c0                	test   %eax,%eax
 8048307:	74 05                	je     804830e <_init+0x1e>
 8048309:	e8 52 00 00 00       	call   8048360 <memset@plt+0x10>
 804830e:	83 c4 08             	add    $0x8,%esp
 8048311:	5b                   	pop    %ebx
 8048312:	c3                   	ret    

Disassembly of section .plt:

08048320 <__stack_chk_fail@plt-0x10>:
 8048320:	ff 35 04 a0 04 08    	pushl  0x804a004
 8048326:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804832c:	00 00                	add    %al,(%eax)
	...

08048330 <__stack_chk_fail@plt>:
 8048330:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048336:	68 00 00 00 00       	push   $0x0
 804833b:	e9 e0 ff ff ff       	jmp    8048320 <_init+0x30>

08048340 <__libc_start_main@plt>:
 8048340:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048346:	68 08 00 00 00       	push   $0x8
 804834b:	e9 d0 ff ff ff       	jmp    8048320 <_init+0x30>

08048350 <memset@plt>:
 8048350:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048356:	68 10 00 00 00       	push   $0x10
 804835b:	e9 c0 ff ff ff       	jmp    8048320 <_init+0x30>

Disassembly of section .plt.got:

08048360 <.plt.got>:
 8048360:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 8048366:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

08048370 <_start>:
 8048370:	31 ed                	xor    %ebp,%ebp
 8048372:	5e                   	pop    %esi
 8048373:	89 e1                	mov    %esp,%ecx
 8048375:	83 e4 f0             	and    $0xfffffff0,%esp
 8048378:	50                   	push   %eax
 8048379:	54                   	push   %esp
 804837a:	52                   	push   %edx
 804837b:	68 30 86 04 08       	push   $0x8048630
 8048380:	68 d0 85 04 08       	push   $0x80485d0
 8048385:	51                   	push   %ecx
 8048386:	56                   	push   %esi
 8048387:	68 73 84 04 08       	push   $0x8048473
 804838c:	e8 af ff ff ff       	call   8048340 <__libc_start_main@plt>
 8048391:	f4                   	hlt    
 8048392:	66 90                	xchg   %ax,%ax
 8048394:	66 90                	xchg   %ax,%ax
 8048396:	66 90                	xchg   %ax,%ax
 8048398:	66 90                	xchg   %ax,%ax
 804839a:	66 90                	xchg   %ax,%ax
 804839c:	66 90                	xchg   %ax,%ax
 804839e:	66 90                	xchg   %ax,%ax

080483a0 <__x86.get_pc_thunk.bx>:
 80483a0:	8b 1c 24             	mov    (%esp),%ebx
 80483a3:	c3                   	ret    
 80483a4:	66 90                	xchg   %ax,%ax
 80483a6:	66 90                	xchg   %ax,%ax
 80483a8:	66 90                	xchg   %ax,%ax
 80483aa:	66 90                	xchg   %ax,%ax
 80483ac:	66 90                	xchg   %ax,%ax
 80483ae:	66 90                	xchg   %ax,%ax

080483b0 <deregister_tm_clones>:
 80483b0:	b8 23 a0 04 08       	mov    $0x804a023,%eax
 80483b5:	2d 20 a0 04 08       	sub    $0x804a020,%eax
 80483ba:	83 f8 06             	cmp    $0x6,%eax
 80483bd:	76 1a                	jbe    80483d9 <deregister_tm_clones+0x29>
 80483bf:	b8 00 00 00 00       	mov    $0x0,%eax
 80483c4:	85 c0                	test   %eax,%eax
 80483c6:	74 11                	je     80483d9 <deregister_tm_clones+0x29>
 80483c8:	55                   	push   %ebp
 80483c9:	89 e5                	mov    %esp,%ebp
 80483cb:	83 ec 14             	sub    $0x14,%esp
 80483ce:	68 20 a0 04 08       	push   $0x804a020
 80483d3:	ff d0                	call   *%eax
 80483d5:	83 c4 10             	add    $0x10,%esp
 80483d8:	c9                   	leave  
 80483d9:	f3 c3                	repz ret 
 80483db:	90                   	nop
 80483dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080483e0 <register_tm_clones>:
 80483e0:	b8 20 a0 04 08       	mov    $0x804a020,%eax
 80483e5:	2d 20 a0 04 08       	sub    $0x804a020,%eax
 80483ea:	c1 f8 02             	sar    $0x2,%eax
 80483ed:	89 c2                	mov    %eax,%edx
 80483ef:	c1 ea 1f             	shr    $0x1f,%edx
 80483f2:	01 d0                	add    %edx,%eax
 80483f4:	d1 f8                	sar    %eax
 80483f6:	74 1b                	je     8048413 <register_tm_clones+0x33>
 80483f8:	ba 00 00 00 00       	mov    $0x0,%edx
 80483fd:	85 d2                	test   %edx,%edx
 80483ff:	74 12                	je     8048413 <register_tm_clones+0x33>
 8048401:	55                   	push   %ebp
 8048402:	89 e5                	mov    %esp,%ebp
 8048404:	83 ec 10             	sub    $0x10,%esp
 8048407:	50                   	push   %eax
 8048408:	68 20 a0 04 08       	push   $0x804a020
 804840d:	ff d2                	call   *%edx
 804840f:	83 c4 10             	add    $0x10,%esp
 8048412:	c9                   	leave  
 8048413:	f3 c3                	repz ret 
 8048415:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048419:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048420 <__do_global_dtors_aux>:
 8048420:	80 3d 20 a0 04 08 00 	cmpb   $0x0,0x804a020
 8048427:	75 13                	jne    804843c <__do_global_dtors_aux+0x1c>
 8048429:	55                   	push   %ebp
 804842a:	89 e5                	mov    %esp,%ebp
 804842c:	83 ec 08             	sub    $0x8,%esp
 804842f:	e8 7c ff ff ff       	call   80483b0 <deregister_tm_clones>
 8048434:	c6 05 20 a0 04 08 01 	movb   $0x1,0x804a020
 804843b:	c9                   	leave  
 804843c:	f3 c3                	repz ret 
 804843e:	66 90                	xchg   %ax,%ax

08048440 <frame_dummy>:
 8048440:	b8 10 9f 04 08       	mov    $0x8049f10,%eax
 8048445:	8b 10                	mov    (%eax),%edx
 8048447:	85 d2                	test   %edx,%edx
 8048449:	75 05                	jne    8048450 <frame_dummy+0x10>
 804844b:	eb 93                	jmp    80483e0 <register_tm_clones>
 804844d:	8d 76 00             	lea    0x0(%esi),%esi
 8048450:	ba 00 00 00 00       	mov    $0x0,%edx
 8048455:	85 d2                	test   %edx,%edx
 8048457:	74 f2                	je     804844b <frame_dummy+0xb>
 8048459:	55                   	push   %ebp
 804845a:	89 e5                	mov    %esp,%ebp
 804845c:	83 ec 14             	sub    $0x14,%esp
 804845f:	50                   	push   %eax
 8048460:	ff d2                	call   *%edx
 8048462:	83 c4 10             	add    $0x10,%esp
 8048465:	c9                   	leave  
 8048466:	e9 75 ff ff ff       	jmp    80483e0 <register_tm_clones>

0804846b <eax_setter>:
 804846b:	55                   	push   %ebp
 804846c:	89 e5                	mov    %esp,%ebp
 804846e:	8b 45 08             	mov    0x8(%ebp),%eax
 8048471:	5d                   	pop    %ebp
 8048472:	c3                   	ret    

08048473 <main>:
 8048473:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048477:	83 e4 f0             	and    $0xfffffff0,%esp
 804847a:	ff 71 fc             	pushl  -0x4(%ecx)
 804847d:	55                   	push   %ebp
 804847e:	89 e5                	mov    %esp,%ebp
 8048480:	51                   	push   %ecx
 8048481:	81 ec 14 04 00 00    	sub    $0x414,%esp
 8048487:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804848d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048490:	31 c0                	xor    %eax,%eax
 8048492:	83 ec 04             	sub    $0x4,%esp
 8048495:	68 00 04 00 00       	push   $0x400
 804849a:	6a 00                	push   $0x0
 804849c:	8d 85 f4 fb ff ff    	lea    -0x40c(%ebp),%eax
 80484a2:	50                   	push   %eax
 80484a3:	e8 a8 fe ff ff       	call   8048350 <memset@plt>
 80484a8:	83 c4 10             	add    $0x10,%esp
 80484ab:	83 ec 0c             	sub    $0xc,%esp
 80484ae:	8d 85 f4 fb ff ff    	lea    -0x40c(%ebp),%eax
 80484b4:	50                   	push   %eax
 80484b5:	e8 b1 ff ff ff       	call   804846b <eax_setter>
 80484ba:	83 c4 10             	add    $0x10,%esp
 80484bd:	89 85 f0 fb ff ff    	mov    %eax,-0x410(%ebp)
 80484c3:	8b 85 f0 fb ff ff    	mov    -0x410(%ebp),%eax
 80484c9:	50                   	push   %eax
 80484ca:	80 00 6a             	addb   $0x6a,(%eax)
 80484cd:	00 6d 00             	add    %ch,0x0(%ebp)
 80484d0:	40                   	inc    %eax
 80484d1:	00 6d 00             	add    %ch,0x0(%ebp)
 80484d4:	80 00 68             	addb   $0x68,(%eax)
 80484d7:	00 6d 00             	add    %ch,0x0(%ebp)
 80484da:	40                   	inc    %eax
 80484db:	00 6d 00             	add    %ch,0x0(%ebp)
 80484de:	80 00 68             	addb   $0x68,(%eax)
 80484e1:	00 6d 00             	add    %ch,0x0(%ebp)
 80484e4:	40                   	inc    %eax
 80484e5:	00 6d 00             	add    %ch,0x0(%ebp)
 80484e8:	80 00 2f             	addb   $0x2f,(%eax)
 80484eb:	00 6d 00             	add    %ch,0x0(%ebp)
 80484ee:	40                   	inc    %eax
 80484ef:	00 6d 00             	add    %ch,0x0(%ebp)
 80484f2:	80 00 2f             	addb   $0x2f,(%eax)
 80484f5:	00 6d 00             	add    %ch,0x0(%ebp)
 80484f8:	40                   	inc    %eax
 80484f9:	00 6d 00             	add    %ch,0x0(%ebp)
 80484fc:	80 00 2f             	addb   $0x2f,(%eax)
 80484ff:	00 6d 00             	add    %ch,0x0(%ebp)
 8048502:	40                   	inc    %eax
 8048503:	00 6d 00             	add    %ch,0x0(%ebp)
 8048506:	80 00 73             	addb   $0x73,(%eax)
 8048509:	00 6d 00             	add    %ch,0x0(%ebp)
 804850c:	40                   	inc    %eax
 804850d:	00 6d 00             	add    %ch,0x0(%ebp)
 8048510:	80 00 68             	addb   $0x68,(%eax)
 8048513:	00 6d 00             	add    %ch,0x0(%ebp)
 8048516:	40                   	inc    %eax
 8048517:	00 6d 00             	add    %ch,0x0(%ebp)
 804851a:	80 00 2f             	addb   $0x2f,(%eax)
 804851d:	00 6d 00             	add    %ch,0x0(%ebp)
 8048520:	40                   	inc    %eax
 8048521:	00 6d 00             	add    %ch,0x0(%ebp)
 8048524:	80 00 62             	addb   $0x62,(%eax)
 8048527:	00 6d 00             	add    %ch,0x0(%ebp)
 804852a:	40                   	inc    %eax
 804852b:	00 6d 00             	add    %ch,0x0(%ebp)
 804852e:	80 00 69             	addb   $0x69,(%eax)
 8048531:	00 6d 00             	add    %ch,0x0(%ebp)
 8048534:	40                   	inc    %eax
 8048535:	00 6d 00             	add    %ch,0x0(%ebp)
 8048538:	80 00 6e             	addb   $0x6e,(%eax)
 804853b:	00 6d 00             	add    %ch,0x0(%ebp)
 804853e:	40                   	inc    %eax
 804853f:	00 6d 00             	add    %ch,0x0(%ebp)
 8048542:	80 00 6a             	addb   $0x6a,(%eax)
 8048545:	00 6d 00             	add    %ch,0x0(%ebp)
 8048548:	40                   	inc    %eax
 8048549:	00 6d 00             	add    %ch,0x0(%ebp)
 804854c:	80 00 0b             	addb   $0xb,(%eax)
 804854f:	00 6d 00             	add    %ch,0x0(%ebp)
 8048552:	40                   	inc    %eax
 8048553:	00 6d 00             	add    %ch,0x0(%ebp)
 8048556:	80 00 58             	addb   $0x58,(%eax)
 8048559:	00 6d 00             	add    %ch,0x0(%ebp)
 804855c:	40                   	inc    %eax
 804855d:	00 6d 00             	add    %ch,0x0(%ebp)
 8048560:	80 00 89             	addb   $0x89,(%eax)
 8048563:	00 6d 00             	add    %ch,0x0(%ebp)
 8048566:	40                   	inc    %eax
 8048567:	00 6d 00             	add    %ch,0x0(%ebp)
 804856a:	80 00 e3             	addb   $0xe3,(%eax)
 804856d:	00 6d 00             	add    %ch,0x0(%ebp)
 8048570:	40                   	inc    %eax
 8048571:	00 6d 00             	add    %ch,0x0(%ebp)
 8048574:	80 00 31             	addb   $0x31,(%eax)
 8048577:	00 6d 00             	add    %ch,0x0(%ebp)
 804857a:	40                   	inc    %eax
 804857b:	00 6d 00             	add    %ch,0x0(%ebp)
 804857e:	80 00 c9             	addb   $0xc9,(%eax)
 8048581:	00 6d 00             	add    %ch,0x0(%ebp)
 8048584:	40                   	inc    %eax
 8048585:	00 6d 00             	add    %ch,0x0(%ebp)
 8048588:	80 00 99             	addb   $0x99,(%eax)
 804858b:	00 6d 00             	add    %ch,0x0(%ebp)
 804858e:	40                   	inc    %eax
 804858f:	00 6d 00             	add    %ch,0x0(%ebp)
 8048592:	80 00 cd             	addb   $0xcd,(%eax)
 8048595:	00 6d 00             	add    %ch,0x0(%ebp)
 8048598:	40                   	inc    %eax
 8048599:	00 6d 00             	add    %ch,0x0(%ebp)
 804859c:	80 00 80             	addb   $0x80,(%eax)
 804859f:	00 6d 00             	add    %ch,0x0(%ebp)
 80485a2:	40                   	inc    %eax
 80485a3:	00 6d 00             	add    %ch,0x0(%ebp)
 80485a6:	c3                   	ret    
 80485a7:	b8 00 00 00 00       	mov    $0x0,%eax
 80485ac:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80485af:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 80485b6:	74 05                	je     80485bd <main+0x14a>
 80485b8:	e8 73 fd ff ff       	call   8048330 <__stack_chk_fail@plt>
 80485bd:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 80485c0:	c9                   	leave  
 80485c1:	8d 61 fc             	lea    -0x4(%ecx),%esp
 80485c4:	c3                   	ret    
 80485c5:	66 90                	xchg   %ax,%ax
 80485c7:	66 90                	xchg   %ax,%ax
 80485c9:	66 90                	xchg   %ax,%ax
 80485cb:	66 90                	xchg   %ax,%ax
 80485cd:	66 90                	xchg   %ax,%ax
 80485cf:	90                   	nop

080485d0 <__libc_csu_init>:
 80485d0:	55                   	push   %ebp
 80485d1:	57                   	push   %edi
 80485d2:	56                   	push   %esi
 80485d3:	53                   	push   %ebx
 80485d4:	e8 c7 fd ff ff       	call   80483a0 <__x86.get_pc_thunk.bx>
 80485d9:	81 c3 27 1a 00 00    	add    $0x1a27,%ebx
 80485df:	83 ec 0c             	sub    $0xc,%esp
 80485e2:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 80485e6:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 80485ec:	e8 ff fc ff ff       	call   80482f0 <_init>
 80485f1:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 80485f7:	29 c6                	sub    %eax,%esi
 80485f9:	c1 fe 02             	sar    $0x2,%esi
 80485fc:	85 f6                	test   %esi,%esi
 80485fe:	74 25                	je     8048625 <__libc_csu_init+0x55>
 8048600:	31 ff                	xor    %edi,%edi
 8048602:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048608:	83 ec 04             	sub    $0x4,%esp
 804860b:	ff 74 24 2c          	pushl  0x2c(%esp)
 804860f:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048613:	55                   	push   %ebp
 8048614:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 804861b:	83 c7 01             	add    $0x1,%edi
 804861e:	83 c4 10             	add    $0x10,%esp
 8048621:	39 f7                	cmp    %esi,%edi
 8048623:	75 e3                	jne    8048608 <__libc_csu_init+0x38>
 8048625:	83 c4 0c             	add    $0xc,%esp
 8048628:	5b                   	pop    %ebx
 8048629:	5e                   	pop    %esi
 804862a:	5f                   	pop    %edi
 804862b:	5d                   	pop    %ebp
 804862c:	c3                   	ret    
 804862d:	8d 76 00             	lea    0x0(%esi),%esi

08048630 <__libc_csu_fini>:
 8048630:	f3 c3                	repz ret 

Disassembly of section .fini:

08048634 <_fini>:
 8048634:	53                   	push   %ebx
 8048635:	83 ec 08             	sub    $0x8,%esp
 8048638:	e8 63 fd ff ff       	call   80483a0 <__x86.get_pc_thunk.bx>
 804863d:	81 c3 c3 19 00 00    	add    $0x19c3,%ebx
 8048643:	83 c4 08             	add    $0x8,%esp
 8048646:	5b                   	pop    %ebx
 8048647:	c3                   	ret    

Disassembly of section .rodata:

08048648 <_fp_hw>:
 8048648:	03 00                	add    (%eax),%eax
	...

0804864c <_IO_stdin_used>:
 804864c:	01 00                	add    %eax,(%eax)
 804864e:	02 00                	add    (%eax),%al

Disassembly of section .eh_frame_hdr:

08048650 <__GNU_EH_FRAME_HDR>:
 8048650:	01 1b                	add    %ebx,(%ebx)
 8048652:	03 3b                	add    (%ebx),%edi
 8048654:	30 00                	xor    %al,(%eax)
 8048656:	00 00                	add    %al,(%eax)
 8048658:	05 00 00 00 d0       	add    $0xd0000000,%eax
 804865d:	fc                   	cld    
 804865e:	ff                   	(bad)  
 804865f:	ff 4c 00 00          	decl   0x0(%eax,%eax,1)
 8048663:	00 1b                	add    %bl,(%ebx)
 8048665:	fe                   	(bad)  
 8048666:	ff                   	(bad)  
 8048667:	ff 70 00             	pushl  0x0(%eax)
 804866a:	00 00                	add    %al,(%eax)
 804866c:	23 fe                	and    %esi,%edi
 804866e:	ff                   	(bad)  
 804866f:	ff 90 00 00 00 80    	call   *-0x80000000(%eax)
 8048675:	ff                   	(bad)  
 8048676:	ff                   	(bad)  
 8048677:	ff c0                	inc    %eax
 8048679:	00 00                	add    %al,(%eax)
 804867b:	00 e0                	add    %ah,%al
 804867d:	ff                   	(bad)  
 804867e:	ff                   	(bad)  
 804867f:	ff 0c 01             	decl   (%ecx,%eax,1)
	...

Disassembly of section .eh_frame:

08048684 <__FRAME_END__-0xec>:
 8048684:	14 00                	adc    $0x0,%al
 8048686:	00 00                	add    %al,(%eax)
 8048688:	00 00                	add    %al,(%eax)
 804868a:	00 00                	add    %al,(%eax)
 804868c:	01 7a 52             	add    %edi,0x52(%edx)
 804868f:	00 01                	add    %al,(%ecx)
 8048691:	7c 08                	jl     804869b <__GNU_EH_FRAME_HDR+0x4b>
 8048693:	01 1b                	add    %ebx,(%ebx)
 8048695:	0c 04                	or     $0x4,%al
 8048697:	04 88                	add    $0x88,%al
 8048699:	01 00                	add    %eax,(%eax)
 804869b:	00 20                	add    %ah,(%eax)
 804869d:	00 00                	add    %al,(%eax)
 804869f:	00 1c 00             	add    %bl,(%eax,%eax,1)
 80486a2:	00 00                	add    %al,(%eax)
 80486a4:	7c fc                	jl     80486a2 <__GNU_EH_FRAME_HDR+0x52>
 80486a6:	ff                   	(bad)  
 80486a7:	ff 40 00             	incl   0x0(%eax)
 80486aa:	00 00                	add    %al,(%eax)
 80486ac:	00 0e                	add    %cl,(%esi)
 80486ae:	08 46 0e             	or     %al,0xe(%esi)
 80486b1:	0c 4a                	or     $0x4a,%al
 80486b3:	0f 0b                	ud2    
 80486b5:	74 04                	je     80486bb <__GNU_EH_FRAME_HDR+0x6b>
 80486b7:	78 00                	js     80486b9 <__GNU_EH_FRAME_HDR+0x69>
 80486b9:	3f                   	aas    
 80486ba:	1a 3b                	sbb    (%ebx),%bh
 80486bc:	2a 32                	sub    (%edx),%dh
 80486be:	24 22                	and    $0x22,%al
 80486c0:	1c 00                	sbb    $0x0,%al
 80486c2:	00 00                	add    %al,(%eax)
 80486c4:	40                   	inc    %eax
 80486c5:	00 00                	add    %al,(%eax)
 80486c7:	00 a3 fd ff ff 08    	add    %ah,0x8fffffd(%ebx)
 80486cd:	00 00                	add    %al,(%eax)
 80486cf:	00 00                	add    %al,(%eax)
 80486d1:	41                   	inc    %ecx
 80486d2:	0e                   	push   %cs
 80486d3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 80486d9:	44                   	inc    %esp
 80486da:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 80486dd:	04 00                	add    $0x0,%al
 80486df:	00 2c 00             	add    %ch,(%eax,%eax,1)
 80486e2:	00 00                	add    %al,(%eax)
 80486e4:	60                   	pusha  
 80486e5:	00 00                	add    %al,(%eax)
 80486e7:	00 8b fd ff ff 52    	add    %cl,0x52fffffd(%ebx)
 80486ed:	01 00                	add    %eax,(%eax)
 80486ef:	00 00                	add    %al,(%eax)
 80486f1:	44                   	inc    %esp
 80486f2:	0c 01                	or     $0x1,%al
 80486f4:	00 47 10             	add    %al,0x10(%edi)
 80486f7:	05 02 75 00 43       	add    $0x43007502,%eax
 80486fc:	0f 03 75 7c          	lsl    0x7c(%ebp),%esi
 8048700:	06                   	push   %es
 8048701:	03 3f                	add    (%edi),%edi
 8048703:	01 0c 01             	add    %ecx,(%ecx,%eax,1)
 8048706:	00 41 c5             	add    %al,-0x3b(%ecx)
 8048709:	43                   	inc    %ebx
 804870a:	0c 04                	or     $0x4,%al
 804870c:	04 00                	add    $0x0,%al
 804870e:	00 00                	add    %al,(%eax)
 8048710:	48                   	dec    %eax
 8048711:	00 00                	add    %al,(%eax)
 8048713:	00 90 00 00 00 b8    	add    %dl,-0x48000000(%eax)
 8048719:	fe                   	(bad)  
 804871a:	ff                   	(bad)  
 804871b:	ff 5d 00             	lcall  *0x0(%ebp)
 804871e:	00 00                	add    %al,(%eax)
 8048720:	00 41 0e             	add    %al,0xe(%ecx)
 8048723:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
 8048729:	87 03                	xchg   %eax,(%ebx)
 804872b:	41                   	inc    %ecx
 804872c:	0e                   	push   %cs
 804872d:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
 8048733:	83 05 4e 0e 20 69 0e 	addl   $0xe,0x69200e4e
 804873a:	24 44                	and    $0x44,%al
 804873c:	0e                   	push   %cs
 804873d:	28 44 0e 2c          	sub    %al,0x2c(%esi,%ecx,1)
 8048741:	41                   	inc    %ecx
 8048742:	0e                   	push   %cs
 8048743:	30 4d 0e             	xor    %cl,0xe(%ebp)
 8048746:	20 47 0e             	and    %al,0xe(%edi)
 8048749:	14 41                	adc    $0x41,%al
 804874b:	c3                   	ret    
 804874c:	0e                   	push   %cs
 804874d:	10 41 c6             	adc    %al,-0x3a(%ecx)
 8048750:	0e                   	push   %cs
 8048751:	0c 41                	or     $0x41,%al
 8048753:	c7                   	(bad)  
 8048754:	0e                   	push   %cs
 8048755:	08 41 c5             	or     %al,-0x3b(%ecx)
 8048758:	0e                   	push   %cs
 8048759:	04 00                	add    $0x0,%al
 804875b:	00 10                	add    %dl,(%eax)
 804875d:	00 00                	add    %al,(%eax)
 804875f:	00 dc                	add    %bl,%ah
 8048761:	00 00                	add    %al,(%eax)
 8048763:	00 cc                	add    %cl,%ah
 8048765:	fe                   	(bad)  
 8048766:	ff                   	(bad)  
 8048767:	ff 02                	incl   (%edx)
 8048769:	00 00                	add    %al,(%eax)
 804876b:	00 00                	add    %al,(%eax)
 804876d:	00 00                	add    %al,(%eax)
	...

08048770 <__FRAME_END__>:
 8048770:	00 00                	add    %al,(%eax)
	...

Disassembly of section .init_array:

08049f08 <__frame_dummy_init_array_entry>:
 8049f08:	40                   	inc    %eax
 8049f09:	84 04 08             	test   %al,(%eax,%ecx,1)

Disassembly of section .fini_array:

08049f0c <__do_global_dtors_aux_fini_array_entry>:
 8049f0c:	20                   	.byte 0x20
 8049f0d:	84 04 08             	test   %al,(%eax,%ecx,1)

Disassembly of section .jcr:

08049f10 <__JCR_END__>:
 8049f10:	00 00                	add    %al,(%eax)
	...

Disassembly of section .dynamic:

08049f14 <_DYNAMIC>:
 8049f14:	01 00                	add    %eax,(%eax)
 8049f16:	00 00                	add    %al,(%eax)
 8049f18:	01 00                	add    %eax,(%eax)
 8049f1a:	00 00                	add    %al,(%eax)
 8049f1c:	0c 00                	or     $0x0,%al
 8049f1e:	00 00                	add    %al,(%eax)
 8049f20:	f0 82                	lock (bad) 
 8049f22:	04 08                	add    $0x8,%al
 8049f24:	0d 00 00 00 34       	or     $0x34000000,%eax
 8049f29:	86 04 08             	xchg   %al,(%eax,%ecx,1)
 8049f2c:	19 00                	sbb    %eax,(%eax)
 8049f2e:	00 00                	add    %al,(%eax)
 8049f30:	08 9f 04 08 1b 00    	or     %bl,0x1b0804(%edi)
 8049f36:	00 00                	add    %al,(%eax)
 8049f38:	04 00                	add    $0x0,%al
 8049f3a:	00 00                	add    %al,(%eax)
 8049f3c:	1a 00                	sbb    (%eax),%al
 8049f3e:	00 00                	add    %al,(%eax)
 8049f40:	0c 9f                	or     $0x9f,%al
 8049f42:	04 08                	add    $0x8,%al
 8049f44:	1c 00                	sbb    $0x0,%al
 8049f46:	00 00                	add    %al,(%eax)
 8049f48:	04 00                	add    $0x0,%al
 8049f4a:	00 00                	add    %al,(%eax)
 8049f4c:	f5                   	cmc    
 8049f4d:	fe                   	(bad)  
 8049f4e:	ff 6f ac             	ljmp   *-0x54(%edi)
 8049f51:	81 04 08 05 00 00 00 	addl   $0x5,(%eax,%ecx,1)
 8049f58:	2c 82                	sub    $0x82,%al
 8049f5a:	04 08                	add    $0x8,%al
 8049f5c:	06                   	push   %es
 8049f5d:	00 00                	add    %al,(%eax)
 8049f5f:	00 cc                	add    %cl,%ah
 8049f61:	81 04 08 0a 00 00 00 	addl   $0xa,(%eax,%ecx,1)
 8049f68:	67 00 00             	add    %al,(%bx,%si)
 8049f6b:	00 0b                	add    %cl,(%ebx)
 8049f6d:	00 00                	add    %al,(%eax)
 8049f6f:	00 10                	add    %dl,(%eax)
 8049f71:	00 00                	add    %al,(%eax)
 8049f73:	00 15 00 00 00 00    	add    %dl,0x0
 8049f79:	00 00                	add    %al,(%eax)
 8049f7b:	00 03                	add    %al,(%ebx)
 8049f7d:	00 00                	add    %al,(%eax)
 8049f7f:	00 00                	add    %al,(%eax)
 8049f81:	a0 04 08 02 00       	mov    0x20804,%al
 8049f86:	00 00                	add    %al,(%eax)
 8049f88:	18 00                	sbb    %al,(%eax)
 8049f8a:	00 00                	add    %al,(%eax)
 8049f8c:	14 00                	adc    $0x0,%al
 8049f8e:	00 00                	add    %al,(%eax)
 8049f90:	11 00                	adc    %eax,(%eax)
 8049f92:	00 00                	add    %al,(%eax)
 8049f94:	17                   	pop    %ss
 8049f95:	00 00                	add    %al,(%eax)
 8049f97:	00 d8                	add    %bl,%al
 8049f99:	82                   	(bad)  
 8049f9a:	04 08                	add    $0x8,%al
 8049f9c:	11 00                	adc    %eax,(%eax)
 8049f9e:	00 00                	add    %al,(%eax)
 8049fa0:	d0 82 04 08 12 00    	rolb   0x120804(%edx)
 8049fa6:	00 00                	add    %al,(%eax)
 8049fa8:	08 00                	or     %al,(%eax)
 8049faa:	00 00                	add    %al,(%eax)
 8049fac:	13 00                	adc    (%eax),%eax
 8049fae:	00 00                	add    %al,(%eax)
 8049fb0:	08 00                	or     %al,(%eax)
 8049fb2:	00 00                	add    %al,(%eax)
 8049fb4:	fe                   	(bad)  
 8049fb5:	ff                   	(bad)  
 8049fb6:	ff 6f a0             	ljmp   *-0x60(%edi)
 8049fb9:	82                   	(bad)  
 8049fba:	04 08                	add    $0x8,%al
 8049fbc:	ff                   	(bad)  
 8049fbd:	ff                   	(bad)  
 8049fbe:	ff 6f 01             	ljmp   *0x1(%edi)
 8049fc1:	00 00                	add    %al,(%eax)
 8049fc3:	00 f0                	add    %dh,%al
 8049fc5:	ff                   	(bad)  
 8049fc6:	ff 6f 94             	ljmp   *-0x6c(%edi)
 8049fc9:	82                   	(bad)  
 8049fca:	04 08                	add    $0x8,%al
	...

Disassembly of section .got:

08049ffc <.got>:
 8049ffc:	00 00                	add    %al,(%eax)
	...

Disassembly of section .got.plt:

0804a000 <_GLOBAL_OFFSET_TABLE_>:
 804a000:	14 9f                	adc    $0x9f,%al
 804a002:	04 08                	add    $0x8,%al
	...
 804a00c:	36 83 04 08 46       	addl   $0x46,%ss:(%eax,%ecx,1)
 804a011:	83 04 08 56          	addl   $0x56,(%eax,%ecx,1)
 804a015:	83                   	.byte 0x83
 804a016:	04 08                	add    $0x8,%al

Disassembly of section .data:

0804a018 <__data_start>:
 804a018:	00 00                	add    %al,(%eax)
	...

0804a01c <__dso_handle>:
 804a01c:	00 00                	add    %al,(%eax)
	...

Disassembly of section .bss:

0804a020 <__bss_start>:
 804a020:	00 00                	add    %al,(%eax)
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    %edi
   1:	43                   	inc    %ebx
   2:	43                   	inc    %ebx
   3:	3a 20                	cmp    (%eax),%ah
   5:	28 55 62             	sub    %dl,0x62(%ebp)
   8:	75 6e                	jne    78 <_init-0x8048278>
   a:	74 75                	je     81 <_init-0x804826f>
   c:	20 35 2e 34 2e 30    	and    %dh,0x302e342e
  12:	2d 36 75 62 75       	sub    $0x75627536,%eax
  17:	6e                   	outsb  %ds:(%esi),(%dx)
  18:	74 75                	je     8f <_init-0x8048261>
  1a:	31 7e 31             	xor    %edi,0x31(%esi)
  1d:	36 2e 30 34 2e       	ss xor %dh,%cs:(%esi,%ebp,1)
  22:	31 32                	xor    %esi,(%edx)
  24:	29 20                	sub    %esp,(%eax)
  26:	35 2e 34 2e 30       	xor    $0x302e342e,%eax
  2b:	20 32                	and    %dh,(%edx)
  2d:	30 31                	xor    %dh,(%ecx)
  2f:	36 30 36             	xor    %dh,%ss:(%esi)
  32:	30 39                	xor    %bh,(%ecx)
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	1c 00                	sbb    $0x0,%al
   2:	00 00                	add    %al,(%eax)
   4:	02 00                	add    (%eax),%al
   6:	00 00                	add    %al,(%eax)
   8:	00 00                	add    %al,(%eax)
   a:	04 00                	add    $0x0,%al
   c:	00 00                	add    %al,(%eax)
   e:	00 00                	add    %al,(%eax)
  10:	6b 84 04 08 5a 01 00 	imul   $0x0,0x15a08(%esp,%eax,1),%eax
  17:	00 
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	e9 00 00 00 04       	jmp    4000005 <_init-0x40482eb>
   5:	00 00                	add    %al,(%eax)
   7:	00 00                	add    %al,(%eax)
   9:	00 04 01             	add    %al,(%ecx,%eax,1)
   c:	15 00 00 00 0c       	adc    $0xc000000,%eax
  11:	0e                   	push   %cs
  12:	00 00                	add    %al,(%eax)
  14:	00 9b 00 00 00 6b    	add    %bl,0x6b000000(%ebx)
  1a:	84 04 08             	test   %al,(%eax,%ecx,1)
  1d:	5a                   	pop    %edx
  1e:	01 00                	add    %eax,(%eax)
  20:	00 00                	add    %al,(%eax)
  22:	00 00                	add    %al,(%eax)
  24:	00 02                	add    %al,(%edx)
  26:	04 07                	add    $0x7,%al
  28:	7b 00                	jnp    2a <_init-0x80482c6>
  2a:	00 00                	add    %al,(%eax)
  2c:	02 01                	add    (%ecx),%al
  2e:	08 88 00 00 00 02    	or     %cl,0x2000000(%eax)
  34:	02 07                	add    (%edi),%al
  36:	df 00                	fild   (%eax)
  38:	00 00                	add    %al,(%eax)
  3a:	02 04 07             	add    (%edi,%eax,1),%al
  3d:	76 00                	jbe    3f <_init-0x80482b1>
  3f:	00 00                	add    %al,(%eax)
  41:	02 01                	add    (%ecx),%al
  43:	06                   	push   %es
  44:	8a 00                	mov    (%eax),%al
  46:	00 00                	add    %al,(%eax)
  48:	02 02                	add    (%edx),%al
  4a:	05 f2 00 00 00       	add    $0xf2,%eax
  4f:	03 04 05 69 6e 74 00 	add    0x746e69(,%eax,1),%eax
  56:	02 08                	add    (%eax),%cl
  58:	05 00 00 00 00       	add    $0x0,%eax
  5d:	02 08                	add    (%eax),%cl
  5f:	07                   	pop    %es
  60:	71 00                	jno    62 <_init-0x804828e>
  62:	00 00                	add    %al,(%eax)
  64:	02 04 05 05 00 00 00 	add    0x5(,%eax,1),%al
  6b:	02 04 07             	add    (%edi,%eax,1),%al
  6e:	0e                   	push   %cs
  6f:	01 00                	add    %eax,(%eax)
  71:	00 04 04             	add    %al,(%esp,%eax,1)
  74:	78 00                	js     76 <_init-0x804827a>
  76:	00 00                	add    %al,(%eax)
  78:	02 01                	add    (%ecx),%al
  7a:	06                   	push   %es
  7b:	91                   	xchg   %eax,%ecx
  7c:	00 00                	add    %al,(%eax)
  7e:	00 05 fc 00 00 00    	add    %al,0xfc
  84:	01 04 72             	add    %eax,(%edx,%esi,2)
  87:	00 00                	add    %al,(%eax)
  89:	00 6b 84             	add    %ch,-0x7c(%ebx)
  8c:	04 08                	add    $0x8,%al
  8e:	08 00                	or     %al,(%eax)
  90:	00 00                	add    %al,(%eax)
  92:	01 9c a7 00 00 00 06 	add    %ebx,0x6000000(%edi,%eiz,4)
  99:	70 74                	jo     10f <_init-0x80481e1>
  9b:	72 00                	jb     9d <_init-0x8048253>
  9d:	01 04 72             	add    %eax,(%edx,%esi,2)
  a0:	00 00                	add    %al,(%eax)
  a2:	00 02                	add    %al,(%edx)
  a4:	91                   	xchg   %eax,%ecx
  a5:	00 00                	add    %al,(%eax)
  a7:	07                   	pop    %es
  a8:	96                   	xchg   %eax,%esi
  a9:	00 00                	add    %al,(%eax)
  ab:	00 01                	add    %al,(%ecx)
  ad:	07                   	pop    %es
  ae:	4f                   	dec    %edi
  af:	00 00                	add    %al,(%eax)
  b1:	00 73 84             	add    %dh,-0x7c(%ebx)
  b4:	04 08                	add    $0x8,%al
  b6:	52                   	push   %edx
  b7:	01 00                	add    %eax,(%eax)
  b9:	00 01                	add    %al,(%ecx)
  bb:	9c                   	pushf  
  bc:	df 00                	fild   (%eax)
  be:	00 00                	add    %al,(%eax)
  c0:	08 07                	or     %al,(%edi)
  c2:	01 00                	add    %eax,(%eax)
  c4:	00 01                	add    %al,(%ecx)
  c6:	08 df                	or     %bl,%bh
  c8:	00 00                	add    %al,(%eax)
  ca:	00 03                	add    %al,(%ebx)
  cc:	75 f4                	jne    c2 <_init-0x804822e>
  ce:	77 09                	ja     d9 <_init-0x8048217>
  d0:	74 6d                	je     13f <_init-0x80481b1>
  d2:	70 00                	jo     d4 <_init-0x804821c>
  d4:	01 0a                	add    %ecx,(%edx)
  d6:	72 00                	jb     d8 <_init-0x8048218>
  d8:	00 00                	add    %al,(%eax)
  da:	03 75 f0             	add    -0x10(%ebp),%esi
  dd:	77 00                	ja     df <_init-0x8048211>
  df:	0a 78 00             	or     0x0(%eax),%bh
  e2:	00 00                	add    %al,(%eax)
  e4:	0b 6b 00             	or     0x0(%ebx),%ebp
  e7:	00 00                	add    %al,(%eax)
  e9:	ff 03                	incl   (%ebx)
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%ecx)
   2:	01 25 0e 13 0b 03    	add    %esp,0x30b130e
   8:	0e                   	push   %cs
   9:	1b 0e                	sbb    (%esi),%ecx
   b:	11 01                	adc    %eax,(%ecx)
   d:	12 06                	adc    (%esi),%al
   f:	10 17                	adc    %dl,(%edi)
  11:	00 00                	add    %al,(%eax)
  13:	02 24 00             	add    (%eax,%eax,1),%ah
  16:	0b 0b                	or     (%ebx),%ecx
  18:	3e 0b 03             	or     %ds:(%ebx),%eax
  1b:	0e                   	push   %cs
  1c:	00 00                	add    %al,(%eax)
  1e:	03 24 00             	add    (%eax,%eax,1),%esp
  21:	0b 0b                	or     (%ebx),%ecx
  23:	3e 0b 03             	or     %ds:(%ebx),%eax
  26:	08 00                	or     %al,(%eax)
  28:	00 04 0f             	add    %al,(%edi,%ecx,1)
  2b:	00 0b                	add    %cl,(%ebx)
  2d:	0b 49 13             	or     0x13(%ecx),%ecx
  30:	00 00                	add    %al,(%eax)
  32:	05 2e 01 3f 19       	add    $0x193f012e,%eax
  37:	03 0e                	add    (%esi),%ecx
  39:	3a 0b                	cmp    (%ebx),%cl
  3b:	3b 0b                	cmp    (%ebx),%ecx
  3d:	27                   	daa    
  3e:	19 49 13             	sbb    %ecx,0x13(%ecx)
  41:	11 01                	adc    %eax,(%ecx)
  43:	12 06                	adc    (%esi),%al
  45:	40                   	inc    %eax
  46:	18 97 42 19 01 13    	sbb    %dl,0x13011942(%edi)
  4c:	00 00                	add    %al,(%eax)
  4e:	06                   	push   %es
  4f:	05 00 03 08 3a       	add    $0x3a080300,%eax
  54:	0b 3b                	or     (%ebx),%edi
  56:	0b 49 13             	or     0x13(%ecx),%ecx
  59:	02 18                	add    (%eax),%bl
  5b:	00 00                	add    %al,(%eax)
  5d:	07                   	pop    %es
  5e:	2e 01 3f             	add    %edi,%cs:(%edi)
  61:	19 03                	sbb    %eax,(%ebx)
  63:	0e                   	push   %cs
  64:	3a 0b                	cmp    (%ebx),%cl
  66:	3b 0b                	cmp    (%ebx),%ecx
  68:	49                   	dec    %ecx
  69:	13 11                	adc    (%ecx),%edx
  6b:	01 12                	add    %edx,(%edx)
  6d:	06                   	push   %es
  6e:	40                   	inc    %eax
  6f:	18 96 42 19 01 13    	sbb    %dl,0x13011942(%esi)
  75:	00 00                	add    %al,(%eax)
  77:	08 34 00             	or     %dh,(%eax,%eax,1)
  7a:	03 0e                	add    (%esi),%ecx
  7c:	3a 0b                	cmp    (%ebx),%cl
  7e:	3b 0b                	cmp    (%ebx),%ecx
  80:	49                   	dec    %ecx
  81:	13 02                	adc    (%edx),%eax
  83:	18 00                	sbb    %al,(%eax)
  85:	00 09                	add    %cl,(%ecx)
  87:	34 00                	xor    $0x0,%al
  89:	03 08                	add    (%eax),%ecx
  8b:	3a 0b                	cmp    (%ebx),%cl
  8d:	3b 0b                	cmp    (%ebx),%ecx
  8f:	49                   	dec    %ecx
  90:	13 02                	adc    (%edx),%eax
  92:	18 00                	sbb    %al,(%eax)
  94:	00 0a                	add    %cl,(%edx)
  96:	01 01                	add    %eax,(%ecx)
  98:	49                   	dec    %ecx
  99:	13 00                	adc    (%eax),%eax
  9b:	00 0b                	add    %cl,(%ebx)
  9d:	21 00                	and    %eax,(%eax)
  9f:	49                   	dec    %ecx
  a0:	13 2f                	adc    (%edi),%ebp
  a2:	05                   	.byte 0x5
  a3:	00 00                	add    %al,(%eax)
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	42                   	inc    %edx
   1:	00 00                	add    %al,(%eax)
   3:	00 02                	add    %al,(%edx)
   5:	00 1d 00 00 00 01    	add    %bl,0x1000000
   b:	01 fb                	add    %edi,%ebx
   d:	0e                   	push   %cs
   e:	0d 00 01 01 01       	or     $0x1010100,%eax
  13:	01 00                	add    %eax,(%eax)
  15:	00 00                	add    %al,(%eax)
  17:	01 00                	add    %eax,(%eax)
  19:	00 01                	add    %al,(%ecx)
  1b:	00 6d 61             	add    %ch,0x61(%ebp)
  1e:	69 6e 2e 63 00 00 00 	imul   $0x63,0x2e(%esi),%ebp
  25:	00 00                	add    %al,(%eax)
  27:	00 05 02 6b 84 04    	add    %al,0x4846b02
  2d:	08 15 3d 3d 2f 08    	or     %dl,0x82f3d3d
  33:	3c ae                	cmp    $0xae,%al
  35:	08 83 08 76 03 e1    	or     %al,-0x1efc89f8(%ebx)
  3b:	00 02                	add    %al,(%edx)
  3d:	e4 01                	in     $0x1,%al
  3f:	01 59 02             	add    %ebx,0x2(%ecx)
  42:	19 00                	sbb    %eax,(%eax)
  44:	01 01                	add    %eax,(%ecx)

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	6c                   	insb   (%dx),%es:(%edi)
   1:	6f                   	outsl  %ds:(%esi),(%dx)
   2:	6e                   	outsb  %ds:(%esi),(%dx)
   3:	67 20 6c 6f          	and    %ch,0x6f(%si)
   7:	6e                   	outsb  %ds:(%esi),(%dx)
   8:	67 20 69 6e          	and    %ch,0x6e(%bx,%di)
   c:	74 00                	je     e <_init-0x80482e2>
   e:	6d                   	insl   (%dx),%es:(%edi)
   f:	61                   	popa   
  10:	69 6e 2e 63 00 47 4e 	imul   $0x4e470063,0x2e(%esi),%ebp
  17:	55                   	push   %ebp
  18:	20 43 39             	and    %al,0x39(%ebx)
  1b:	39 20                	cmp    %esp,(%eax)
  1d:	35 2e 34 2e 30       	xor    $0x302e342e,%eax
  22:	20 32                	and    %dh,(%edx)
  24:	30 31                	xor    %dh,(%ecx)
  26:	36 30 36             	xor    %dh,%ss:(%esi)
  29:	30 39                	xor    %bh,(%ecx)
  2b:	20 2d 6d 33 32 20    	and    %ch,0x2032336d
  31:	2d 6d 74 75 6e       	sub    $0x6e75746d,%eax
  36:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
  3c:	72 69                	jb     a7 <_init-0x8048249>
  3e:	63 20                	arpl   %sp,(%eax)
  40:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
  45:	68 3d 69 36 38       	push   $0x3836693d
  4a:	36 20 2d 67 20 2d 73 	and    %ch,%ss:0x732d2067
  51:	74 64                	je     b7 <_init-0x8048239>
  53:	3d 63 39 39 20       	cmp    $0x20393963,%eax
  58:	2d 66 73 74 61       	sub    $0x61747366,%eax
  5d:	63 6b 2d             	arpl   %bp,0x2d(%ebx)
  60:	70 72                	jo     d4 <_init-0x804821c>
  62:	6f                   	outsl  %ds:(%esi),(%dx)
  63:	74 65                	je     ca <_init-0x8048226>
  65:	63 74 6f 72          	arpl   %si,0x72(%edi,%ebp,2)
  69:	2d 73 74 72 6f       	sub    $0x6f727473,%eax
  6e:	6e                   	outsb  %ds:(%esi),(%dx)
  6f:	67 00 6c 6f          	add    %ch,0x6f(%si)
  73:	6e                   	outsb  %ds:(%esi),(%dx)
  74:	67 20 6c 6f          	and    %ch,0x6f(%si)
  78:	6e                   	outsb  %ds:(%esi),(%dx)
  79:	67 20 75 6e          	and    %dh,0x6e(%di)
  7d:	73 69                	jae    e8 <_init-0x8048208>
  7f:	67 6e                	outsb  %ds:(%si),(%dx)
  81:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%ecx)
  86:	74 00                	je     88 <_init-0x8048268>
  88:	75 6e                	jne    f8 <_init-0x80481f8>
  8a:	73 69                	jae    f5 <_init-0x80481fb>
  8c:	67 6e                	outsb  %ds:(%si),(%dx)
  8e:	65 64 20 63 68       	gs and %ah,%fs:0x68(%ebx)
  93:	61                   	popa   
  94:	72 00                	jb     96 <_init-0x804825a>
  96:	6d                   	insl   (%dx),%es:(%edi)
  97:	61                   	popa   
  98:	69 6e 00 2f 68 6f 6d 	imul   $0x6d6f682f,0x0(%esi),%ebp
  9f:	65 2f                	gs das 
  a1:	62 6f 62             	bound  %ebp,0x62(%edi)
  a4:	67 69 6c 2f 44 65 73 	imul   $0x6b736544,0x2f(%si),%ebp
  ab:	6b 
  ac:	74 6f                	je     11d <_init-0x80481d3>
  ae:	70 2f                	jo     df <_init-0x8048211>
  b0:	63 74 66 2d          	arpl   %si,0x2d(%esi,%eiz,2)
  b4:	70 72                	jo     128 <_init-0x80481c8>
  b6:	61                   	popa   
  b7:	63 74 69 63          	arpl   %si,0x63(%ecx,%ebp,2)
  bb:	65 2f                	gs das 
  bd:	73 79                	jae    138 <_init-0x80481b8>
  bf:	73 68                	jae    129 <_init-0x80481c7>
  c1:	61                   	popa   
  c2:	63 6b 2d             	arpl   %bp,0x2d(%ebx)
  c5:	73 74                	jae    13b <_init-0x80481b5>
  c7:	75 64                	jne    12d <_init-0x80481c3>
  c9:	79 2f                	jns    fa <_init-0x80481f6>
  cb:	30 33                	xor    %dh,(%ebx)
  cd:	2d 75 6e 69 63       	sub    $0x63696e75,%eax
  d2:	6f                   	outsl  %ds:(%esi),(%dx)
  d3:	64 65 73 68          	fs gs jae 13f <_init-0x80481b1>
  d7:	65 6c                	gs insb (%dx),%es:(%edi)
  d9:	6c                   	insb   (%dx),%es:(%edi)
  da:	63 6f 64             	arpl   %bp,0x64(%edi)
  dd:	65 00 73 68          	add    %dh,%gs:0x68(%ebx)
  e1:	6f                   	outsl  %ds:(%esi),(%dx)
  e2:	72 74                	jb     158 <_init-0x8048198>
  e4:	20 75 6e             	and    %dh,0x6e(%ebp)
  e7:	73 69                	jae    152 <_init-0x804819e>
  e9:	67 6e                	outsb  %ds:(%si),(%dx)
  eb:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%ecx)
  f0:	74 00                	je     f2 <_init-0x80481fe>
  f2:	73 68                	jae    15c <_init-0x8048194>
  f4:	6f                   	outsl  %ds:(%esi),(%dx)
  f5:	72 74                	jb     16b <_init-0x8048185>
  f7:	20 69 6e             	and    %ch,0x6e(%ecx)
  fa:	74 00                	je     fc <_init-0x80481f4>
  fc:	65 61                	gs popa 
  fe:	78 5f                	js     15f <_init-0x8048191>
 100:	73 65                	jae    167 <_init-0x8048189>
 102:	74 74                	je     178 <_init-0x8048178>
 104:	65 72 00             	gs jb  107 <_init-0x80481e9>
 107:	62 75 66             	bound  %esi,0x66(%ebp)
 10a:	66 65 72 00          	data16 gs jb 10e <_init-0x80481e2>
 10e:	73 69                	jae    179 <_init-0x8048177>
 110:	7a 65                	jp     177 <_init-0x8048179>
 112:	74 79                	je     18d <_init-0x8048163>
 114:	70 65                	jo     17b <_init-0x8048175>
	...
