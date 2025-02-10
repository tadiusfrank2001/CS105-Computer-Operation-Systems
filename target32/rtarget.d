
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400c48 <_init>:
  400c48:	f3 0f 1e fa          	endbr64 
  400c4c:	48 83 ec 08          	sub    $0x8,%rsp
  400c50:	48 8b 05 99 43 20 00 	mov    0x204399(%rip),%rax        # 604ff0 <__gmon_start__@Base>
  400c57:	48 85 c0             	test   %rax,%rax
  400c5a:	74 02                	je     400c5e <_init+0x16>
  400c5c:	ff d0                	callq  *%rax
  400c5e:	48 83 c4 08          	add    $0x8,%rsp
  400c62:	c3                   	retq   

Disassembly of section .plt:

0000000000400c70 <.plt>:
  400c70:	ff 35 92 43 20 00    	pushq  0x204392(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c76:	ff 25 94 43 20 00    	jmpq   *0x204394(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c80 <strcasecmp@plt>:
  400c80:	ff 25 92 43 20 00    	jmpq   *0x204392(%rip)        # 605018 <strcasecmp@GLIBC_2.2.5>
  400c86:	68 00 00 00 00       	pushq  $0x0
  400c8b:	e9 e0 ff ff ff       	jmpq   400c70 <.plt>

0000000000400c90 <__errno_location@plt>:
  400c90:	ff 25 8a 43 20 00    	jmpq   *0x20438a(%rip)        # 605020 <__errno_location@GLIBC_2.2.5>
  400c96:	68 01 00 00 00       	pushq  $0x1
  400c9b:	e9 d0 ff ff ff       	jmpq   400c70 <.plt>

0000000000400ca0 <srandom@plt>:
  400ca0:	ff 25 82 43 20 00    	jmpq   *0x204382(%rip)        # 605028 <srandom@GLIBC_2.2.5>
  400ca6:	68 02 00 00 00       	pushq  $0x2
  400cab:	e9 c0 ff ff ff       	jmpq   400c70 <.plt>

0000000000400cb0 <strncmp@plt>:
  400cb0:	ff 25 7a 43 20 00    	jmpq   *0x20437a(%rip)        # 605030 <strncmp@GLIBC_2.2.5>
  400cb6:	68 03 00 00 00       	pushq  $0x3
  400cbb:	e9 b0 ff ff ff       	jmpq   400c70 <.plt>

0000000000400cc0 <strcpy@plt>:
  400cc0:	ff 25 72 43 20 00    	jmpq   *0x204372(%rip)        # 605038 <strcpy@GLIBC_2.2.5>
  400cc6:	68 04 00 00 00       	pushq  $0x4
  400ccb:	e9 a0 ff ff ff       	jmpq   400c70 <.plt>

0000000000400cd0 <puts@plt>:
  400cd0:	ff 25 6a 43 20 00    	jmpq   *0x20436a(%rip)        # 605040 <puts@GLIBC_2.2.5>
  400cd6:	68 05 00 00 00       	pushq  $0x5
  400cdb:	e9 90 ff ff ff       	jmpq   400c70 <.plt>

0000000000400ce0 <write@plt>:
  400ce0:	ff 25 62 43 20 00    	jmpq   *0x204362(%rip)        # 605048 <write@GLIBC_2.2.5>
  400ce6:	68 06 00 00 00       	pushq  $0x6
  400ceb:	e9 80 ff ff ff       	jmpq   400c70 <.plt>

0000000000400cf0 <mmap@plt>:
  400cf0:	ff 25 5a 43 20 00    	jmpq   *0x20435a(%rip)        # 605050 <mmap@GLIBC_2.2.5>
  400cf6:	68 07 00 00 00       	pushq  $0x7
  400cfb:	e9 70 ff ff ff       	jmpq   400c70 <.plt>

0000000000400d00 <printf@plt>:
  400d00:	ff 25 52 43 20 00    	jmpq   *0x204352(%rip)        # 605058 <printf@GLIBC_2.2.5>
  400d06:	68 08 00 00 00       	pushq  $0x8
  400d0b:	e9 60 ff ff ff       	jmpq   400c70 <.plt>

0000000000400d10 <memset@plt>:
  400d10:	ff 25 4a 43 20 00    	jmpq   *0x20434a(%rip)        # 605060 <memset@GLIBC_2.2.5>
  400d16:	68 09 00 00 00       	pushq  $0x9
  400d1b:	e9 50 ff ff ff       	jmpq   400c70 <.plt>

0000000000400d20 <alarm@plt>:
  400d20:	ff 25 42 43 20 00    	jmpq   *0x204342(%rip)        # 605068 <alarm@GLIBC_2.2.5>
  400d26:	68 0a 00 00 00       	pushq  $0xa
  400d2b:	e9 40 ff ff ff       	jmpq   400c70 <.plt>

0000000000400d30 <close@plt>:
  400d30:	ff 25 3a 43 20 00    	jmpq   *0x20433a(%rip)        # 605070 <close@GLIBC_2.2.5>
  400d36:	68 0b 00 00 00       	pushq  $0xb
  400d3b:	e9 30 ff ff ff       	jmpq   400c70 <.plt>

0000000000400d40 <read@plt>:
  400d40:	ff 25 32 43 20 00    	jmpq   *0x204332(%rip)        # 605078 <read@GLIBC_2.2.5>
  400d46:	68 0c 00 00 00       	pushq  $0xc
  400d4b:	e9 20 ff ff ff       	jmpq   400c70 <.plt>

0000000000400d50 <signal@plt>:
  400d50:	ff 25 2a 43 20 00    	jmpq   *0x20432a(%rip)        # 605080 <signal@GLIBC_2.2.5>
  400d56:	68 0d 00 00 00       	pushq  $0xd
  400d5b:	e9 10 ff ff ff       	jmpq   400c70 <.plt>

0000000000400d60 <gethostbyname@plt>:
  400d60:	ff 25 22 43 20 00    	jmpq   *0x204322(%rip)        # 605088 <gethostbyname@GLIBC_2.2.5>
  400d66:	68 0e 00 00 00       	pushq  $0xe
  400d6b:	e9 00 ff ff ff       	jmpq   400c70 <.plt>

0000000000400d70 <fprintf@plt>:
  400d70:	ff 25 1a 43 20 00    	jmpq   *0x20431a(%rip)        # 605090 <fprintf@GLIBC_2.2.5>
  400d76:	68 0f 00 00 00       	pushq  $0xf
  400d7b:	e9 f0 fe ff ff       	jmpq   400c70 <.plt>

0000000000400d80 <strtol@plt>:
  400d80:	ff 25 12 43 20 00    	jmpq   *0x204312(%rip)        # 605098 <strtol@GLIBC_2.2.5>
  400d86:	68 10 00 00 00       	pushq  $0x10
  400d8b:	e9 e0 fe ff ff       	jmpq   400c70 <.plt>

0000000000400d90 <memcpy@plt>:
  400d90:	ff 25 0a 43 20 00    	jmpq   *0x20430a(%rip)        # 6050a0 <memcpy@GLIBC_2.14>
  400d96:	68 11 00 00 00       	pushq  $0x11
  400d9b:	e9 d0 fe ff ff       	jmpq   400c70 <.plt>

0000000000400da0 <time@plt>:
  400da0:	ff 25 02 43 20 00    	jmpq   *0x204302(%rip)        # 6050a8 <time@GLIBC_2.2.5>
  400da6:	68 12 00 00 00       	pushq  $0x12
  400dab:	e9 c0 fe ff ff       	jmpq   400c70 <.plt>

0000000000400db0 <random@plt>:
  400db0:	ff 25 fa 42 20 00    	jmpq   *0x2042fa(%rip)        # 6050b0 <random@GLIBC_2.2.5>
  400db6:	68 13 00 00 00       	pushq  $0x13
  400dbb:	e9 b0 fe ff ff       	jmpq   400c70 <.plt>

0000000000400dc0 <__isoc99_sscanf@plt>:
  400dc0:	ff 25 f2 42 20 00    	jmpq   *0x2042f2(%rip)        # 6050b8 <__isoc99_sscanf@GLIBC_2.7>
  400dc6:	68 14 00 00 00       	pushq  $0x14
  400dcb:	e9 a0 fe ff ff       	jmpq   400c70 <.plt>

0000000000400dd0 <munmap@plt>:
  400dd0:	ff 25 ea 42 20 00    	jmpq   *0x2042ea(%rip)        # 6050c0 <munmap@GLIBC_2.2.5>
  400dd6:	68 15 00 00 00       	pushq  $0x15
  400ddb:	e9 90 fe ff ff       	jmpq   400c70 <.plt>

0000000000400de0 <memmove@plt>:
  400de0:	ff 25 e2 42 20 00    	jmpq   *0x2042e2(%rip)        # 6050c8 <memmove@GLIBC_2.2.5>
  400de6:	68 16 00 00 00       	pushq  $0x16
  400deb:	e9 80 fe ff ff       	jmpq   400c70 <.plt>

0000000000400df0 <fopen@plt>:
  400df0:	ff 25 da 42 20 00    	jmpq   *0x2042da(%rip)        # 6050d0 <fopen@GLIBC_2.2.5>
  400df6:	68 17 00 00 00       	pushq  $0x17
  400dfb:	e9 70 fe ff ff       	jmpq   400c70 <.plt>

0000000000400e00 <getopt@plt>:
  400e00:	ff 25 d2 42 20 00    	jmpq   *0x2042d2(%rip)        # 6050d8 <getopt@GLIBC_2.2.5>
  400e06:	68 18 00 00 00       	pushq  $0x18
  400e0b:	e9 60 fe ff ff       	jmpq   400c70 <.plt>

0000000000400e10 <strtoul@plt>:
  400e10:	ff 25 ca 42 20 00    	jmpq   *0x2042ca(%rip)        # 6050e0 <strtoul@GLIBC_2.2.5>
  400e16:	68 19 00 00 00       	pushq  $0x19
  400e1b:	e9 50 fe ff ff       	jmpq   400c70 <.plt>

0000000000400e20 <gethostname@plt>:
  400e20:	ff 25 c2 42 20 00    	jmpq   *0x2042c2(%rip)        # 6050e8 <gethostname@GLIBC_2.2.5>
  400e26:	68 1a 00 00 00       	pushq  $0x1a
  400e2b:	e9 40 fe ff ff       	jmpq   400c70 <.plt>

0000000000400e30 <sprintf@plt>:
  400e30:	ff 25 ba 42 20 00    	jmpq   *0x2042ba(%rip)        # 6050f0 <sprintf@GLIBC_2.2.5>
  400e36:	68 1b 00 00 00       	pushq  $0x1b
  400e3b:	e9 30 fe ff ff       	jmpq   400c70 <.plt>

0000000000400e40 <exit@plt>:
  400e40:	ff 25 b2 42 20 00    	jmpq   *0x2042b2(%rip)        # 6050f8 <exit@GLIBC_2.2.5>
  400e46:	68 1c 00 00 00       	pushq  $0x1c
  400e4b:	e9 20 fe ff ff       	jmpq   400c70 <.plt>

0000000000400e50 <connect@plt>:
  400e50:	ff 25 aa 42 20 00    	jmpq   *0x2042aa(%rip)        # 605100 <connect@GLIBC_2.2.5>
  400e56:	68 1d 00 00 00       	pushq  $0x1d
  400e5b:	e9 10 fe ff ff       	jmpq   400c70 <.plt>

0000000000400e60 <getc@plt>:
  400e60:	ff 25 a2 42 20 00    	jmpq   *0x2042a2(%rip)        # 605108 <getc@GLIBC_2.2.5>
  400e66:	68 1e 00 00 00       	pushq  $0x1e
  400e6b:	e9 00 fe ff ff       	jmpq   400c70 <.plt>

0000000000400e70 <socket@plt>:
  400e70:	ff 25 9a 42 20 00    	jmpq   *0x20429a(%rip)        # 605110 <socket@GLIBC_2.2.5>
  400e76:	68 1f 00 00 00       	pushq  $0x1f
  400e7b:	e9 f0 fd ff ff       	jmpq   400c70 <.plt>

Disassembly of section .text:

0000000000400e80 <_start>:
  400e80:	f3 0f 1e fa          	endbr64 
  400e84:	31 ed                	xor    %ebp,%ebp
  400e86:	49 89 d1             	mov    %rdx,%r9
  400e89:	5e                   	pop    %rsi
  400e8a:	48 89 e2             	mov    %rsp,%rdx
  400e8d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400e91:	50                   	push   %rax
  400e92:	54                   	push   %rsp
  400e93:	49 c7 c0 30 2d 40 00 	mov    $0x402d30,%r8
  400e9a:	48 c7 c1 c0 2c 40 00 	mov    $0x402cc0,%rcx
  400ea1:	48 c7 c7 2f 11 40 00 	mov    $0x40112f,%rdi
  400ea8:	ff 15 3a 41 20 00    	callq  *0x20413a(%rip)        # 604fe8 <__libc_start_main@GLIBC_2.2.5>
  400eae:	f4                   	hlt    

0000000000400eaf <.annobin_init.c>:
  400eaf:	90                   	nop

0000000000400eb0 <_dl_relocate_static_pie>:
  400eb0:	f3 0f 1e fa          	endbr64 
  400eb4:	c3                   	retq   

0000000000400eb5 <.annobin__dl_relocate_static_pie.end>:
  400eb5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400ebc:	00 00 00 
  400ebf:	90                   	nop

0000000000400ec0 <deregister_tm_clones>:
  400ec0:	48 8d 3d c9 45 20 00 	lea    0x2045c9(%rip),%rdi        # 605490 <__TMC_END__>
  400ec7:	48 8d 05 c2 45 20 00 	lea    0x2045c2(%rip),%rax        # 605490 <__TMC_END__>
  400ece:	48 39 f8             	cmp    %rdi,%rax
  400ed1:	74 15                	je     400ee8 <deregister_tm_clones+0x28>
  400ed3:	48 8b 05 06 41 20 00 	mov    0x204106(%rip),%rax        # 604fe0 <_ITM_deregisterTMCloneTable@Base>
  400eda:	48 85 c0             	test   %rax,%rax
  400edd:	74 09                	je     400ee8 <deregister_tm_clones+0x28>
  400edf:	ff e0                	jmpq   *%rax
  400ee1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400ee8:	c3                   	retq   
  400ee9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400ef0 <register_tm_clones>:
  400ef0:	48 8d 3d 99 45 20 00 	lea    0x204599(%rip),%rdi        # 605490 <__TMC_END__>
  400ef7:	48 8d 35 92 45 20 00 	lea    0x204592(%rip),%rsi        # 605490 <__TMC_END__>
  400efe:	48 29 fe             	sub    %rdi,%rsi
  400f01:	48 c1 fe 03          	sar    $0x3,%rsi
  400f05:	48 89 f0             	mov    %rsi,%rax
  400f08:	48 c1 e8 3f          	shr    $0x3f,%rax
  400f0c:	48 01 c6             	add    %rax,%rsi
  400f0f:	48 d1 fe             	sar    %rsi
  400f12:	74 14                	je     400f28 <register_tm_clones+0x38>
  400f14:	48 8b 05 dd 40 20 00 	mov    0x2040dd(%rip),%rax        # 604ff8 <_ITM_registerTMCloneTable@Base>
  400f1b:	48 85 c0             	test   %rax,%rax
  400f1e:	74 08                	je     400f28 <register_tm_clones+0x38>
  400f20:	ff e0                	jmpq   *%rax
  400f22:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400f28:	c3                   	retq   
  400f29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400f30 <__do_global_dtors_aux>:
  400f30:	f3 0f 1e fa          	endbr64 
  400f34:	80 3d 8d 45 20 00 00 	cmpb   $0x0,0x20458d(%rip)        # 6054c8 <completed.7303>
  400f3b:	75 13                	jne    400f50 <__do_global_dtors_aux+0x20>
  400f3d:	55                   	push   %rbp
  400f3e:	48 89 e5             	mov    %rsp,%rbp
  400f41:	e8 7a ff ff ff       	callq  400ec0 <deregister_tm_clones>
  400f46:	c6 05 7b 45 20 00 01 	movb   $0x1,0x20457b(%rip)        # 6054c8 <completed.7303>
  400f4d:	5d                   	pop    %rbp
  400f4e:	c3                   	retq   
  400f4f:	90                   	nop
  400f50:	c3                   	retq   
  400f51:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400f58:	00 00 00 00 
  400f5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400f60 <frame_dummy>:
  400f60:	f3 0f 1e fa          	endbr64 
  400f64:	eb 8a                	jmp    400ef0 <register_tm_clones>

0000000000400f66 <usage>:
  400f66:	48 83 ec 08          	sub    $0x8,%rsp
  400f6a:	48 89 fe             	mov    %rdi,%rsi
  400f6d:	83 3d 94 45 20 00 00 	cmpl   $0x0,0x204594(%rip)        # 605508 <is_checker>
  400f74:	74 41                	je     400fb7 <usage+0x51>
  400f76:	bf 60 2d 40 00       	mov    $0x402d60,%edi
  400f7b:	b8 00 00 00 00       	mov    $0x0,%eax
  400f80:	e8 7b fd ff ff       	callq  400d00 <printf@plt>
  400f85:	bf 98 2d 40 00       	mov    $0x402d98,%edi
  400f8a:	e8 41 fd ff ff       	callq  400cd0 <puts@plt>
  400f8f:	bf 10 2f 40 00       	mov    $0x402f10,%edi
  400f94:	e8 37 fd ff ff       	callq  400cd0 <puts@plt>
  400f99:	bf c0 2d 40 00       	mov    $0x402dc0,%edi
  400f9e:	e8 2d fd ff ff       	callq  400cd0 <puts@plt>
  400fa3:	bf 2a 2f 40 00       	mov    $0x402f2a,%edi
  400fa8:	e8 23 fd ff ff       	callq  400cd0 <puts@plt>
  400fad:	bf 00 00 00 00       	mov    $0x0,%edi
  400fb2:	e8 89 fe ff ff       	callq  400e40 <exit@plt>
  400fb7:	bf 46 2f 40 00       	mov    $0x402f46,%edi
  400fbc:	b8 00 00 00 00       	mov    $0x0,%eax
  400fc1:	e8 3a fd ff ff       	callq  400d00 <printf@plt>
  400fc6:	bf e8 2d 40 00       	mov    $0x402de8,%edi
  400fcb:	e8 00 fd ff ff       	callq  400cd0 <puts@plt>
  400fd0:	bf 10 2e 40 00       	mov    $0x402e10,%edi
  400fd5:	e8 f6 fc ff ff       	callq  400cd0 <puts@plt>
  400fda:	bf 64 2f 40 00       	mov    $0x402f64,%edi
  400fdf:	e8 ec fc ff ff       	callq  400cd0 <puts@plt>
  400fe4:	eb c7                	jmp    400fad <usage+0x47>

0000000000400fe6 <initialize_target>:
  400fe6:	55                   	push   %rbp
  400fe7:	53                   	push   %rbx
  400fe8:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  400fef:	89 f5                	mov    %esi,%ebp
  400ff1:	89 3d 01 45 20 00    	mov    %edi,0x204501(%rip)        # 6054f8 <check_level>
  400ff7:	8b 3d 4b 41 20 00    	mov    0x20414b(%rip),%edi        # 605148 <target_id>
  400ffd:	e8 9c 1c 00 00       	callq  402c9e <gencookie>
  401002:	89 05 fc 44 20 00    	mov    %eax,0x2044fc(%rip)        # 605504 <cookie>
  401008:	89 c7                	mov    %eax,%edi
  40100a:	e8 8f 1c 00 00       	callq  402c9e <gencookie>
  40100f:	89 05 eb 44 20 00    	mov    %eax,0x2044eb(%rip)        # 605500 <authkey>
  401015:	8b 05 2d 41 20 00    	mov    0x20412d(%rip),%eax        # 605148 <target_id>
  40101b:	8d 78 01             	lea    0x1(%rax),%edi
  40101e:	e8 7d fc ff ff       	callq  400ca0 <srandom@plt>
  401023:	e8 88 fd ff ff       	callq  400db0 <random@plt>
  401028:	89 c7                	mov    %eax,%edi
  40102a:	e8 b8 02 00 00       	callq  4012e7 <scramble>
  40102f:	89 c3                	mov    %eax,%ebx
  401031:	85 ed                	test   %ebp,%ebp
  401033:	75 3d                	jne    401072 <initialize_target+0x8c>
  401035:	b8 00 00 00 00       	mov    $0x0,%eax
  40103a:	01 d8                	add    %ebx,%eax
  40103c:	0f b7 c0             	movzwl %ax,%eax
  40103f:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  401046:	89 c0                	mov    %eax,%eax
  401048:	48 89 05 31 44 20 00 	mov    %rax,0x204431(%rip)        # 605480 <buf_offset>
  40104f:	c6 05 d2 50 20 00 72 	movb   $0x72,0x2050d2(%rip)        # 606128 <target_prefix>
  401056:	83 3d 2b 44 20 00 00 	cmpl   $0x0,0x20442b(%rip)        # 605488 <notify>
  40105d:	74 09                	je     401068 <initialize_target+0x82>
  40105f:	83 3d a2 44 20 00 00 	cmpl   $0x0,0x2044a2(%rip)        # 605508 <is_checker>
  401066:	74 22                	je     40108a <initialize_target+0xa4>
  401068:	48 81 c4 08 21 00 00 	add    $0x2108,%rsp
  40106f:	5b                   	pop    %rbx
  401070:	5d                   	pop    %rbp
  401071:	c3                   	retq   
  401072:	bf 00 00 00 00       	mov    $0x0,%edi
  401077:	e8 24 fd ff ff       	callq  400da0 <time@plt>
  40107c:	89 c7                	mov    %eax,%edi
  40107e:	e8 1d fc ff ff       	callq  400ca0 <srandom@plt>
  401083:	e8 28 fd ff ff       	callq  400db0 <random@plt>
  401088:	eb b0                	jmp    40103a <initialize_target+0x54>
  40108a:	be 00 01 00 00       	mov    $0x100,%esi
  40108f:	48 89 e7             	mov    %rsp,%rdi
  401092:	e8 89 fd ff ff       	callq  400e20 <gethostname@plt>
  401097:	89 c5                	mov    %eax,%ebp
  401099:	85 c0                	test   %eax,%eax
  40109b:	75 23                	jne    4010c0 <initialize_target+0xda>
  40109d:	89 c3                	mov    %eax,%ebx
  40109f:	48 63 c3             	movslq %ebx,%rax
  4010a2:	48 8b 3c c5 60 51 60 	mov    0x605160(,%rax,8),%rdi
  4010a9:	00 
  4010aa:	48 85 ff             	test   %rdi,%rdi
  4010ad:	74 2a                	je     4010d9 <initialize_target+0xf3>
  4010af:	48 89 e6             	mov    %rsp,%rsi
  4010b2:	e8 c9 fb ff ff       	callq  400c80 <strcasecmp@plt>
  4010b7:	85 c0                	test   %eax,%eax
  4010b9:	74 19                	je     4010d4 <initialize_target+0xee>
  4010bb:	83 c3 01             	add    $0x1,%ebx
  4010be:	eb df                	jmp    40109f <initialize_target+0xb9>
  4010c0:	bf 40 2e 40 00       	mov    $0x402e40,%edi
  4010c5:	e8 06 fc ff ff       	callq  400cd0 <puts@plt>
  4010ca:	bf 08 00 00 00       	mov    $0x8,%edi
  4010cf:	e8 6c fd ff ff       	callq  400e40 <exit@plt>
  4010d4:	bd 01 00 00 00       	mov    $0x1,%ebp
  4010d9:	85 ed                	test   %ebp,%ebp
  4010db:	74 36                	je     401113 <initialize_target+0x12d>
  4010dd:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  4010e4:	00 
  4010e5:	e8 3e 19 00 00       	callq  402a28 <init_driver>
  4010ea:	85 c0                	test   %eax,%eax
  4010ec:	0f 89 76 ff ff ff    	jns    401068 <initialize_target+0x82>
  4010f2:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  4010f9:	00 
  4010fa:	bf b8 2e 40 00       	mov    $0x402eb8,%edi
  4010ff:	b8 00 00 00 00       	mov    $0x0,%eax
  401104:	e8 f7 fb ff ff       	callq  400d00 <printf@plt>
  401109:	bf 08 00 00 00       	mov    $0x8,%edi
  40110e:	e8 2d fd ff ff       	callq  400e40 <exit@plt>
  401113:	48 89 e6             	mov    %rsp,%rsi
  401116:	bf 78 2e 40 00       	mov    $0x402e78,%edi
  40111b:	b8 00 00 00 00       	mov    $0x0,%eax
  401120:	e8 db fb ff ff       	callq  400d00 <printf@plt>
  401125:	bf 08 00 00 00       	mov    $0x8,%edi
  40112a:	e8 11 fd ff ff       	callq  400e40 <exit@plt>

000000000040112f <main>:
  40112f:	41 56                	push   %r14
  401131:	41 55                	push   %r13
  401133:	41 54                	push   %r12
  401135:	55                   	push   %rbp
  401136:	53                   	push   %rbx
  401137:	89 fd                	mov    %edi,%ebp
  401139:	48 89 f3             	mov    %rsi,%rbx
  40113c:	be 2d 1e 40 00       	mov    $0x401e2d,%esi
  401141:	bf 0b 00 00 00       	mov    $0xb,%edi
  401146:	e8 05 fc ff ff       	callq  400d50 <signal@plt>
  40114b:	be df 1d 40 00       	mov    $0x401ddf,%esi
  401150:	bf 07 00 00 00       	mov    $0x7,%edi
  401155:	e8 f6 fb ff ff       	callq  400d50 <signal@plt>
  40115a:	be 7b 1e 40 00       	mov    $0x401e7b,%esi
  40115f:	bf 04 00 00 00       	mov    $0x4,%edi
  401164:	e8 e7 fb ff ff       	callq  400d50 <signal@plt>
  401169:	83 3d 98 43 20 00 00 	cmpl   $0x0,0x204398(%rip)        # 605508 <is_checker>
  401170:	75 25                	jne    401197 <main+0x68>
  401172:	41 bc 85 2f 40 00    	mov    $0x402f85,%r12d
  401178:	48 8b 05 21 43 20 00 	mov    0x204321(%rip),%rax        # 6054a0 <stdin@@GLIBC_2.2.5>
  40117f:	48 89 05 6a 43 20 00 	mov    %rax,0x20436a(%rip)        # 6054f0 <infile>
  401186:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40118c:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401192:	e9 81 00 00 00       	jmpq   401218 <main+0xe9>
  401197:	be c9 1e 40 00       	mov    $0x401ec9,%esi
  40119c:	bf 0e 00 00 00       	mov    $0xe,%edi
  4011a1:	e8 aa fb ff ff       	callq  400d50 <signal@plt>
  4011a6:	bf 05 00 00 00       	mov    $0x5,%edi
  4011ab:	e8 70 fb ff ff       	callq  400d20 <alarm@plt>
  4011b0:	41 bc 7d 2f 40 00    	mov    $0x402f7d,%r12d
  4011b6:	eb c0                	jmp    401178 <main+0x49>
  4011b8:	48 8b 3b             	mov    (%rbx),%rdi
  4011bb:	e8 a6 fd ff ff       	callq  400f66 <usage>
  4011c0:	be b5 32 40 00       	mov    $0x4032b5,%esi
  4011c5:	48 8b 3d dc 42 20 00 	mov    0x2042dc(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  4011cc:	e8 1f fc ff ff       	callq  400df0 <fopen@plt>
  4011d1:	48 89 05 18 43 20 00 	mov    %rax,0x204318(%rip)        # 6054f0 <infile>
  4011d8:	48 85 c0             	test   %rax,%rax
  4011db:	75 3b                	jne    401218 <main+0xe9>
  4011dd:	48 8b 15 c4 42 20 00 	mov    0x2042c4(%rip),%rdx        # 6054a8 <optarg@@GLIBC_2.2.5>
  4011e4:	be 8a 2f 40 00       	mov    $0x402f8a,%esi
  4011e9:	48 8b 3d d0 42 20 00 	mov    0x2042d0(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  4011f0:	e8 7b fb ff ff       	callq  400d70 <fprintf@plt>
  4011f5:	b8 01 00 00 00       	mov    $0x1,%eax
  4011fa:	e9 c1 00 00 00       	jmpq   4012c0 <main+0x191>
  4011ff:	ba 10 00 00 00       	mov    $0x10,%edx
  401204:	be 00 00 00 00       	mov    $0x0,%esi
  401209:	48 8b 3d 98 42 20 00 	mov    0x204298(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  401210:	e8 fb fb ff ff       	callq  400e10 <strtoul@plt>
  401215:	41 89 c6             	mov    %eax,%r14d
  401218:	4c 89 e2             	mov    %r12,%rdx
  40121b:	48 89 de             	mov    %rbx,%rsi
  40121e:	89 ef                	mov    %ebp,%edi
  401220:	e8 db fb ff ff       	callq  400e00 <getopt@plt>
  401225:	3c ff                	cmp    $0xff,%al
  401227:	74 52                	je     40127b <main+0x14c>
  401229:	0f be f0             	movsbl %al,%esi
  40122c:	83 e8 61             	sub    $0x61,%eax
  40122f:	3c 10                	cmp    $0x10,%al
  401231:	77 31                	ja     401264 <main+0x135>
  401233:	0f b6 c0             	movzbl %al,%eax
  401236:	ff 24 c5 c8 2f 40 00 	jmpq   *0x402fc8(,%rax,8)
  40123d:	ba 0a 00 00 00       	mov    $0xa,%edx
  401242:	be 00 00 00 00       	mov    $0x0,%esi
  401247:	48 8b 3d 5a 42 20 00 	mov    0x20425a(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  40124e:	e8 2d fb ff ff       	callq  400d80 <strtol@plt>
  401253:	41 89 c5             	mov    %eax,%r13d
  401256:	eb c0                	jmp    401218 <main+0xe9>
  401258:	c7 05 26 42 20 00 00 	movl   $0x0,0x204226(%rip)        # 605488 <notify>
  40125f:	00 00 00 
  401262:	eb b4                	jmp    401218 <main+0xe9>
  401264:	bf a7 2f 40 00       	mov    $0x402fa7,%edi
  401269:	b8 00 00 00 00       	mov    $0x0,%eax
  40126e:	e8 8d fa ff ff       	callq  400d00 <printf@plt>
  401273:	48 8b 3b             	mov    (%rbx),%rdi
  401276:	e8 eb fc ff ff       	callq  400f66 <usage>
  40127b:	be 01 00 00 00       	mov    $0x1,%esi
  401280:	44 89 ef             	mov    %r13d,%edi
  401283:	e8 5e fd ff ff       	callq  400fe6 <initialize_target>
  401288:	83 3d 79 42 20 00 00 	cmpl   $0x0,0x204279(%rip)        # 605508 <is_checker>
  40128f:	74 09                	je     40129a <main+0x16b>
  401291:	44 39 35 68 42 20 00 	cmp    %r14d,0x204268(%rip)        # 605500 <authkey>
  401298:	75 2f                	jne    4012c9 <main+0x19a>
  40129a:	8b 35 64 42 20 00    	mov    0x204264(%rip),%esi        # 605504 <cookie>
  4012a0:	bf ba 2f 40 00       	mov    $0x402fba,%edi
  4012a5:	b8 00 00 00 00       	mov    $0x0,%eax
  4012aa:	e8 51 fa ff ff       	callq  400d00 <printf@plt>
  4012af:	48 8b 3d ca 41 20 00 	mov    0x2041ca(%rip),%rdi        # 605480 <buf_offset>
  4012b6:	e8 5c 0c 00 00       	callq  401f17 <launch>
  4012bb:	b8 00 00 00 00       	mov    $0x0,%eax
  4012c0:	5b                   	pop    %rbx
  4012c1:	5d                   	pop    %rbp
  4012c2:	41 5c                	pop    %r12
  4012c4:	41 5d                	pop    %r13
  4012c6:	41 5e                	pop    %r14
  4012c8:	c3                   	retq   
  4012c9:	44 89 f6             	mov    %r14d,%esi
  4012cc:	bf e0 2e 40 00       	mov    $0x402ee0,%edi
  4012d1:	b8 00 00 00 00       	mov    $0x0,%eax
  4012d6:	e8 25 fa ff ff       	callq  400d00 <printf@plt>
  4012db:	b8 00 00 00 00       	mov    $0x0,%eax
  4012e0:	e8 fe 07 00 00       	callq  401ae3 <check_fail>
  4012e5:	eb b3                	jmp    40129a <main+0x16b>

00000000004012e7 <scramble>:
  4012e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4012ec:	83 f8 09             	cmp    $0x9,%eax
  4012ef:	77 13                	ja     401304 <scramble+0x1d>
  4012f1:	69 d0 55 e0 00 00    	imul   $0xe055,%eax,%edx
  4012f7:	01 fa                	add    %edi,%edx
  4012f9:	89 c1                	mov    %eax,%ecx
  4012fb:	89 54 8c d0          	mov    %edx,-0x30(%rsp,%rcx,4)
  4012ff:	83 c0 01             	add    $0x1,%eax
  401302:	eb e8                	jmp    4012ec <scramble+0x5>
  401304:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401308:	69 c0 50 12 00 00    	imul   $0x1250,%eax,%eax
  40130e:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401312:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401316:	69 c0 21 0b 00 00    	imul   $0xb21,%eax,%eax
  40131c:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401320:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401324:	69 c0 89 2e 00 00    	imul   $0x2e89,%eax,%eax
  40132a:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40132e:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401332:	69 c0 bc 2b 00 00    	imul   $0x2bbc,%eax,%eax
  401338:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40133c:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401340:	69 c0 b6 db 00 00    	imul   $0xdbb6,%eax,%eax
  401346:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40134a:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40134e:	69 c0 84 e0 00 00    	imul   $0xe084,%eax,%eax
  401354:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401358:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40135c:	69 c0 48 3c 00 00    	imul   $0x3c48,%eax,%eax
  401362:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401366:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40136a:	69 c0 d3 05 00 00    	imul   $0x5d3,%eax,%eax
  401370:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401374:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401378:	69 c0 b8 e2 00 00    	imul   $0xe2b8,%eax,%eax
  40137e:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401382:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401386:	69 c0 ef 54 00 00    	imul   $0x54ef,%eax,%eax
  40138c:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401390:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401394:	69 c0 29 ed 00 00    	imul   $0xed29,%eax,%eax
  40139a:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40139e:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4013a2:	69 c0 36 83 00 00    	imul   $0x8336,%eax,%eax
  4013a8:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4013ac:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4013b0:	69 c0 c1 87 00 00    	imul   $0x87c1,%eax,%eax
  4013b6:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4013ba:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4013be:	69 c0 f3 2f 00 00    	imul   $0x2ff3,%eax,%eax
  4013c4:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4013c8:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4013cc:	69 c0 c0 e8 00 00    	imul   $0xe8c0,%eax,%eax
  4013d2:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4013d6:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4013da:	69 c0 6b 6a 00 00    	imul   $0x6a6b,%eax,%eax
  4013e0:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4013e4:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4013e8:	69 c0 98 7b 00 00    	imul   $0x7b98,%eax,%eax
  4013ee:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4013f2:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4013f6:	69 c0 7e 5e 00 00    	imul   $0x5e7e,%eax,%eax
  4013fc:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401400:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401404:	69 c0 e6 80 00 00    	imul   $0x80e6,%eax,%eax
  40140a:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40140e:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401412:	69 c0 92 c1 00 00    	imul   $0xc192,%eax,%eax
  401418:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40141c:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401420:	69 c0 6c d2 00 00    	imul   $0xd26c,%eax,%eax
  401426:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40142a:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40142e:	69 c0 4a 65 00 00    	imul   $0x654a,%eax,%eax
  401434:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401438:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40143c:	69 c0 19 79 00 00    	imul   $0x7919,%eax,%eax
  401442:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401446:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40144a:	69 c0 49 87 00 00    	imul   $0x8749,%eax,%eax
  401450:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401454:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401458:	69 c0 b6 f5 00 00    	imul   $0xf5b6,%eax,%eax
  40145e:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401462:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401466:	69 c0 2d 56 00 00    	imul   $0x562d,%eax,%eax
  40146c:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401470:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401474:	69 c0 87 a4 00 00    	imul   $0xa487,%eax,%eax
  40147a:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40147e:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401482:	69 c0 79 0e 00 00    	imul   $0xe79,%eax,%eax
  401488:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40148c:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401490:	69 c0 e1 83 00 00    	imul   $0x83e1,%eax,%eax
  401496:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40149a:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40149e:	69 c0 5e b6 00 00    	imul   $0xb65e,%eax,%eax
  4014a4:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4014a8:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4014ac:	69 c0 48 4d 00 00    	imul   $0x4d48,%eax,%eax
  4014b2:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4014b6:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4014ba:	69 c0 b1 67 00 00    	imul   $0x67b1,%eax,%eax
  4014c0:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4014c4:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4014c8:	69 c0 57 96 00 00    	imul   $0x9657,%eax,%eax
  4014ce:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4014d2:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4014d6:	69 c0 02 73 00 00    	imul   $0x7302,%eax,%eax
  4014dc:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4014e0:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4014e4:	69 c0 69 50 00 00    	imul   $0x5069,%eax,%eax
  4014ea:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4014ee:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4014f2:	69 c0 da 73 00 00    	imul   $0x73da,%eax,%eax
  4014f8:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4014fc:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401500:	69 c0 ab d6 00 00    	imul   $0xd6ab,%eax,%eax
  401506:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40150a:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40150e:	69 c0 8a 31 00 00    	imul   $0x318a,%eax,%eax
  401514:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401518:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40151c:	69 c0 43 44 00 00    	imul   $0x4443,%eax,%eax
  401522:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401526:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40152a:	69 c0 97 ab 00 00    	imul   $0xab97,%eax,%eax
  401530:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401534:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401538:	69 c0 0c 95 00 00    	imul   $0x950c,%eax,%eax
  40153e:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401542:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401546:	69 c0 d8 1c 00 00    	imul   $0x1cd8,%eax,%eax
  40154c:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401550:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401554:	69 c0 27 db 00 00    	imul   $0xdb27,%eax,%eax
  40155a:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40155e:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401562:	69 c0 dc 65 00 00    	imul   $0x65dc,%eax,%eax
  401568:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40156c:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401570:	69 c0 be 69 00 00    	imul   $0x69be,%eax,%eax
  401576:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40157a:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40157e:	69 c0 a9 cb 00 00    	imul   $0xcba9,%eax,%eax
  401584:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401588:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40158c:	69 c0 04 3d 00 00    	imul   $0x3d04,%eax,%eax
  401592:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401596:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40159a:	69 c0 e7 7f 00 00    	imul   $0x7fe7,%eax,%eax
  4015a0:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4015a4:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4015a8:	69 c0 89 f9 00 00    	imul   $0xf989,%eax,%eax
  4015ae:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4015b2:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4015b6:	69 c0 99 ea 00 00    	imul   $0xea99,%eax,%eax
  4015bc:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4015c0:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4015c4:	69 c0 7e 27 00 00    	imul   $0x277e,%eax,%eax
  4015ca:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4015ce:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4015d2:	69 c0 c8 6c 00 00    	imul   $0x6cc8,%eax,%eax
  4015d8:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4015dc:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4015e0:	69 c0 98 37 00 00    	imul   $0x3798,%eax,%eax
  4015e6:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4015ea:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4015ee:	69 c0 ef 4d 00 00    	imul   $0x4def,%eax,%eax
  4015f4:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4015f8:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4015fc:	69 c0 26 57 00 00    	imul   $0x5726,%eax,%eax
  401602:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401606:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40160a:	69 c0 d4 b5 00 00    	imul   $0xb5d4,%eax,%eax
  401610:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401614:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401618:	69 c0 4a fb 00 00    	imul   $0xfb4a,%eax,%eax
  40161e:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401622:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401626:	69 c0 c6 25 00 00    	imul   $0x25c6,%eax,%eax
  40162c:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401630:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401634:	69 c0 fe fd 00 00    	imul   $0xfdfe,%eax,%eax
  40163a:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40163e:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401642:	69 c0 7a 35 00 00    	imul   $0x357a,%eax,%eax
  401648:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40164c:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401650:	69 c0 dd a7 00 00    	imul   $0xa7dd,%eax,%eax
  401656:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40165a:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40165e:	69 c0 c3 1e 00 00    	imul   $0x1ec3,%eax,%eax
  401664:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401668:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40166c:	69 c0 7e 34 00 00    	imul   $0x347e,%eax,%eax
  401672:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401676:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40167a:	69 c0 3d b8 00 00    	imul   $0xb83d,%eax,%eax
  401680:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401684:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401688:	69 c0 93 91 00 00    	imul   $0x9193,%eax,%eax
  40168e:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401692:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401696:	69 c0 fa 77 00 00    	imul   $0x77fa,%eax,%eax
  40169c:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4016a0:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4016a4:	69 c0 49 01 00 00    	imul   $0x149,%eax,%eax
  4016aa:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4016ae:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4016b2:	69 c0 3c b7 00 00    	imul   $0xb73c,%eax,%eax
  4016b8:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4016bc:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4016c0:	69 c0 14 83 00 00    	imul   $0x8314,%eax,%eax
  4016c6:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4016ca:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4016ce:	69 c0 bd b4 00 00    	imul   $0xb4bd,%eax,%eax
  4016d4:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4016d8:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4016dc:	69 c0 b1 fe 00 00    	imul   $0xfeb1,%eax,%eax
  4016e2:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4016e6:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4016ea:	69 c0 6e c6 00 00    	imul   $0xc66e,%eax,%eax
  4016f0:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4016f4:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4016f8:	69 c0 3e 3d 00 00    	imul   $0x3d3e,%eax,%eax
  4016fe:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401702:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401706:	69 c0 6c d0 00 00    	imul   $0xd06c,%eax,%eax
  40170c:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401710:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401714:	69 c0 d7 77 00 00    	imul   $0x77d7,%eax,%eax
  40171a:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40171e:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401722:	69 c0 f9 a2 00 00    	imul   $0xa2f9,%eax,%eax
  401728:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40172c:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401730:	69 c0 0a 07 00 00    	imul   $0x70a,%eax,%eax
  401736:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40173a:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40173e:	69 c0 95 04 00 00    	imul   $0x495,%eax,%eax
  401744:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401748:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40174c:	69 c0 66 60 00 00    	imul   $0x6066,%eax,%eax
  401752:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401756:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40175a:	69 c0 8f 69 00 00    	imul   $0x698f,%eax,%eax
  401760:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401764:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401768:	69 c0 a8 5f 00 00    	imul   $0x5fa8,%eax,%eax
  40176e:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401772:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401776:	69 c0 0b ab 00 00    	imul   $0xab0b,%eax,%eax
  40177c:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401780:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401784:	69 c0 4b c6 00 00    	imul   $0xc64b,%eax,%eax
  40178a:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40178e:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401792:	69 c0 d4 99 00 00    	imul   $0x99d4,%eax,%eax
  401798:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40179c:	ba 00 00 00 00       	mov    $0x0,%edx
  4017a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4017a6:	83 fa 09             	cmp    $0x9,%edx
  4017a9:	77 0d                	ja     4017b8 <scramble+0x4d1>
  4017ab:	89 d1                	mov    %edx,%ecx
  4017ad:	8b 4c 8c d0          	mov    -0x30(%rsp,%rcx,4),%ecx
  4017b1:	01 c8                	add    %ecx,%eax
  4017b3:	83 c2 01             	add    $0x1,%edx
  4017b6:	eb ee                	jmp    4017a6 <scramble+0x4bf>
  4017b8:	c3                   	retq   

00000000004017b9 <getbuf>:
  4017b9:	48 83 ec 38          	sub    $0x38,%rsp
  4017bd:	48 89 e7             	mov    %rsp,%rdi
  4017c0:	e8 4d 03 00 00       	callq  401b12 <Gets>
  4017c5:	b8 01 00 00 00       	mov    $0x1,%eax
  4017ca:	48 83 c4 38          	add    $0x38,%rsp
  4017ce:	c3                   	retq   

00000000004017cf <touch1>:
  4017cf:	48 83 ec 08          	sub    $0x8,%rsp
  4017d3:	c7 05 1f 3d 20 00 01 	movl   $0x1,0x203d1f(%rip)        # 6054fc <vlevel>
  4017da:	00 00 00 
  4017dd:	bf 08 31 40 00       	mov    $0x403108,%edi
  4017e2:	e8 e9 f4 ff ff       	callq  400cd0 <puts@plt>
  4017e7:	bf 01 00 00 00       	mov    $0x1,%edi
  4017ec:	e8 14 05 00 00       	callq  401d05 <validate>
  4017f1:	bf 00 00 00 00       	mov    $0x0,%edi
  4017f6:	e8 45 f6 ff ff       	callq  400e40 <exit@plt>

00000000004017fb <touch2>:
  4017fb:	48 83 ec 08          	sub    $0x8,%rsp
  4017ff:	89 fe                	mov    %edi,%esi
  401801:	c7 05 f1 3c 20 00 02 	movl   $0x2,0x203cf1(%rip)        # 6054fc <vlevel>
  401808:	00 00 00 
  40180b:	39 3d f3 3c 20 00    	cmp    %edi,0x203cf3(%rip)        # 605504 <cookie>
  401811:	74 23                	je     401836 <touch2+0x3b>
  401813:	bf 58 31 40 00       	mov    $0x403158,%edi
  401818:	b8 00 00 00 00       	mov    $0x0,%eax
  40181d:	e8 de f4 ff ff       	callq  400d00 <printf@plt>
  401822:	bf 02 00 00 00       	mov    $0x2,%edi
  401827:	e8 8b 05 00 00       	callq  401db7 <fail>
  40182c:	bf 00 00 00 00       	mov    $0x0,%edi
  401831:	e8 0a f6 ff ff       	callq  400e40 <exit@plt>
  401836:	bf 30 31 40 00       	mov    $0x403130,%edi
  40183b:	b8 00 00 00 00       	mov    $0x0,%eax
  401840:	e8 bb f4 ff ff       	callq  400d00 <printf@plt>
  401845:	bf 02 00 00 00       	mov    $0x2,%edi
  40184a:	e8 b6 04 00 00       	callq  401d05 <validate>
  40184f:	eb db                	jmp    40182c <touch2+0x31>

0000000000401851 <hexmatch>:
  401851:	41 54                	push   %r12
  401853:	55                   	push   %rbp
  401854:	53                   	push   %rbx
  401855:	48 83 ec 70          	sub    $0x70,%rsp
  401859:	89 fd                	mov    %edi,%ebp
  40185b:	48 89 f3             	mov    %rsi,%rbx
  40185e:	e8 4d f5 ff ff       	callq  400db0 <random@plt>
  401863:	48 89 c1             	mov    %rax,%rcx
  401866:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  40186d:	0a d7 a3 
  401870:	48 f7 ea             	imul   %rdx
  401873:	48 01 ca             	add    %rcx,%rdx
  401876:	48 c1 fa 06          	sar    $0x6,%rdx
  40187a:	48 89 c8             	mov    %rcx,%rax
  40187d:	48 c1 f8 3f          	sar    $0x3f,%rax
  401881:	48 29 c2             	sub    %rax,%rdx
  401884:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401888:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  40188c:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401893:	00 
  401894:	48 29 c1             	sub    %rax,%rcx
  401897:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  40189b:	89 ea                	mov    %ebp,%edx
  40189d:	be 25 31 40 00       	mov    $0x403125,%esi
  4018a2:	4c 89 e7             	mov    %r12,%rdi
  4018a5:	b8 00 00 00 00       	mov    $0x0,%eax
  4018aa:	e8 81 f5 ff ff       	callq  400e30 <sprintf@plt>
  4018af:	ba 09 00 00 00       	mov    $0x9,%edx
  4018b4:	4c 89 e6             	mov    %r12,%rsi
  4018b7:	48 89 df             	mov    %rbx,%rdi
  4018ba:	e8 f1 f3 ff ff       	callq  400cb0 <strncmp@plt>
  4018bf:	85 c0                	test   %eax,%eax
  4018c1:	0f 94 c0             	sete   %al
  4018c4:	0f b6 c0             	movzbl %al,%eax
  4018c7:	48 83 c4 70          	add    $0x70,%rsp
  4018cb:	5b                   	pop    %rbx
  4018cc:	5d                   	pop    %rbp
  4018cd:	41 5c                	pop    %r12
  4018cf:	c3                   	retq   

00000000004018d0 <touch3>:
  4018d0:	53                   	push   %rbx
  4018d1:	48 89 fb             	mov    %rdi,%rbx
  4018d4:	c7 05 1e 3c 20 00 03 	movl   $0x3,0x203c1e(%rip)        # 6054fc <vlevel>
  4018db:	00 00 00 
  4018de:	48 89 fe             	mov    %rdi,%rsi
  4018e1:	8b 3d 1d 3c 20 00    	mov    0x203c1d(%rip),%edi        # 605504 <cookie>
  4018e7:	e8 65 ff ff ff       	callq  401851 <hexmatch>
  4018ec:	85 c0                	test   %eax,%eax
  4018ee:	74 26                	je     401916 <touch3+0x46>
  4018f0:	48 89 de             	mov    %rbx,%rsi
  4018f3:	bf 80 31 40 00       	mov    $0x403180,%edi
  4018f8:	b8 00 00 00 00       	mov    $0x0,%eax
  4018fd:	e8 fe f3 ff ff       	callq  400d00 <printf@plt>
  401902:	bf 03 00 00 00       	mov    $0x3,%edi
  401907:	e8 f9 03 00 00       	callq  401d05 <validate>
  40190c:	bf 00 00 00 00       	mov    $0x0,%edi
  401911:	e8 2a f5 ff ff       	callq  400e40 <exit@plt>
  401916:	48 89 de             	mov    %rbx,%rsi
  401919:	bf a8 31 40 00       	mov    $0x4031a8,%edi
  40191e:	b8 00 00 00 00       	mov    $0x0,%eax
  401923:	e8 d8 f3 ff ff       	callq  400d00 <printf@plt>
  401928:	bf 03 00 00 00       	mov    $0x3,%edi
  40192d:	e8 85 04 00 00       	callq  401db7 <fail>
  401932:	eb d8                	jmp    40190c <touch3+0x3c>

0000000000401934 <test>:
  401934:	48 83 ec 08          	sub    $0x8,%rsp
  401938:	b8 00 00 00 00       	mov    $0x0,%eax
  40193d:	e8 77 fe ff ff       	callq  4017b9 <getbuf>
  401942:	89 c6                	mov    %eax,%esi
  401944:	bf d0 31 40 00       	mov    $0x4031d0,%edi
  401949:	b8 00 00 00 00       	mov    $0x0,%eax
  40194e:	e8 ad f3 ff ff       	callq  400d00 <printf@plt>
  401953:	48 83 c4 08          	add    $0x8,%rsp
  401957:	c3                   	retq   

0000000000401958 <start_farm>:
  401958:	b8 01 00 00 00       	mov    $0x1,%eax
  40195d:	c3                   	retq   

000000000040195e <getval_222>:
  40195e:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  401963:	c3                   	retq   

0000000000401964 <setval_212>:
  401964:	c7 07 48 89 c7 c3    	movl   $0xc3c78948,(%rdi)
  40196a:	c3                   	retq   

000000000040196b <getval_214>:
  40196b:	b8 58 91 90 90       	mov    $0x90909158,%eax
  401970:	c3                   	retq   

0000000000401971 <setval_252>:
  401971:	c7 07 48 89 c7 91    	movl   $0x91c78948,(%rdi)
  401977:	c3                   	retq   

0000000000401978 <setval_495>:
  401978:	c7 07 40 89 c7 c3    	movl   $0xc3c78940,(%rdi)
  40197e:	c3                   	retq   

000000000040197f <getval_153>:
  40197f:	b8 d8 90 c3 24       	mov    $0x24c390d8,%eax
  401984:	c3                   	retq   

0000000000401985 <addval_157>:
  401985:	8d 87 ed a5 58 90    	lea    -0x6fa75a13(%rdi),%eax
  40198b:	c3                   	retq   

000000000040198c <setval_451>:
  40198c:	c7 07 af 9d 58 c3    	movl   $0xc3589daf,(%rdi)
  401992:	c3                   	retq   

0000000000401993 <mid_farm>:
  401993:	b8 01 00 00 00       	mov    $0x1,%eax
  401998:	c3                   	retq   

0000000000401999 <add_xy>:
  401999:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  40199d:	c3                   	retq   

000000000040199e <setval_289>:
  40199e:	c7 07 99 c1 90 90    	movl   $0x9090c199,(%rdi)
  4019a4:	c3                   	retq   

00000000004019a5 <setval_478>:
  4019a5:	c7 07 89 ca c3 e3    	movl   $0xe3c3ca89,(%rdi)
  4019ab:	c3                   	retq   

00000000004019ac <addval_483>:
  4019ac:	8d 87 81 d6 38 d2    	lea    -0x2dc7297f(%rdi),%eax
  4019b2:	c3                   	retq   

00000000004019b3 <addval_178>:
  4019b3:	8d 87 89 c1 08 db    	lea    -0x24f73e77(%rdi),%eax
  4019b9:	c3                   	retq   

00000000004019ba <getval_101>:
  4019ba:	b8 ba 48 89 e0       	mov    $0xe08948ba,%eax
  4019bf:	c3                   	retq   

00000000004019c0 <addval_216>:
  4019c0:	8d 87 89 d6 84 c0    	lea    -0x3f7b2977(%rdi),%eax
  4019c6:	c3                   	retq   

00000000004019c7 <addval_304>:
  4019c7:	8d 87 a9 c1 08 db    	lea    -0x24f73e57(%rdi),%eax
  4019cd:	c3                   	retq   

00000000004019ce <addval_257>:
  4019ce:	8d 87 89 c1 60 db    	lea    -0x249f3e77(%rdi),%eax
  4019d4:	c3                   	retq   

00000000004019d5 <getval_326>:
  4019d5:	b8 4d be 89 d6       	mov    $0xd689be4d,%eax
  4019da:	c3                   	retq   

00000000004019db <addval_259>:
  4019db:	8d 87 88 ca 90 90    	lea    -0x6f6f3578(%rdi),%eax
  4019e1:	c3                   	retq   

00000000004019e2 <setval_413>:
  4019e2:	c7 07 88 ca 84 c9    	movl   $0xc984ca88,(%rdi)
  4019e8:	c3                   	retq   

00000000004019e9 <addval_255>:
  4019e9:	8d 87 48 89 e0 91    	lea    -0x6e1f76b8(%rdi),%eax
  4019ef:	c3                   	retq   

00000000004019f0 <addval_172>:
  4019f0:	8d 87 81 c1 38 c9    	lea    -0x36c73e7f(%rdi),%eax
  4019f6:	c3                   	retq   

00000000004019f7 <getval_203>:
  4019f7:	b8 8d c1 90 c3       	mov    $0xc390c18d,%eax
  4019fc:	c3                   	retq   

00000000004019fd <setval_448>:
  4019fd:	c7 07 89 ca 92 90    	movl   $0x9092ca89,(%rdi)
  401a03:	c3                   	retq   

0000000000401a04 <getval_376>:
  401a04:	b8 e4 c8 89 e0       	mov    $0xe089c8e4,%eax
  401a09:	c3                   	retq   

0000000000401a0a <addval_309>:
  401a0a:	8d 87 68 89 e0 c3    	lea    -0x3c1f7698(%rdi),%eax
  401a10:	c3                   	retq   

0000000000401a11 <getval_190>:
  401a11:	b8 89 d6 91 c3       	mov    $0xc391d689,%eax
  401a16:	c3                   	retq   

0000000000401a17 <setval_455>:
  401a17:	c7 07 89 d6 18 db    	movl   $0xdb18d689,(%rdi)
  401a1d:	c3                   	retq   

0000000000401a1e <getval_486>:
  401a1e:	b8 48 8b e0 90       	mov    $0x90e08b48,%eax
  401a23:	c3                   	retq   

0000000000401a24 <addval_394>:
  401a24:	8d 87 09 d6 90 c3    	lea    -0x3c6f29f7(%rdi),%eax
  401a2a:	c3                   	retq   

0000000000401a2b <setval_273>:
  401a2b:	c7 07 2b 48 89 e0    	movl   $0xe089482b,(%rdi)
  401a31:	c3                   	retq   

0000000000401a32 <setval_464>:
  401a32:	c7 07 89 c1 20 db    	movl   $0xdb20c189,(%rdi)
  401a38:	c3                   	retq   

0000000000401a39 <addval_350>:
  401a39:	8d 87 89 ca 94 d2    	lea    -0x2d6b3577(%rdi),%eax
  401a3f:	c3                   	retq   

0000000000401a40 <setval_351>:
  401a40:	c7 07 89 ca 38 c0    	movl   $0xc038ca89,(%rdi)
  401a46:	c3                   	retq   

0000000000401a47 <addval_296>:
  401a47:	8d 87 58 89 e0 90    	lea    -0x6f1f76a8(%rdi),%eax
  401a4d:	c3                   	retq   

0000000000401a4e <getval_392>:
  401a4e:	b8 b6 89 d6 91       	mov    $0x91d689b6,%eax
  401a53:	c3                   	retq   

0000000000401a54 <getval_125>:
  401a54:	b8 2d 4c 89 e0       	mov    $0xe0894c2d,%eax
  401a59:	c3                   	retq   

0000000000401a5a <getval_362>:
  401a5a:	b8 c9 ca 20 d2       	mov    $0xd220cac9,%eax
  401a5f:	c3                   	retq   

0000000000401a60 <getval_151>:
  401a60:	b8 8d ca 20 c9       	mov    $0xc920ca8d,%eax
  401a65:	c3                   	retq   

0000000000401a66 <getval_410>:
  401a66:	b8 89 d6 a4 c0       	mov    $0xc0a4d689,%eax
  401a6b:	c3                   	retq   

0000000000401a6c <addval_417>:
  401a6c:	8d 87 89 c1 78 d2    	lea    -0x2d873e77(%rdi),%eax
  401a72:	c3                   	retq   

0000000000401a73 <end_farm>:
  401a73:	b8 01 00 00 00       	mov    $0x1,%eax
  401a78:	c3                   	retq   

0000000000401a79 <save_char>:
  401a79:	8b 05 a5 46 20 00    	mov    0x2046a5(%rip),%eax        # 606124 <gets_cnt>
  401a7f:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401a84:	7f 49                	jg     401acf <save_char+0x56>
  401a86:	89 f9                	mov    %edi,%ecx
  401a88:	c0 e9 04             	shr    $0x4,%cl
  401a8b:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401a8e:	83 e1 0f             	and    $0xf,%ecx
  401a91:	0f b6 b1 f0 34 40 00 	movzbl 0x4034f0(%rcx),%esi
  401a98:	48 63 ca             	movslq %edx,%rcx
  401a9b:	40 88 b1 20 55 60 00 	mov    %sil,0x605520(%rcx)
  401aa2:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401aa5:	83 e7 0f             	and    $0xf,%edi
  401aa8:	0f b6 b7 f0 34 40 00 	movzbl 0x4034f0(%rdi),%esi
  401aaf:	48 63 c9             	movslq %ecx,%rcx
  401ab2:	40 88 b1 20 55 60 00 	mov    %sil,0x605520(%rcx)
  401ab9:	83 c2 02             	add    $0x2,%edx
  401abc:	48 63 d2             	movslq %edx,%rdx
  401abf:	c6 82 20 55 60 00 20 	movb   $0x20,0x605520(%rdx)
  401ac6:	83 c0 01             	add    $0x1,%eax
  401ac9:	89 05 55 46 20 00    	mov    %eax,0x204655(%rip)        # 606124 <gets_cnt>
  401acf:	c3                   	retq   

0000000000401ad0 <save_term>:
  401ad0:	8b 05 4e 46 20 00    	mov    0x20464e(%rip),%eax        # 606124 <gets_cnt>
  401ad6:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401ad9:	48 98                	cltq   
  401adb:	c6 80 20 55 60 00 00 	movb   $0x0,0x605520(%rax)
  401ae2:	c3                   	retq   

0000000000401ae3 <check_fail>:
  401ae3:	48 83 ec 08          	sub    $0x8,%rsp
  401ae7:	0f be 35 3a 46 20 00 	movsbl 0x20463a(%rip),%esi        # 606128 <target_prefix>
  401aee:	b9 20 55 60 00       	mov    $0x605520,%ecx
  401af3:	8b 15 ff 39 20 00    	mov    0x2039ff(%rip),%edx        # 6054f8 <check_level>
  401af9:	bf f3 31 40 00       	mov    $0x4031f3,%edi
  401afe:	b8 00 00 00 00       	mov    $0x0,%eax
  401b03:	e8 f8 f1 ff ff       	callq  400d00 <printf@plt>
  401b08:	bf 01 00 00 00       	mov    $0x1,%edi
  401b0d:	e8 2e f3 ff ff       	callq  400e40 <exit@plt>

0000000000401b12 <Gets>:
  401b12:	41 54                	push   %r12
  401b14:	55                   	push   %rbp
  401b15:	53                   	push   %rbx
  401b16:	49 89 fc             	mov    %rdi,%r12
  401b19:	c7 05 01 46 20 00 00 	movl   $0x0,0x204601(%rip)        # 606124 <gets_cnt>
  401b20:	00 00 00 
  401b23:	48 89 fb             	mov    %rdi,%rbx
  401b26:	48 8b 3d c3 39 20 00 	mov    0x2039c3(%rip),%rdi        # 6054f0 <infile>
  401b2d:	e8 2e f3 ff ff       	callq  400e60 <getc@plt>
  401b32:	83 f8 ff             	cmp    $0xffffffff,%eax
  401b35:	74 18                	je     401b4f <Gets+0x3d>
  401b37:	83 f8 0a             	cmp    $0xa,%eax
  401b3a:	74 13                	je     401b4f <Gets+0x3d>
  401b3c:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401b40:	88 03                	mov    %al,(%rbx)
  401b42:	0f b6 f8             	movzbl %al,%edi
  401b45:	e8 2f ff ff ff       	callq  401a79 <save_char>
  401b4a:	48 89 eb             	mov    %rbp,%rbx
  401b4d:	eb d7                	jmp    401b26 <Gets+0x14>
  401b4f:	c6 03 00             	movb   $0x0,(%rbx)
  401b52:	b8 00 00 00 00       	mov    $0x0,%eax
  401b57:	e8 74 ff ff ff       	callq  401ad0 <save_term>
  401b5c:	4c 89 e0             	mov    %r12,%rax
  401b5f:	5b                   	pop    %rbx
  401b60:	5d                   	pop    %rbp
  401b61:	41 5c                	pop    %r12
  401b63:	c3                   	retq   

0000000000401b64 <notify_server>:
  401b64:	83 3d 9d 39 20 00 00 	cmpl   $0x0,0x20399d(%rip)        # 605508 <is_checker>
  401b6b:	0f 85 93 01 00 00    	jne    401d04 <notify_server+0x1a0>
  401b71:	55                   	push   %rbp
  401b72:	53                   	push   %rbx
  401b73:	48 81 ec 08 40 00 00 	sub    $0x4008,%rsp
  401b7a:	89 fb                	mov    %edi,%ebx
  401b7c:	81 3d 9e 45 20 00 9c 	cmpl   $0x1f9c,0x20459e(%rip)        # 606124 <gets_cnt>
  401b83:	1f 00 00 
  401b86:	0f 8f ad 00 00 00    	jg     401c39 <notify_server+0xd5>
  401b8c:	44 0f be 0d 94 45 20 	movsbl 0x204594(%rip),%r9d        # 606128 <target_prefix>
  401b93:	00 
  401b94:	83 3d ed 38 20 00 00 	cmpl   $0x0,0x2038ed(%rip)        # 605488 <notify>
  401b9b:	0f 84 b1 00 00 00    	je     401c52 <notify_server+0xee>
  401ba1:	44 8b 05 58 39 20 00 	mov    0x203958(%rip),%r8d        # 605500 <authkey>
  401ba8:	85 db                	test   %ebx,%ebx
  401baa:	0f 84 ad 00 00 00    	je     401c5d <notify_server+0xf9>
  401bb0:	bd 0e 32 40 00       	mov    $0x40320e,%ebp
  401bb5:	68 20 55 60 00       	pushq  $0x605520
  401bba:	56                   	push   %rsi
  401bbb:	48 89 e9             	mov    %rbp,%rcx
  401bbe:	8b 15 84 35 20 00    	mov    0x203584(%rip),%edx        # 605148 <target_id>
  401bc4:	be 13 32 40 00       	mov    $0x403213,%esi
  401bc9:	48 8d bc 24 10 20 00 	lea    0x2010(%rsp),%rdi
  401bd0:	00 
  401bd1:	b8 00 00 00 00       	mov    $0x0,%eax
  401bd6:	e8 55 f2 ff ff       	callq  400e30 <sprintf@plt>
  401bdb:	48 83 c4 10          	add    $0x10,%rsp
  401bdf:	83 3d a2 38 20 00 00 	cmpl   $0x0,0x2038a2(%rip)        # 605488 <notify>
  401be6:	0f 84 ab 00 00 00    	je     401c97 <notify_server+0x133>
  401bec:	85 db                	test   %ebx,%ebx
  401bee:	0f 84 8f 00 00 00    	je     401c83 <notify_server+0x11f>
  401bf4:	49 89 e1             	mov    %rsp,%r9
  401bf7:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401bfd:	48 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%rcx
  401c04:	00 
  401c05:	48 8b 15 44 35 20 00 	mov    0x203544(%rip),%rdx        # 605150 <lab>
  401c0c:	48 8b 35 45 35 20 00 	mov    0x203545(%rip),%rsi        # 605158 <course>
  401c13:	48 8b 3d 26 35 20 00 	mov    0x203526(%rip),%rdi        # 605140 <user_id>
  401c1a:	e8 e5 0f 00 00       	callq  402c04 <driver_post>
  401c1f:	85 c0                	test   %eax,%eax
  401c21:	78 44                	js     401c67 <notify_server+0x103>
  401c23:	bf 58 33 40 00       	mov    $0x403358,%edi
  401c28:	e8 a3 f0 ff ff       	callq  400cd0 <puts@plt>
  401c2d:	bf 3b 32 40 00       	mov    $0x40323b,%edi
  401c32:	e8 99 f0 ff ff       	callq  400cd0 <puts@plt>
  401c37:	eb 54                	jmp    401c8d <notify_server+0x129>
  401c39:	bf 28 33 40 00       	mov    $0x403328,%edi
  401c3e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c43:	e8 b8 f0 ff ff       	callq  400d00 <printf@plt>
  401c48:	bf 01 00 00 00       	mov    $0x1,%edi
  401c4d:	e8 ee f1 ff ff       	callq  400e40 <exit@plt>
  401c52:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401c58:	e9 4b ff ff ff       	jmpq   401ba8 <notify_server+0x44>
  401c5d:	bd 09 32 40 00       	mov    $0x403209,%ebp
  401c62:	e9 4e ff ff ff       	jmpq   401bb5 <notify_server+0x51>
  401c67:	48 89 e6             	mov    %rsp,%rsi
  401c6a:	bf 2f 32 40 00       	mov    $0x40322f,%edi
  401c6f:	b8 00 00 00 00       	mov    $0x0,%eax
  401c74:	e8 87 f0 ff ff       	callq  400d00 <printf@plt>
  401c79:	bf 01 00 00 00       	mov    $0x1,%edi
  401c7e:	e8 bd f1 ff ff       	callq  400e40 <exit@plt>
  401c83:	bf 45 32 40 00       	mov    $0x403245,%edi
  401c88:	e8 43 f0 ff ff       	callq  400cd0 <puts@plt>
  401c8d:	48 81 c4 08 40 00 00 	add    $0x4008,%rsp
  401c94:	5b                   	pop    %rbx
  401c95:	5d                   	pop    %rbp
  401c96:	c3                   	retq   
  401c97:	48 89 ee             	mov    %rbp,%rsi
  401c9a:	bf 90 33 40 00       	mov    $0x403390,%edi
  401c9f:	b8 00 00 00 00       	mov    $0x0,%eax
  401ca4:	e8 57 f0 ff ff       	callq  400d00 <printf@plt>
  401ca9:	48 8b 35 90 34 20 00 	mov    0x203490(%rip),%rsi        # 605140 <user_id>
  401cb0:	bf 4c 32 40 00       	mov    $0x40324c,%edi
  401cb5:	b8 00 00 00 00       	mov    $0x0,%eax
  401cba:	e8 41 f0 ff ff       	callq  400d00 <printf@plt>
  401cbf:	48 8b 35 92 34 20 00 	mov    0x203492(%rip),%rsi        # 605158 <course>
  401cc6:	bf 59 32 40 00       	mov    $0x403259,%edi
  401ccb:	b8 00 00 00 00       	mov    $0x0,%eax
  401cd0:	e8 2b f0 ff ff       	callq  400d00 <printf@plt>
  401cd5:	48 8b 35 74 34 20 00 	mov    0x203474(%rip),%rsi        # 605150 <lab>
  401cdc:	bf 65 32 40 00       	mov    $0x403265,%edi
  401ce1:	b8 00 00 00 00       	mov    $0x0,%eax
  401ce6:	e8 15 f0 ff ff       	callq  400d00 <printf@plt>
  401ceb:	48 8d b4 24 00 20 00 	lea    0x2000(%rsp),%rsi
  401cf2:	00 
  401cf3:	bf 6e 32 40 00       	mov    $0x40326e,%edi
  401cf8:	b8 00 00 00 00       	mov    $0x0,%eax
  401cfd:	e8 fe ef ff ff       	callq  400d00 <printf@plt>
  401d02:	eb 89                	jmp    401c8d <notify_server+0x129>
  401d04:	c3                   	retq   

0000000000401d05 <validate>:
  401d05:	53                   	push   %rbx
  401d06:	89 fb                	mov    %edi,%ebx
  401d08:	83 3d f9 37 20 00 00 	cmpl   $0x0,0x2037f9(%rip)        # 605508 <is_checker>
  401d0f:	74 60                	je     401d71 <validate+0x6c>
  401d11:	39 3d e5 37 20 00    	cmp    %edi,0x2037e5(%rip)        # 6054fc <vlevel>
  401d17:	75 29                	jne    401d42 <validate+0x3d>
  401d19:	8b 35 d9 37 20 00    	mov    0x2037d9(%rip),%esi        # 6054f8 <check_level>
  401d1f:	39 fe                	cmp    %edi,%esi
  401d21:	75 33                	jne    401d56 <validate+0x51>
  401d23:	0f be 35 fe 43 20 00 	movsbl 0x2043fe(%rip),%esi        # 606128 <target_prefix>
  401d2a:	b9 20 55 60 00       	mov    $0x605520,%ecx
  401d2f:	89 fa                	mov    %edi,%edx
  401d31:	bf 98 32 40 00       	mov    $0x403298,%edi
  401d36:	b8 00 00 00 00       	mov    $0x0,%eax
  401d3b:	e8 c0 ef ff ff       	callq  400d00 <printf@plt>
  401d40:	5b                   	pop    %rbx
  401d41:	c3                   	retq   
  401d42:	bf 7a 32 40 00       	mov    $0x40327a,%edi
  401d47:	e8 84 ef ff ff       	callq  400cd0 <puts@plt>
  401d4c:	b8 00 00 00 00       	mov    $0x0,%eax
  401d51:	e8 8d fd ff ff       	callq  401ae3 <check_fail>
  401d56:	89 fa                	mov    %edi,%edx
  401d58:	bf b8 33 40 00       	mov    $0x4033b8,%edi
  401d5d:	b8 00 00 00 00       	mov    $0x0,%eax
  401d62:	e8 99 ef ff ff       	callq  400d00 <printf@plt>
  401d67:	b8 00 00 00 00       	mov    $0x0,%eax
  401d6c:	e8 72 fd ff ff       	callq  401ae3 <check_fail>
  401d71:	39 3d 85 37 20 00    	cmp    %edi,0x203785(%rip)        # 6054fc <vlevel>
  401d77:	74 18                	je     401d91 <validate+0x8c>
  401d79:	bf 7a 32 40 00       	mov    $0x40327a,%edi
  401d7e:	e8 4d ef ff ff       	callq  400cd0 <puts@plt>
  401d83:	89 de                	mov    %ebx,%esi
  401d85:	bf 00 00 00 00       	mov    $0x0,%edi
  401d8a:	e8 d5 fd ff ff       	callq  401b64 <notify_server>
  401d8f:	eb af                	jmp    401d40 <validate+0x3b>
  401d91:	0f be 15 90 43 20 00 	movsbl 0x204390(%rip),%edx        # 606128 <target_prefix>
  401d98:	89 fe                	mov    %edi,%esi
  401d9a:	bf e0 33 40 00       	mov    $0x4033e0,%edi
  401d9f:	b8 00 00 00 00       	mov    $0x0,%eax
  401da4:	e8 57 ef ff ff       	callq  400d00 <printf@plt>
  401da9:	89 de                	mov    %ebx,%esi
  401dab:	bf 01 00 00 00       	mov    $0x1,%edi
  401db0:	e8 af fd ff ff       	callq  401b64 <notify_server>
  401db5:	eb 89                	jmp    401d40 <validate+0x3b>

0000000000401db7 <fail>:
  401db7:	48 83 ec 08          	sub    $0x8,%rsp
  401dbb:	83 3d 46 37 20 00 00 	cmpl   $0x0,0x203746(%rip)        # 605508 <is_checker>
  401dc2:	75 11                	jne    401dd5 <fail+0x1e>
  401dc4:	89 fe                	mov    %edi,%esi
  401dc6:	bf 00 00 00 00       	mov    $0x0,%edi
  401dcb:	e8 94 fd ff ff       	callq  401b64 <notify_server>
  401dd0:	48 83 c4 08          	add    $0x8,%rsp
  401dd4:	c3                   	retq   
  401dd5:	b8 00 00 00 00       	mov    $0x0,%eax
  401dda:	e8 04 fd ff ff       	callq  401ae3 <check_fail>

0000000000401ddf <bushandler>:
  401ddf:	48 83 ec 08          	sub    $0x8,%rsp
  401de3:	83 3d 1e 37 20 00 00 	cmpl   $0x0,0x20371e(%rip)        # 605508 <is_checker>
  401dea:	74 14                	je     401e00 <bushandler+0x21>
  401dec:	bf ad 32 40 00       	mov    $0x4032ad,%edi
  401df1:	e8 da ee ff ff       	callq  400cd0 <puts@plt>
  401df6:	b8 00 00 00 00       	mov    $0x0,%eax
  401dfb:	e8 e3 fc ff ff       	callq  401ae3 <check_fail>
  401e00:	bf 18 34 40 00       	mov    $0x403418,%edi
  401e05:	e8 c6 ee ff ff       	callq  400cd0 <puts@plt>
  401e0a:	bf b7 32 40 00       	mov    $0x4032b7,%edi
  401e0f:	e8 bc ee ff ff       	callq  400cd0 <puts@plt>
  401e14:	be 00 00 00 00       	mov    $0x0,%esi
  401e19:	bf 00 00 00 00       	mov    $0x0,%edi
  401e1e:	e8 41 fd ff ff       	callq  401b64 <notify_server>
  401e23:	bf 01 00 00 00       	mov    $0x1,%edi
  401e28:	e8 13 f0 ff ff       	callq  400e40 <exit@plt>

0000000000401e2d <seghandler>:
  401e2d:	48 83 ec 08          	sub    $0x8,%rsp
  401e31:	83 3d d0 36 20 00 00 	cmpl   $0x0,0x2036d0(%rip)        # 605508 <is_checker>
  401e38:	74 14                	je     401e4e <seghandler+0x21>
  401e3a:	bf cd 32 40 00       	mov    $0x4032cd,%edi
  401e3f:	e8 8c ee ff ff       	callq  400cd0 <puts@plt>
  401e44:	b8 00 00 00 00       	mov    $0x0,%eax
  401e49:	e8 95 fc ff ff       	callq  401ae3 <check_fail>
  401e4e:	bf 38 34 40 00       	mov    $0x403438,%edi
  401e53:	e8 78 ee ff ff       	callq  400cd0 <puts@plt>
  401e58:	bf b7 32 40 00       	mov    $0x4032b7,%edi
  401e5d:	e8 6e ee ff ff       	callq  400cd0 <puts@plt>
  401e62:	be 00 00 00 00       	mov    $0x0,%esi
  401e67:	bf 00 00 00 00       	mov    $0x0,%edi
  401e6c:	e8 f3 fc ff ff       	callq  401b64 <notify_server>
  401e71:	bf 01 00 00 00       	mov    $0x1,%edi
  401e76:	e8 c5 ef ff ff       	callq  400e40 <exit@plt>

0000000000401e7b <illegalhandler>:
  401e7b:	48 83 ec 08          	sub    $0x8,%rsp
  401e7f:	83 3d 82 36 20 00 00 	cmpl   $0x0,0x203682(%rip)        # 605508 <is_checker>
  401e86:	74 14                	je     401e9c <illegalhandler+0x21>
  401e88:	bf e0 32 40 00       	mov    $0x4032e0,%edi
  401e8d:	e8 3e ee ff ff       	callq  400cd0 <puts@plt>
  401e92:	b8 00 00 00 00       	mov    $0x0,%eax
  401e97:	e8 47 fc ff ff       	callq  401ae3 <check_fail>
  401e9c:	bf 60 34 40 00       	mov    $0x403460,%edi
  401ea1:	e8 2a ee ff ff       	callq  400cd0 <puts@plt>
  401ea6:	bf b7 32 40 00       	mov    $0x4032b7,%edi
  401eab:	e8 20 ee ff ff       	callq  400cd0 <puts@plt>
  401eb0:	be 00 00 00 00       	mov    $0x0,%esi
  401eb5:	bf 00 00 00 00       	mov    $0x0,%edi
  401eba:	e8 a5 fc ff ff       	callq  401b64 <notify_server>
  401ebf:	bf 01 00 00 00       	mov    $0x1,%edi
  401ec4:	e8 77 ef ff ff       	callq  400e40 <exit@plt>

0000000000401ec9 <sigalrmhandler>:
  401ec9:	48 83 ec 08          	sub    $0x8,%rsp
  401ecd:	83 3d 34 36 20 00 00 	cmpl   $0x0,0x203634(%rip)        # 605508 <is_checker>
  401ed4:	74 14                	je     401eea <sigalrmhandler+0x21>
  401ed6:	bf f4 32 40 00       	mov    $0x4032f4,%edi
  401edb:	e8 f0 ed ff ff       	callq  400cd0 <puts@plt>
  401ee0:	b8 00 00 00 00       	mov    $0x0,%eax
  401ee5:	e8 f9 fb ff ff       	callq  401ae3 <check_fail>
  401eea:	be 05 00 00 00       	mov    $0x5,%esi
  401eef:	bf 90 34 40 00       	mov    $0x403490,%edi
  401ef4:	b8 00 00 00 00       	mov    $0x0,%eax
  401ef9:	e8 02 ee ff ff       	callq  400d00 <printf@plt>
  401efe:	be 00 00 00 00       	mov    $0x0,%esi
  401f03:	bf 00 00 00 00       	mov    $0x0,%edi
  401f08:	e8 57 fc ff ff       	callq  401b64 <notify_server>
  401f0d:	bf 01 00 00 00       	mov    $0x1,%edi
  401f12:	e8 29 ef ff ff       	callq  400e40 <exit@plt>

0000000000401f17 <launch>:
  401f17:	55                   	push   %rbp
  401f18:	48 89 e5             	mov    %rsp,%rbp
  401f1b:	48 89 fa             	mov    %rdi,%rdx
  401f1e:	48 8d 47 17          	lea    0x17(%rdi),%rax
  401f22:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401f26:	48 29 c4             	sub    %rax,%rsp
  401f29:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401f2e:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401f32:	be f4 00 00 00       	mov    $0xf4,%esi
  401f37:	e8 d4 ed ff ff       	callq  400d10 <memset@plt>
  401f3c:	48 8b 05 5d 35 20 00 	mov    0x20355d(%rip),%rax        # 6054a0 <stdin@@GLIBC_2.2.5>
  401f43:	48 39 05 a6 35 20 00 	cmp    %rax,0x2035a6(%rip)        # 6054f0 <infile>
  401f4a:	74 29                	je     401f75 <launch+0x5e>
  401f4c:	c7 05 a6 35 20 00 00 	movl   $0x0,0x2035a6(%rip)        # 6054fc <vlevel>
  401f53:	00 00 00 
  401f56:	b8 00 00 00 00       	mov    $0x0,%eax
  401f5b:	e8 d4 f9 ff ff       	callq  401934 <test>
  401f60:	83 3d a1 35 20 00 00 	cmpl   $0x0,0x2035a1(%rip)        # 605508 <is_checker>
  401f67:	75 1d                	jne    401f86 <launch+0x6f>
  401f69:	bf 14 33 40 00       	mov    $0x403314,%edi
  401f6e:	e8 5d ed ff ff       	callq  400cd0 <puts@plt>
  401f73:	c9                   	leaveq 
  401f74:	c3                   	retq   
  401f75:	bf fc 32 40 00       	mov    $0x4032fc,%edi
  401f7a:	b8 00 00 00 00       	mov    $0x0,%eax
  401f7f:	e8 7c ed ff ff       	callq  400d00 <printf@plt>
  401f84:	eb c6                	jmp    401f4c <launch+0x35>
  401f86:	bf 09 33 40 00       	mov    $0x403309,%edi
  401f8b:	e8 40 ed ff ff       	callq  400cd0 <puts@plt>
  401f90:	b8 00 00 00 00       	mov    $0x0,%eax
  401f95:	e8 49 fb ff ff       	callq  401ae3 <check_fail>

0000000000401f9a <stable_launch>:
  401f9a:	53                   	push   %rbx
  401f9b:	48 89 3d 46 35 20 00 	mov    %rdi,0x203546(%rip)        # 6054e8 <global_offset>
  401fa2:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401fa8:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401fae:	b9 32 01 00 00       	mov    $0x132,%ecx
  401fb3:	ba 07 00 00 00       	mov    $0x7,%edx
  401fb8:	be 00 00 10 00       	mov    $0x100000,%esi
  401fbd:	bf 00 60 58 55       	mov    $0x55586000,%edi
  401fc2:	e8 29 ed ff ff       	callq  400cf0 <mmap@plt>
  401fc7:	48 89 c3             	mov    %rax,%rbx
  401fca:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  401fd0:	75 43                	jne    402015 <stable_launch+0x7b>
  401fd2:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  401fd9:	48 89 15 50 41 20 00 	mov    %rdx,0x204150(%rip)        # 606130 <stack_top>
  401fe0:	48 89 e0             	mov    %rsp,%rax
  401fe3:	48 89 d4             	mov    %rdx,%rsp
  401fe6:	48 89 c2             	mov    %rax,%rdx
  401fe9:	48 89 15 f0 34 20 00 	mov    %rdx,0x2034f0(%rip)        # 6054e0 <global_save_stack>
  401ff0:	48 8b 3d f1 34 20 00 	mov    0x2034f1(%rip),%rdi        # 6054e8 <global_offset>
  401ff7:	e8 1b ff ff ff       	callq  401f17 <launch>
  401ffc:	48 8b 05 dd 34 20 00 	mov    0x2034dd(%rip),%rax        # 6054e0 <global_save_stack>
  402003:	48 89 c4             	mov    %rax,%rsp
  402006:	be 00 00 10 00       	mov    $0x100000,%esi
  40200b:	48 89 df             	mov    %rbx,%rdi
  40200e:	e8 bd ed ff ff       	callq  400dd0 <munmap@plt>
  402013:	5b                   	pop    %rbx
  402014:	c3                   	retq   
  402015:	be 00 00 10 00       	mov    $0x100000,%esi
  40201a:	48 89 c7             	mov    %rax,%rdi
  40201d:	e8 ae ed ff ff       	callq  400dd0 <munmap@plt>
  402022:	ba 00 60 58 55       	mov    $0x55586000,%edx
  402027:	be c8 34 40 00       	mov    $0x4034c8,%esi
  40202c:	48 8b 3d 8d 34 20 00 	mov    0x20348d(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  402033:	b8 00 00 00 00       	mov    $0x0,%eax
  402038:	e8 33 ed ff ff       	callq  400d70 <fprintf@plt>
  40203d:	bf 01 00 00 00       	mov    $0x1,%edi
  402042:	e8 f9 ed ff ff       	callq  400e40 <exit@plt>

0000000000402047 <rio_readinitb>:
  402047:	89 37                	mov    %esi,(%rdi)
  402049:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402050:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402054:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402058:	c3                   	retq   

0000000000402059 <sigalrm_handler>:
  402059:	48 83 ec 08          	sub    $0x8,%rsp
  40205d:	ba 00 00 00 00       	mov    $0x0,%edx
  402062:	be 00 35 40 00       	mov    $0x403500,%esi
  402067:	48 8b 3d 52 34 20 00 	mov    0x203452(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  40206e:	b8 00 00 00 00       	mov    $0x0,%eax
  402073:	e8 f8 ec ff ff       	callq  400d70 <fprintf@plt>
  402078:	bf 01 00 00 00       	mov    $0x1,%edi
  40207d:	e8 be ed ff ff       	callq  400e40 <exit@plt>

0000000000402082 <urlencode>:
  402082:	41 54                	push   %r12
  402084:	55                   	push   %rbp
  402085:	53                   	push   %rbx
  402086:	48 83 ec 10          	sub    $0x10,%rsp
  40208a:	48 89 fb             	mov    %rdi,%rbx
  40208d:	48 89 f5             	mov    %rsi,%rbp
  402090:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402097:	b8 00 00 00 00       	mov    $0x0,%eax
  40209c:	f2 ae                	repnz scas %es:(%rdi),%al
  40209e:	48 89 ce             	mov    %rcx,%rsi
  4020a1:	48 f7 d6             	not    %rsi
  4020a4:	8d 46 ff             	lea    -0x1(%rsi),%eax
  4020a7:	eb 0e                	jmp    4020b7 <urlencode+0x35>
  4020a9:	88 55 00             	mov    %dl,0x0(%rbp)
  4020ac:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4020b0:	48 83 c3 01          	add    $0x1,%rbx
  4020b4:	44 89 e0             	mov    %r12d,%eax
  4020b7:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  4020bb:	85 c0                	test   %eax,%eax
  4020bd:	0f 84 93 00 00 00    	je     402156 <urlencode+0xd4>
  4020c3:	0f b6 13             	movzbl (%rbx),%edx
  4020c6:	80 fa 2a             	cmp    $0x2a,%dl
  4020c9:	0f 94 c1             	sete   %cl
  4020cc:	80 fa 2d             	cmp    $0x2d,%dl
  4020cf:	0f 94 c0             	sete   %al
  4020d2:	08 c1                	or     %al,%cl
  4020d4:	75 d3                	jne    4020a9 <urlencode+0x27>
  4020d6:	80 fa 2e             	cmp    $0x2e,%dl
  4020d9:	74 ce                	je     4020a9 <urlencode+0x27>
  4020db:	80 fa 5f             	cmp    $0x5f,%dl
  4020de:	74 c9                	je     4020a9 <urlencode+0x27>
  4020e0:	8d 42 d0             	lea    -0x30(%rdx),%eax
  4020e3:	3c 09                	cmp    $0x9,%al
  4020e5:	76 c2                	jbe    4020a9 <urlencode+0x27>
  4020e7:	8d 42 bf             	lea    -0x41(%rdx),%eax
  4020ea:	3c 19                	cmp    $0x19,%al
  4020ec:	76 bb                	jbe    4020a9 <urlencode+0x27>
  4020ee:	8d 42 9f             	lea    -0x61(%rdx),%eax
  4020f1:	3c 19                	cmp    $0x19,%al
  4020f3:	76 b4                	jbe    4020a9 <urlencode+0x27>
  4020f5:	80 fa 20             	cmp    $0x20,%dl
  4020f8:	74 4a                	je     402144 <urlencode+0xc2>
  4020fa:	8d 42 e0             	lea    -0x20(%rdx),%eax
  4020fd:	3c 5f                	cmp    $0x5f,%al
  4020ff:	0f 96 c1             	setbe  %cl
  402102:	80 fa 09             	cmp    $0x9,%dl
  402105:	0f 94 c0             	sete   %al
  402108:	08 c1                	or     %al,%cl
  40210a:	74 45                	je     402151 <urlencode+0xcf>
  40210c:	0f b6 d2             	movzbl %dl,%edx
  40210f:	be 98 35 40 00       	mov    $0x403598,%esi
  402114:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  402119:	b8 00 00 00 00       	mov    $0x0,%eax
  40211e:	e8 0d ed ff ff       	callq  400e30 <sprintf@plt>
  402123:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  402128:	88 45 00             	mov    %al,0x0(%rbp)
  40212b:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  402130:	88 45 01             	mov    %al,0x1(%rbp)
  402133:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  402138:	88 45 02             	mov    %al,0x2(%rbp)
  40213b:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40213f:	e9 6c ff ff ff       	jmpq   4020b0 <urlencode+0x2e>
  402144:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402148:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40214c:	e9 5f ff ff ff       	jmpq   4020b0 <urlencode+0x2e>
  402151:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402156:	48 83 c4 10          	add    $0x10,%rsp
  40215a:	5b                   	pop    %rbx
  40215b:	5d                   	pop    %rbp
  40215c:	41 5c                	pop    %r12
  40215e:	c3                   	retq   

000000000040215f <rio_writen>:
  40215f:	41 55                	push   %r13
  402161:	41 54                	push   %r12
  402163:	55                   	push   %rbp
  402164:	53                   	push   %rbx
  402165:	48 83 ec 08          	sub    $0x8,%rsp
  402169:	41 89 fc             	mov    %edi,%r12d
  40216c:	48 89 f5             	mov    %rsi,%rbp
  40216f:	49 89 d5             	mov    %rdx,%r13
  402172:	48 89 d3             	mov    %rdx,%rbx
  402175:	eb 06                	jmp    40217d <rio_writen+0x1e>
  402177:	48 29 c3             	sub    %rax,%rbx
  40217a:	48 01 c5             	add    %rax,%rbp
  40217d:	48 85 db             	test   %rbx,%rbx
  402180:	74 24                	je     4021a6 <rio_writen+0x47>
  402182:	48 89 da             	mov    %rbx,%rdx
  402185:	48 89 ee             	mov    %rbp,%rsi
  402188:	44 89 e7             	mov    %r12d,%edi
  40218b:	e8 50 eb ff ff       	callq  400ce0 <write@plt>
  402190:	48 85 c0             	test   %rax,%rax
  402193:	7f e2                	jg     402177 <rio_writen+0x18>
  402195:	e8 f6 ea ff ff       	callq  400c90 <__errno_location@plt>
  40219a:	83 38 04             	cmpl   $0x4,(%rax)
  40219d:	75 15                	jne    4021b4 <rio_writen+0x55>
  40219f:	b8 00 00 00 00       	mov    $0x0,%eax
  4021a4:	eb d1                	jmp    402177 <rio_writen+0x18>
  4021a6:	4c 89 e8             	mov    %r13,%rax
  4021a9:	48 83 c4 08          	add    $0x8,%rsp
  4021ad:	5b                   	pop    %rbx
  4021ae:	5d                   	pop    %rbp
  4021af:	41 5c                	pop    %r12
  4021b1:	41 5d                	pop    %r13
  4021b3:	c3                   	retq   
  4021b4:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4021bb:	eb ec                	jmp    4021a9 <rio_writen+0x4a>

00000000004021bd <rio_read>:
  4021bd:	41 55                	push   %r13
  4021bf:	41 54                	push   %r12
  4021c1:	55                   	push   %rbp
  4021c2:	53                   	push   %rbx
  4021c3:	48 83 ec 08          	sub    $0x8,%rsp
  4021c7:	48 89 fb             	mov    %rdi,%rbx
  4021ca:	49 89 f5             	mov    %rsi,%r13
  4021cd:	49 89 d4             	mov    %rdx,%r12
  4021d0:	eb 0a                	jmp    4021dc <rio_read+0x1f>
  4021d2:	e8 b9 ea ff ff       	callq  400c90 <__errno_location@plt>
  4021d7:	83 38 04             	cmpl   $0x4,(%rax)
  4021da:	75 5a                	jne    402236 <rio_read+0x79>
  4021dc:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4021df:	85 ed                	test   %ebp,%ebp
  4021e1:	7f 22                	jg     402205 <rio_read+0x48>
  4021e3:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4021e7:	ba 00 20 00 00       	mov    $0x2000,%edx
  4021ec:	48 89 ee             	mov    %rbp,%rsi
  4021ef:	8b 3b                	mov    (%rbx),%edi
  4021f1:	e8 4a eb ff ff       	callq  400d40 <read@plt>
  4021f6:	89 43 04             	mov    %eax,0x4(%rbx)
  4021f9:	85 c0                	test   %eax,%eax
  4021fb:	78 d5                	js     4021d2 <rio_read+0x15>
  4021fd:	74 40                	je     40223f <rio_read+0x82>
  4021ff:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402203:	eb d7                	jmp    4021dc <rio_read+0x1f>
  402205:	89 e8                	mov    %ebp,%eax
  402207:	4c 39 e0             	cmp    %r12,%rax
  40220a:	72 03                	jb     40220f <rio_read+0x52>
  40220c:	44 89 e5             	mov    %r12d,%ebp
  40220f:	4c 63 e5             	movslq %ebp,%r12
  402212:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402216:	4c 89 e2             	mov    %r12,%rdx
  402219:	4c 89 ef             	mov    %r13,%rdi
  40221c:	e8 6f eb ff ff       	callq  400d90 <memcpy@plt>
  402221:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402225:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402228:	4c 89 e0             	mov    %r12,%rax
  40222b:	48 83 c4 08          	add    $0x8,%rsp
  40222f:	5b                   	pop    %rbx
  402230:	5d                   	pop    %rbp
  402231:	41 5c                	pop    %r12
  402233:	41 5d                	pop    %r13
  402235:	c3                   	retq   
  402236:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40223d:	eb ec                	jmp    40222b <rio_read+0x6e>
  40223f:	b8 00 00 00 00       	mov    $0x0,%eax
  402244:	eb e5                	jmp    40222b <rio_read+0x6e>

0000000000402246 <rio_readlineb>:
  402246:	41 55                	push   %r13
  402248:	41 54                	push   %r12
  40224a:	55                   	push   %rbp
  40224b:	53                   	push   %rbx
  40224c:	48 83 ec 18          	sub    $0x18,%rsp
  402250:	49 89 fd             	mov    %rdi,%r13
  402253:	48 89 f5             	mov    %rsi,%rbp
  402256:	49 89 d4             	mov    %rdx,%r12
  402259:	bb 01 00 00 00       	mov    $0x1,%ebx
  40225e:	4c 39 e3             	cmp    %r12,%rbx
  402261:	73 44                	jae    4022a7 <rio_readlineb+0x61>
  402263:	ba 01 00 00 00       	mov    $0x1,%edx
  402268:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40226d:	4c 89 ef             	mov    %r13,%rdi
  402270:	e8 48 ff ff ff       	callq  4021bd <rio_read>
  402275:	83 f8 01             	cmp    $0x1,%eax
  402278:	75 19                	jne    402293 <rio_readlineb+0x4d>
  40227a:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  40227e:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  402283:	88 45 00             	mov    %al,0x0(%rbp)
  402286:	3c 0a                	cmp    $0xa,%al
  402288:	74 1a                	je     4022a4 <rio_readlineb+0x5e>
  40228a:	48 83 c3 01          	add    $0x1,%rbx
  40228e:	48 89 d5             	mov    %rdx,%rbp
  402291:	eb cb                	jmp    40225e <rio_readlineb+0x18>
  402293:	85 c0                	test   %eax,%eax
  402295:	75 22                	jne    4022b9 <rio_readlineb+0x73>
  402297:	48 83 fb 01          	cmp    $0x1,%rbx
  40229b:	75 0a                	jne    4022a7 <rio_readlineb+0x61>
  40229d:	b8 00 00 00 00       	mov    $0x0,%eax
  4022a2:	eb 0a                	jmp    4022ae <rio_readlineb+0x68>
  4022a4:	48 89 d5             	mov    %rdx,%rbp
  4022a7:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4022ab:	48 89 d8             	mov    %rbx,%rax
  4022ae:	48 83 c4 18          	add    $0x18,%rsp
  4022b2:	5b                   	pop    %rbx
  4022b3:	5d                   	pop    %rbp
  4022b4:	41 5c                	pop    %r12
  4022b6:	41 5d                	pop    %r13
  4022b8:	c3                   	retq   
  4022b9:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4022c0:	eb ec                	jmp    4022ae <rio_readlineb+0x68>

00000000004022c2 <submitr>:
  4022c2:	41 57                	push   %r15
  4022c4:	41 56                	push   %r14
  4022c6:	41 55                	push   %r13
  4022c8:	41 54                	push   %r12
  4022ca:	55                   	push   %rbp
  4022cb:	53                   	push   %rbx
  4022cc:	48 81 ec 48 a0 00 00 	sub    $0xa048,%rsp
  4022d3:	49 89 fc             	mov    %rdi,%r12
  4022d6:	89 74 24 04          	mov    %esi,0x4(%rsp)
  4022da:	49 89 d7             	mov    %rdx,%r15
  4022dd:	49 89 ce             	mov    %rcx,%r14
  4022e0:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  4022e5:	4d 89 cd             	mov    %r9,%r13
  4022e8:	48 8b ac 24 80 a0 00 	mov    0xa080(%rsp),%rbp
  4022ef:	00 
  4022f0:	c7 84 24 1c 20 00 00 	movl   $0x0,0x201c(%rsp)
  4022f7:	00 00 00 00 
  4022fb:	ba 00 00 00 00       	mov    $0x0,%edx
  402300:	be 01 00 00 00       	mov    $0x1,%esi
  402305:	bf 02 00 00 00       	mov    $0x2,%edi
  40230a:	e8 61 eb ff ff       	callq  400e70 <socket@plt>
  40230f:	85 c0                	test   %eax,%eax
  402311:	0f 88 8f 02 00 00    	js     4025a6 <submitr+0x2e4>
  402317:	89 c3                	mov    %eax,%ebx
  402319:	4c 89 e7             	mov    %r12,%rdi
  40231c:	e8 3f ea ff ff       	callq  400d60 <gethostbyname@plt>
  402321:	48 85 c0             	test   %rax,%rax
  402324:	0f 84 c8 02 00 00    	je     4025f2 <submitr+0x330>
  40232a:	48 c7 84 24 32 a0 00 	movq   $0x0,0xa032(%rsp)
  402331:	00 00 00 00 00 
  402336:	c7 84 24 3a a0 00 00 	movl   $0x0,0xa03a(%rsp)
  40233d:	00 00 00 00 
  402341:	66 c7 84 24 3e a0 00 	movw   $0x0,0xa03e(%rsp)
  402348:	00 00 00 
  40234b:	66 c7 84 24 30 a0 00 	movw   $0x2,0xa030(%rsp)
  402352:	00 02 00 
  402355:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402359:	48 63 50 14          	movslq 0x14(%rax),%rdx
  40235d:	48 8d bc 24 34 a0 00 	lea    0xa034(%rsp),%rdi
  402364:	00 
  402365:	48 8b 31             	mov    (%rcx),%rsi
  402368:	e8 73 ea ff ff       	callq  400de0 <memmove@plt>
  40236d:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
  402372:	66 c1 c0 08          	rol    $0x8,%ax
  402376:	66 89 84 24 32 a0 00 	mov    %ax,0xa032(%rsp)
  40237d:	00 
  40237e:	ba 10 00 00 00       	mov    $0x10,%edx
  402383:	48 8d b4 24 30 a0 00 	lea    0xa030(%rsp),%rsi
  40238a:	00 
  40238b:	89 df                	mov    %ebx,%edi
  40238d:	e8 be ea ff ff       	callq  400e50 <connect@plt>
  402392:	85 c0                	test   %eax,%eax
  402394:	0f 88 c0 02 00 00    	js     40265a <submitr+0x398>
  40239a:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  4023a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4023a6:	48 89 f1             	mov    %rsi,%rcx
  4023a9:	4c 89 ef             	mov    %r13,%rdi
  4023ac:	f2 ae                	repnz scas %es:(%rdi),%al
  4023ae:	48 89 ca             	mov    %rcx,%rdx
  4023b1:	48 f7 d2             	not    %rdx
  4023b4:	48 89 f1             	mov    %rsi,%rcx
  4023b7:	4c 89 ff             	mov    %r15,%rdi
  4023ba:	f2 ae                	repnz scas %es:(%rdi),%al
  4023bc:	48 f7 d1             	not    %rcx
  4023bf:	49 89 c8             	mov    %rcx,%r8
  4023c2:	48 89 f1             	mov    %rsi,%rcx
  4023c5:	4c 89 f7             	mov    %r14,%rdi
  4023c8:	f2 ae                	repnz scas %es:(%rdi),%al
  4023ca:	48 f7 d1             	not    %rcx
  4023cd:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  4023d2:	48 89 f1             	mov    %rsi,%rcx
  4023d5:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4023da:	f2 ae                	repnz scas %es:(%rdi),%al
  4023dc:	48 89 c8             	mov    %rcx,%rax
  4023df:	48 f7 d0             	not    %rax
  4023e2:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  4023e7:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  4023ec:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  4023f3:	00 
  4023f4:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4023fa:	0f 87 b4 02 00 00    	ja     4026b4 <submitr+0x3f2>
  402400:	48 8d b4 24 20 40 00 	lea    0x4020(%rsp),%rsi
  402407:	00 
  402408:	b9 00 04 00 00       	mov    $0x400,%ecx
  40240d:	b8 00 00 00 00       	mov    $0x0,%eax
  402412:	48 89 f7             	mov    %rsi,%rdi
  402415:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402418:	4c 89 ef             	mov    %r13,%rdi
  40241b:	e8 62 fc ff ff       	callq  402082 <urlencode>
  402420:	85 c0                	test   %eax,%eax
  402422:	0f 88 ff 02 00 00    	js     402727 <submitr+0x465>
  402428:	4c 8d ac 24 20 60 00 	lea    0x6020(%rsp),%r13
  40242f:	00 
  402430:	4d 89 e1             	mov    %r12,%r9
  402433:	4c 8d 84 24 20 40 00 	lea    0x4020(%rsp),%r8
  40243a:	00 
  40243b:	4c 89 f9             	mov    %r15,%rcx
  40243e:	4c 89 f2             	mov    %r14,%rdx
  402441:	be 28 35 40 00       	mov    $0x403528,%esi
  402446:	4c 89 ef             	mov    %r13,%rdi
  402449:	b8 00 00 00 00       	mov    $0x0,%eax
  40244e:	e8 dd e9 ff ff       	callq  400e30 <sprintf@plt>
  402453:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40245a:	b8 00 00 00 00       	mov    $0x0,%eax
  40245f:	4c 89 ef             	mov    %r13,%rdi
  402462:	f2 ae                	repnz scas %es:(%rdi),%al
  402464:	48 89 ca             	mov    %rcx,%rdx
  402467:	48 f7 d2             	not    %rdx
  40246a:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  40246e:	4c 89 ee             	mov    %r13,%rsi
  402471:	89 df                	mov    %ebx,%edi
  402473:	e8 e7 fc ff ff       	callq  40215f <rio_writen>
  402478:	48 85 c0             	test   %rax,%rax
  40247b:	0f 88 31 03 00 00    	js     4027b2 <submitr+0x4f0>
  402481:	89 de                	mov    %ebx,%esi
  402483:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  40248a:	00 
  40248b:	e8 b7 fb ff ff       	callq  402047 <rio_readinitb>
  402490:	ba 00 20 00 00       	mov    $0x2000,%edx
  402495:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40249c:	00 
  40249d:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  4024a4:	00 
  4024a5:	e8 9c fd ff ff       	callq  402246 <rio_readlineb>
  4024aa:	48 85 c0             	test   %rax,%rax
  4024ad:	0f 8e 6e 03 00 00    	jle    402821 <submitr+0x55f>
  4024b3:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  4024b8:	48 8d 8c 24 1c 20 00 	lea    0x201c(%rsp),%rcx
  4024bf:	00 
  4024c0:	48 8d 94 24 20 20 00 	lea    0x2020(%rsp),%rdx
  4024c7:	00 
  4024c8:	be 9f 35 40 00       	mov    $0x40359f,%esi
  4024cd:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  4024d4:	00 
  4024d5:	b8 00 00 00 00       	mov    $0x0,%eax
  4024da:	e8 e1 e8 ff ff       	callq  400dc0 <__isoc99_sscanf@plt>
  4024df:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4024e6:	00 
  4024e7:	bf b6 35 40 00       	mov    $0x4035b6,%edi
  4024ec:	b9 03 00 00 00       	mov    $0x3,%ecx
  4024f1:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4024f3:	0f 97 c0             	seta   %al
  4024f6:	1c 00                	sbb    $0x0,%al
  4024f8:	84 c0                	test   %al,%al
  4024fa:	0f 84 9f 03 00 00    	je     40289f <submitr+0x5dd>
  402500:	ba 00 20 00 00       	mov    $0x2000,%edx
  402505:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40250c:	00 
  40250d:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  402514:	00 
  402515:	e8 2c fd ff ff       	callq  402246 <rio_readlineb>
  40251a:	48 85 c0             	test   %rax,%rax
  40251d:	7f c0                	jg     4024df <submitr+0x21d>
  40251f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402526:	3a 20 43 
  402529:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402530:	20 75 6e 
  402533:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402537:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40253b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402542:	74 6f 20 
  402545:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  40254c:	68 65 61 
  40254f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402553:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402557:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  40255e:	66 72 6f 
  402561:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  402568:	20 72 65 
  40256b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40256f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402573:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  40257a:	73 65 72 
  40257d:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402581:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  402588:	89 df                	mov    %ebx,%edi
  40258a:	e8 a1 e7 ff ff       	callq  400d30 <close@plt>
  40258f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402594:	48 81 c4 48 a0 00 00 	add    $0xa048,%rsp
  40259b:	5b                   	pop    %rbx
  40259c:	5d                   	pop    %rbp
  40259d:	41 5c                	pop    %r12
  40259f:	41 5d                	pop    %r13
  4025a1:	41 5e                	pop    %r14
  4025a3:	41 5f                	pop    %r15
  4025a5:	c3                   	retq   
  4025a6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4025ad:	3a 20 43 
  4025b0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4025b7:	20 75 6e 
  4025ba:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4025be:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4025c2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4025c9:	74 6f 20 
  4025cc:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  4025d3:	65 20 73 
  4025d6:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4025da:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4025de:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4025e5:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4025eb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025f0:	eb a2                	jmp    402594 <submitr+0x2d2>
  4025f2:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4025f9:	3a 20 44 
  4025fc:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402603:	20 75 6e 
  402606:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40260a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40260e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402615:	74 6f 20 
  402618:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  40261f:	76 65 20 
  402622:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402626:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40262a:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402631:	72 20 61 
  402634:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402638:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  40263f:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402645:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402649:	89 df                	mov    %ebx,%edi
  40264b:	e8 e0 e6 ff ff       	callq  400d30 <close@plt>
  402650:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402655:	e9 3a ff ff ff       	jmpq   402594 <submitr+0x2d2>
  40265a:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402661:	3a 20 55 
  402664:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  40266b:	20 74 6f 
  40266e:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402672:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402676:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40267d:	65 63 74 
  402680:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402687:	68 65 20 
  40268a:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40268e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402692:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  402699:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  40269f:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  4026a3:	89 df                	mov    %ebx,%edi
  4026a5:	e8 86 e6 ff ff       	callq  400d30 <close@plt>
  4026aa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026af:	e9 e0 fe ff ff       	jmpq   402594 <submitr+0x2d2>
  4026b4:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4026bb:	3a 20 52 
  4026be:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  4026c5:	20 73 74 
  4026c8:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4026cc:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4026d0:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4026d7:	74 6f 6f 
  4026da:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  4026e1:	65 2e 20 
  4026e4:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4026e8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4026ec:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4026f3:	61 73 65 
  4026f6:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  4026fd:	49 54 52 
  402700:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402704:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402708:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  40270f:	55 46 00 
  402712:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402716:	89 df                	mov    %ebx,%edi
  402718:	e8 13 e6 ff ff       	callq  400d30 <close@plt>
  40271d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402722:	e9 6d fe ff ff       	jmpq   402594 <submitr+0x2d2>
  402727:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40272e:	3a 20 52 
  402731:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402738:	20 73 74 
  40273b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40273f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402743:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  40274a:	63 6f 6e 
  40274d:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402754:	20 61 6e 
  402757:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40275b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40275f:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402766:	67 61 6c 
  402769:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402770:	6e 70 72 
  402773:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402777:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40277b:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402782:	6c 65 20 
  402785:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  40278c:	63 74 65 
  40278f:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402793:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402797:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  40279d:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  4027a1:	89 df                	mov    %ebx,%edi
  4027a3:	e8 88 e5 ff ff       	callq  400d30 <close@plt>
  4027a8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027ad:	e9 e2 fd ff ff       	jmpq   402594 <submitr+0x2d2>
  4027b2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4027b9:	3a 20 43 
  4027bc:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4027c3:	20 75 6e 
  4027c6:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4027ca:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4027ce:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4027d5:	74 6f 20 
  4027d8:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  4027df:	20 74 6f 
  4027e2:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4027e6:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4027ea:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  4027f1:	72 65 73 
  4027f4:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  4027fb:	65 72 76 
  4027fe:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402802:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402806:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  40280c:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  402810:	89 df                	mov    %ebx,%edi
  402812:	e8 19 e5 ff ff       	callq  400d30 <close@plt>
  402817:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40281c:	e9 73 fd ff ff       	jmpq   402594 <submitr+0x2d2>
  402821:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402828:	3a 20 43 
  40282b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402832:	20 75 6e 
  402835:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402839:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40283d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402844:	74 6f 20 
  402847:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  40284e:	66 69 72 
  402851:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402855:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402859:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402860:	61 64 65 
  402863:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  40286a:	6d 20 72 
  40286d:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402871:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402875:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  40287c:	20 73 65 
  40287f:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402883:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  40288a:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  40288e:	89 df                	mov    %ebx,%edi
  402890:	e8 9b e4 ff ff       	callq  400d30 <close@plt>
  402895:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40289a:	e9 f5 fc ff ff       	jmpq   402594 <submitr+0x2d2>
  40289f:	ba 00 20 00 00       	mov    $0x2000,%edx
  4028a4:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4028ab:	00 
  4028ac:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  4028b3:	00 
  4028b4:	e8 8d f9 ff ff       	callq  402246 <rio_readlineb>
  4028b9:	48 85 c0             	test   %rax,%rax
  4028bc:	0f 8e 91 00 00 00    	jle    402953 <submitr+0x691>
  4028c2:	8b 94 24 1c 20 00 00 	mov    0x201c(%rsp),%edx
  4028c9:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  4028cf:	0f 85 02 01 00 00    	jne    4029d7 <submitr+0x715>
  4028d5:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4028dc:	00 
  4028dd:	48 89 ef             	mov    %rbp,%rdi
  4028e0:	e8 db e3 ff ff       	callq  400cc0 <strcpy@plt>
  4028e5:	89 df                	mov    %ebx,%edi
  4028e7:	e8 44 e4 ff ff       	callq  400d30 <close@plt>
  4028ec:	bf b0 35 40 00       	mov    $0x4035b0,%edi
  4028f1:	b9 04 00 00 00       	mov    $0x4,%ecx
  4028f6:	48 89 ee             	mov    %rbp,%rsi
  4028f9:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4028fb:	0f 97 c0             	seta   %al
  4028fe:	1c 00                	sbb    $0x0,%al
  402900:	0f be c0             	movsbl %al,%eax
  402903:	85 c0                	test   %eax,%eax
  402905:	0f 84 89 fc ff ff    	je     402594 <submitr+0x2d2>
  40290b:	bf b4 35 40 00       	mov    $0x4035b4,%edi
  402910:	b9 05 00 00 00       	mov    $0x5,%ecx
  402915:	48 89 ee             	mov    %rbp,%rsi
  402918:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40291a:	0f 97 c0             	seta   %al
  40291d:	1c 00                	sbb    $0x0,%al
  40291f:	0f be c0             	movsbl %al,%eax
  402922:	85 c0                	test   %eax,%eax
  402924:	0f 84 6a fc ff ff    	je     402594 <submitr+0x2d2>
  40292a:	bf b9 35 40 00       	mov    $0x4035b9,%edi
  40292f:	b9 03 00 00 00       	mov    $0x3,%ecx
  402934:	48 89 ee             	mov    %rbp,%rsi
  402937:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402939:	0f 97 c0             	seta   %al
  40293c:	1c 00                	sbb    $0x0,%al
  40293e:	0f be c0             	movsbl %al,%eax
  402941:	85 c0                	test   %eax,%eax
  402943:	0f 84 4b fc ff ff    	je     402594 <submitr+0x2d2>
  402949:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40294e:	e9 41 fc ff ff       	jmpq   402594 <submitr+0x2d2>
  402953:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40295a:	3a 20 43 
  40295d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402964:	20 75 6e 
  402967:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40296b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40296f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402976:	74 6f 20 
  402979:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402980:	73 74 61 
  402983:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402987:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40298b:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402992:	65 73 73 
  402995:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  40299c:	72 6f 6d 
  40299f:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4029a3:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4029a7:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  4029ae:	6c 74 20 
  4029b1:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4029b5:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  4029bc:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  4029c2:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  4029c6:	89 df                	mov    %ebx,%edi
  4029c8:	e8 63 e3 ff ff       	callq  400d30 <close@plt>
  4029cd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029d2:	e9 bd fb ff ff       	jmpq   402594 <submitr+0x2d2>
  4029d7:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  4029dc:	be 68 35 40 00       	mov    $0x403568,%esi
  4029e1:	48 89 ef             	mov    %rbp,%rdi
  4029e4:	b8 00 00 00 00       	mov    $0x0,%eax
  4029e9:	e8 42 e4 ff ff       	callq  400e30 <sprintf@plt>
  4029ee:	89 df                	mov    %ebx,%edi
  4029f0:	e8 3b e3 ff ff       	callq  400d30 <close@plt>
  4029f5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029fa:	e9 95 fb ff ff       	jmpq   402594 <submitr+0x2d2>

00000000004029ff <init_timeout>:
  4029ff:	85 ff                	test   %edi,%edi
  402a01:	74 24                	je     402a27 <init_timeout+0x28>
  402a03:	53                   	push   %rbx
  402a04:	89 fb                	mov    %edi,%ebx
  402a06:	78 18                	js     402a20 <init_timeout+0x21>
  402a08:	be 59 20 40 00       	mov    $0x402059,%esi
  402a0d:	bf 0e 00 00 00       	mov    $0xe,%edi
  402a12:	e8 39 e3 ff ff       	callq  400d50 <signal@plt>
  402a17:	89 df                	mov    %ebx,%edi
  402a19:	e8 02 e3 ff ff       	callq  400d20 <alarm@plt>
  402a1e:	5b                   	pop    %rbx
  402a1f:	c3                   	retq   
  402a20:	bb 00 00 00 00       	mov    $0x0,%ebx
  402a25:	eb e1                	jmp    402a08 <init_timeout+0x9>
  402a27:	c3                   	retq   

0000000000402a28 <init_driver>:
  402a28:	55                   	push   %rbp
  402a29:	53                   	push   %rbx
  402a2a:	48 83 ec 18          	sub    $0x18,%rsp
  402a2e:	48 89 fd             	mov    %rdi,%rbp
  402a31:	be 01 00 00 00       	mov    $0x1,%esi
  402a36:	bf 0d 00 00 00       	mov    $0xd,%edi
  402a3b:	e8 10 e3 ff ff       	callq  400d50 <signal@plt>
  402a40:	be 01 00 00 00       	mov    $0x1,%esi
  402a45:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402a4a:	e8 01 e3 ff ff       	callq  400d50 <signal@plt>
  402a4f:	be 01 00 00 00       	mov    $0x1,%esi
  402a54:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402a59:	e8 f2 e2 ff ff       	callq  400d50 <signal@plt>
  402a5e:	ba 00 00 00 00       	mov    $0x0,%edx
  402a63:	be 01 00 00 00       	mov    $0x1,%esi
  402a68:	bf 02 00 00 00       	mov    $0x2,%edi
  402a6d:	e8 fe e3 ff ff       	callq  400e70 <socket@plt>
  402a72:	85 c0                	test   %eax,%eax
  402a74:	0f 88 83 00 00 00    	js     402afd <init_driver+0xd5>
  402a7a:	89 c3                	mov    %eax,%ebx
  402a7c:	bf e8 30 40 00       	mov    $0x4030e8,%edi
  402a81:	e8 da e2 ff ff       	callq  400d60 <gethostbyname@plt>
  402a86:	48 85 c0             	test   %rax,%rax
  402a89:	0f 84 ba 00 00 00    	je     402b49 <init_driver+0x121>
  402a8f:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402a96:	00 00 
  402a98:	c7 44 24 0a 00 00 00 	movl   $0x0,0xa(%rsp)
  402a9f:	00 
  402aa0:	66 c7 44 24 0e 00 00 	movw   $0x0,0xe(%rsp)
  402aa7:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402aad:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402ab1:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402ab5:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402aba:	48 8b 31             	mov    (%rcx),%rsi
  402abd:	e8 1e e3 ff ff       	callq  400de0 <memmove@plt>
  402ac2:	66 c7 44 24 02 04 1d 	movw   $0x1d04,0x2(%rsp)
  402ac9:	ba 10 00 00 00       	mov    $0x10,%edx
  402ace:	48 89 e6             	mov    %rsp,%rsi
  402ad1:	89 df                	mov    %ebx,%edi
  402ad3:	e8 78 e3 ff ff       	callq  400e50 <connect@plt>
  402ad8:	85 c0                	test   %eax,%eax
  402ada:	0f 88 d1 00 00 00    	js     402bb1 <init_driver+0x189>
  402ae0:	89 df                	mov    %ebx,%edi
  402ae2:	e8 49 e2 ff ff       	callq  400d30 <close@plt>
  402ae7:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402aed:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402af1:	b8 00 00 00 00       	mov    $0x0,%eax
  402af6:	48 83 c4 18          	add    $0x18,%rsp
  402afa:	5b                   	pop    %rbx
  402afb:	5d                   	pop    %rbp
  402afc:	c3                   	retq   
  402afd:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b04:	3a 20 43 
  402b07:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402b0e:	20 75 6e 
  402b11:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b15:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402b19:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b20:	74 6f 20 
  402b23:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402b2a:	65 20 73 
  402b2d:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b31:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b35:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402b3c:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402b42:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b47:	eb ad                	jmp    402af6 <init_driver+0xce>
  402b49:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402b50:	3a 20 44 
  402b53:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402b5a:	20 75 6e 
  402b5d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b61:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402b65:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b6c:	74 6f 20 
  402b6f:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402b76:	76 65 20 
  402b79:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b7d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b81:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402b88:	72 20 61 
  402b8b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402b8f:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402b96:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402b9c:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402ba0:	89 df                	mov    %ebx,%edi
  402ba2:	e8 89 e1 ff ff       	callq  400d30 <close@plt>
  402ba7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bac:	e9 45 ff ff ff       	jmpq   402af6 <init_driver+0xce>
  402bb1:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402bb8:	3a 20 55 
  402bbb:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402bc2:	20 74 6f 
  402bc5:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402bc9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402bcd:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402bd4:	65 63 74 
  402bd7:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  402bde:	65 72 76 
  402be1:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402be5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402be9:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402bef:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402bf3:	89 df                	mov    %ebx,%edi
  402bf5:	e8 36 e1 ff ff       	callq  400d30 <close@plt>
  402bfa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bff:	e9 f2 fe ff ff       	jmpq   402af6 <init_driver+0xce>

0000000000402c04 <driver_post>:
  402c04:	53                   	push   %rbx
  402c05:	4c 89 cb             	mov    %r9,%rbx
  402c08:	45 85 c0             	test   %r8d,%r8d
  402c0b:	75 18                	jne    402c25 <driver_post+0x21>
  402c0d:	48 85 ff             	test   %rdi,%rdi
  402c10:	74 05                	je     402c17 <driver_post+0x13>
  402c12:	80 3f 00             	cmpb   $0x0,(%rdi)
  402c15:	75 30                	jne    402c47 <driver_post+0x43>
  402c17:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402c1c:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402c20:	44 89 c0             	mov    %r8d,%eax
  402c23:	5b                   	pop    %rbx
  402c24:	c3                   	retq   
  402c25:	48 89 ce             	mov    %rcx,%rsi
  402c28:	bf bc 35 40 00       	mov    $0x4035bc,%edi
  402c2d:	b8 00 00 00 00       	mov    $0x0,%eax
  402c32:	e8 c9 e0 ff ff       	callq  400d00 <printf@plt>
  402c37:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402c3c:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402c40:	b8 00 00 00 00       	mov    $0x0,%eax
  402c45:	eb dc                	jmp    402c23 <driver_post+0x1f>
  402c47:	48 83 ec 08          	sub    $0x8,%rsp
  402c4b:	41 51                	push   %r9
  402c4d:	49 89 c9             	mov    %rcx,%r9
  402c50:	49 89 d0             	mov    %rdx,%r8
  402c53:	48 89 f9             	mov    %rdi,%rcx
  402c56:	48 89 f2             	mov    %rsi,%rdx
  402c59:	be 1d 04 00 00       	mov    $0x41d,%esi
  402c5e:	bf e8 30 40 00       	mov    $0x4030e8,%edi
  402c63:	e8 5a f6 ff ff       	callq  4022c2 <submitr>
  402c68:	48 83 c4 10          	add    $0x10,%rsp
  402c6c:	eb b5                	jmp    402c23 <driver_post+0x1f>

0000000000402c6e <check>:
  402c6e:	89 f8                	mov    %edi,%eax
  402c70:	c1 e8 1c             	shr    $0x1c,%eax
  402c73:	74 1d                	je     402c92 <check+0x24>
  402c75:	b9 00 00 00 00       	mov    $0x0,%ecx
  402c7a:	83 f9 1f             	cmp    $0x1f,%ecx
  402c7d:	7f 0d                	jg     402c8c <check+0x1e>
  402c7f:	89 f8                	mov    %edi,%eax
  402c81:	d3 e8                	shr    %cl,%eax
  402c83:	3c 0a                	cmp    $0xa,%al
  402c85:	74 11                	je     402c98 <check+0x2a>
  402c87:	83 c1 08             	add    $0x8,%ecx
  402c8a:	eb ee                	jmp    402c7a <check+0xc>
  402c8c:	b8 01 00 00 00       	mov    $0x1,%eax
  402c91:	c3                   	retq   
  402c92:	b8 00 00 00 00       	mov    $0x0,%eax
  402c97:	c3                   	retq   
  402c98:	b8 00 00 00 00       	mov    $0x0,%eax
  402c9d:	c3                   	retq   

0000000000402c9e <gencookie>:
  402c9e:	53                   	push   %rbx
  402c9f:	83 c7 01             	add    $0x1,%edi
  402ca2:	e8 f9 df ff ff       	callq  400ca0 <srandom@plt>
  402ca7:	e8 04 e1 ff ff       	callq  400db0 <random@plt>
  402cac:	89 c3                	mov    %eax,%ebx
  402cae:	89 c7                	mov    %eax,%edi
  402cb0:	e8 b9 ff ff ff       	callq  402c6e <check>
  402cb5:	85 c0                	test   %eax,%eax
  402cb7:	74 ee                	je     402ca7 <gencookie+0x9>
  402cb9:	89 d8                	mov    %ebx,%eax
  402cbb:	5b                   	pop    %rbx
  402cbc:	c3                   	retq   
  402cbd:	0f 1f 00             	nopl   (%rax)

0000000000402cc0 <__libc_csu_init>:
  402cc0:	f3 0f 1e fa          	endbr64 
  402cc4:	41 57                	push   %r15
  402cc6:	49 89 d7             	mov    %rdx,%r15
  402cc9:	41 56                	push   %r14
  402ccb:	49 89 f6             	mov    %rsi,%r14
  402cce:	41 55                	push   %r13
  402cd0:	41 89 fd             	mov    %edi,%r13d
  402cd3:	41 54                	push   %r12
  402cd5:	4c 8d 25 24 21 20 00 	lea    0x202124(%rip),%r12        # 604e00 <__frame_dummy_init_array_entry>
  402cdc:	55                   	push   %rbp
  402cdd:	48 8d 2d 24 21 20 00 	lea    0x202124(%rip),%rbp        # 604e08 <__init_array_end>
  402ce4:	53                   	push   %rbx
  402ce5:	4c 29 e5             	sub    %r12,%rbp
  402ce8:	48 83 ec 08          	sub    $0x8,%rsp
  402cec:	e8 57 df ff ff       	callq  400c48 <_init>
  402cf1:	48 c1 fd 03          	sar    $0x3,%rbp
  402cf5:	74 1f                	je     402d16 <__libc_csu_init+0x56>
  402cf7:	31 db                	xor    %ebx,%ebx
  402cf9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402d00:	4c 89 fa             	mov    %r15,%rdx
  402d03:	4c 89 f6             	mov    %r14,%rsi
  402d06:	44 89 ef             	mov    %r13d,%edi
  402d09:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402d0d:	48 83 c3 01          	add    $0x1,%rbx
  402d11:	48 39 dd             	cmp    %rbx,%rbp
  402d14:	75 ea                	jne    402d00 <__libc_csu_init+0x40>
  402d16:	48 83 c4 08          	add    $0x8,%rsp
  402d1a:	5b                   	pop    %rbx
  402d1b:	5d                   	pop    %rbp
  402d1c:	41 5c                	pop    %r12
  402d1e:	41 5d                	pop    %r13
  402d20:	41 5e                	pop    %r14
  402d22:	41 5f                	pop    %r15
  402d24:	c3                   	retq   

0000000000402d25 <.annobin___libc_csu_fini.start>:
  402d25:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  402d2c:	00 00 00 00 

0000000000402d30 <__libc_csu_fini>:
  402d30:	f3 0f 1e fa          	endbr64 
  402d34:	c3                   	retq   

Disassembly of section .fini:

0000000000402d38 <_fini>:
  402d38:	f3 0f 1e fa          	endbr64 
  402d3c:	48 83 ec 08          	sub    $0x8,%rsp
  402d40:	48 83 c4 08          	add    $0x8,%rsp
  402d44:	c3                   	retq   
