
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400c48 <_init>:
  400c48:	f3 0f 1e fa          	endbr64 
  400c4c:	48 83 ec 08          	sub    $0x8,%rsp
  400c50:	48 8b 05 99 33 20 00 	mov    0x203399(%rip),%rax        # 603ff0 <__gmon_start__@Base>
  400c57:	48 85 c0             	test   %rax,%rax
  400c5a:	74 02                	je     400c5e <_init+0x16>
  400c5c:	ff d0                	callq  *%rax
  400c5e:	48 83 c4 08          	add    $0x8,%rsp
  400c62:	c3                   	retq   

Disassembly of section .plt:

0000000000400c70 <.plt>:
  400c70:	ff 35 92 33 20 00    	pushq  0x203392(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c76:	ff 25 94 33 20 00    	jmpq   *0x203394(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c80 <strcasecmp@plt>:
  400c80:	ff 25 92 33 20 00    	jmpq   *0x203392(%rip)        # 604018 <strcasecmp@GLIBC_2.2.5>
  400c86:	68 00 00 00 00       	pushq  $0x0
  400c8b:	e9 e0 ff ff ff       	jmpq   400c70 <.plt>

0000000000400c90 <__errno_location@plt>:
  400c90:	ff 25 8a 33 20 00    	jmpq   *0x20338a(%rip)        # 604020 <__errno_location@GLIBC_2.2.5>
  400c96:	68 01 00 00 00       	pushq  $0x1
  400c9b:	e9 d0 ff ff ff       	jmpq   400c70 <.plt>

0000000000400ca0 <srandom@plt>:
  400ca0:	ff 25 82 33 20 00    	jmpq   *0x203382(%rip)        # 604028 <srandom@GLIBC_2.2.5>
  400ca6:	68 02 00 00 00       	pushq  $0x2
  400cab:	e9 c0 ff ff ff       	jmpq   400c70 <.plt>

0000000000400cb0 <strncmp@plt>:
  400cb0:	ff 25 7a 33 20 00    	jmpq   *0x20337a(%rip)        # 604030 <strncmp@GLIBC_2.2.5>
  400cb6:	68 03 00 00 00       	pushq  $0x3
  400cbb:	e9 b0 ff ff ff       	jmpq   400c70 <.plt>

0000000000400cc0 <strcpy@plt>:
  400cc0:	ff 25 72 33 20 00    	jmpq   *0x203372(%rip)        # 604038 <strcpy@GLIBC_2.2.5>
  400cc6:	68 04 00 00 00       	pushq  $0x4
  400ccb:	e9 a0 ff ff ff       	jmpq   400c70 <.plt>

0000000000400cd0 <puts@plt>:
  400cd0:	ff 25 6a 33 20 00    	jmpq   *0x20336a(%rip)        # 604040 <puts@GLIBC_2.2.5>
  400cd6:	68 05 00 00 00       	pushq  $0x5
  400cdb:	e9 90 ff ff ff       	jmpq   400c70 <.plt>

0000000000400ce0 <write@plt>:
  400ce0:	ff 25 62 33 20 00    	jmpq   *0x203362(%rip)        # 604048 <write@GLIBC_2.2.5>
  400ce6:	68 06 00 00 00       	pushq  $0x6
  400ceb:	e9 80 ff ff ff       	jmpq   400c70 <.plt>

0000000000400cf0 <mmap@plt>:
  400cf0:	ff 25 5a 33 20 00    	jmpq   *0x20335a(%rip)        # 604050 <mmap@GLIBC_2.2.5>
  400cf6:	68 07 00 00 00       	pushq  $0x7
  400cfb:	e9 70 ff ff ff       	jmpq   400c70 <.plt>

0000000000400d00 <printf@plt>:
  400d00:	ff 25 52 33 20 00    	jmpq   *0x203352(%rip)        # 604058 <printf@GLIBC_2.2.5>
  400d06:	68 08 00 00 00       	pushq  $0x8
  400d0b:	e9 60 ff ff ff       	jmpq   400c70 <.plt>

0000000000400d10 <memset@plt>:
  400d10:	ff 25 4a 33 20 00    	jmpq   *0x20334a(%rip)        # 604060 <memset@GLIBC_2.2.5>
  400d16:	68 09 00 00 00       	pushq  $0x9
  400d1b:	e9 50 ff ff ff       	jmpq   400c70 <.plt>

0000000000400d20 <alarm@plt>:
  400d20:	ff 25 42 33 20 00    	jmpq   *0x203342(%rip)        # 604068 <alarm@GLIBC_2.2.5>
  400d26:	68 0a 00 00 00       	pushq  $0xa
  400d2b:	e9 40 ff ff ff       	jmpq   400c70 <.plt>

0000000000400d30 <close@plt>:
  400d30:	ff 25 3a 33 20 00    	jmpq   *0x20333a(%rip)        # 604070 <close@GLIBC_2.2.5>
  400d36:	68 0b 00 00 00       	pushq  $0xb
  400d3b:	e9 30 ff ff ff       	jmpq   400c70 <.plt>

0000000000400d40 <read@plt>:
  400d40:	ff 25 32 33 20 00    	jmpq   *0x203332(%rip)        # 604078 <read@GLIBC_2.2.5>
  400d46:	68 0c 00 00 00       	pushq  $0xc
  400d4b:	e9 20 ff ff ff       	jmpq   400c70 <.plt>

0000000000400d50 <signal@plt>:
  400d50:	ff 25 2a 33 20 00    	jmpq   *0x20332a(%rip)        # 604080 <signal@GLIBC_2.2.5>
  400d56:	68 0d 00 00 00       	pushq  $0xd
  400d5b:	e9 10 ff ff ff       	jmpq   400c70 <.plt>

0000000000400d60 <gethostbyname@plt>:
  400d60:	ff 25 22 33 20 00    	jmpq   *0x203322(%rip)        # 604088 <gethostbyname@GLIBC_2.2.5>
  400d66:	68 0e 00 00 00       	pushq  $0xe
  400d6b:	e9 00 ff ff ff       	jmpq   400c70 <.plt>

0000000000400d70 <fprintf@plt>:
  400d70:	ff 25 1a 33 20 00    	jmpq   *0x20331a(%rip)        # 604090 <fprintf@GLIBC_2.2.5>
  400d76:	68 0f 00 00 00       	pushq  $0xf
  400d7b:	e9 f0 fe ff ff       	jmpq   400c70 <.plt>

0000000000400d80 <strtol@plt>:
  400d80:	ff 25 12 33 20 00    	jmpq   *0x203312(%rip)        # 604098 <strtol@GLIBC_2.2.5>
  400d86:	68 10 00 00 00       	pushq  $0x10
  400d8b:	e9 e0 fe ff ff       	jmpq   400c70 <.plt>

0000000000400d90 <memcpy@plt>:
  400d90:	ff 25 0a 33 20 00    	jmpq   *0x20330a(%rip)        # 6040a0 <memcpy@GLIBC_2.14>
  400d96:	68 11 00 00 00       	pushq  $0x11
  400d9b:	e9 d0 fe ff ff       	jmpq   400c70 <.plt>

0000000000400da0 <time@plt>:
  400da0:	ff 25 02 33 20 00    	jmpq   *0x203302(%rip)        # 6040a8 <time@GLIBC_2.2.5>
  400da6:	68 12 00 00 00       	pushq  $0x12
  400dab:	e9 c0 fe ff ff       	jmpq   400c70 <.plt>

0000000000400db0 <random@plt>:
  400db0:	ff 25 fa 32 20 00    	jmpq   *0x2032fa(%rip)        # 6040b0 <random@GLIBC_2.2.5>
  400db6:	68 13 00 00 00       	pushq  $0x13
  400dbb:	e9 b0 fe ff ff       	jmpq   400c70 <.plt>

0000000000400dc0 <__isoc99_sscanf@plt>:
  400dc0:	ff 25 f2 32 20 00    	jmpq   *0x2032f2(%rip)        # 6040b8 <__isoc99_sscanf@GLIBC_2.7>
  400dc6:	68 14 00 00 00       	pushq  $0x14
  400dcb:	e9 a0 fe ff ff       	jmpq   400c70 <.plt>

0000000000400dd0 <munmap@plt>:
  400dd0:	ff 25 ea 32 20 00    	jmpq   *0x2032ea(%rip)        # 6040c0 <munmap@GLIBC_2.2.5>
  400dd6:	68 15 00 00 00       	pushq  $0x15
  400ddb:	e9 90 fe ff ff       	jmpq   400c70 <.plt>

0000000000400de0 <memmove@plt>:
  400de0:	ff 25 e2 32 20 00    	jmpq   *0x2032e2(%rip)        # 6040c8 <memmove@GLIBC_2.2.5>
  400de6:	68 16 00 00 00       	pushq  $0x16
  400deb:	e9 80 fe ff ff       	jmpq   400c70 <.plt>

0000000000400df0 <fopen@plt>:
  400df0:	ff 25 da 32 20 00    	jmpq   *0x2032da(%rip)        # 6040d0 <fopen@GLIBC_2.2.5>
  400df6:	68 17 00 00 00       	pushq  $0x17
  400dfb:	e9 70 fe ff ff       	jmpq   400c70 <.plt>

0000000000400e00 <getopt@plt>:
  400e00:	ff 25 d2 32 20 00    	jmpq   *0x2032d2(%rip)        # 6040d8 <getopt@GLIBC_2.2.5>
  400e06:	68 18 00 00 00       	pushq  $0x18
  400e0b:	e9 60 fe ff ff       	jmpq   400c70 <.plt>

0000000000400e10 <strtoul@plt>:
  400e10:	ff 25 ca 32 20 00    	jmpq   *0x2032ca(%rip)        # 6040e0 <strtoul@GLIBC_2.2.5>
  400e16:	68 19 00 00 00       	pushq  $0x19
  400e1b:	e9 50 fe ff ff       	jmpq   400c70 <.plt>

0000000000400e20 <gethostname@plt>:
  400e20:	ff 25 c2 32 20 00    	jmpq   *0x2032c2(%rip)        # 6040e8 <gethostname@GLIBC_2.2.5>
  400e26:	68 1a 00 00 00       	pushq  $0x1a
  400e2b:	e9 40 fe ff ff       	jmpq   400c70 <.plt>

0000000000400e30 <sprintf@plt>:
  400e30:	ff 25 ba 32 20 00    	jmpq   *0x2032ba(%rip)        # 6040f0 <sprintf@GLIBC_2.2.5>
  400e36:	68 1b 00 00 00       	pushq  $0x1b
  400e3b:	e9 30 fe ff ff       	jmpq   400c70 <.plt>

0000000000400e40 <exit@plt>:
  400e40:	ff 25 b2 32 20 00    	jmpq   *0x2032b2(%rip)        # 6040f8 <exit@GLIBC_2.2.5>
  400e46:	68 1c 00 00 00       	pushq  $0x1c
  400e4b:	e9 20 fe ff ff       	jmpq   400c70 <.plt>

0000000000400e50 <connect@plt>:
  400e50:	ff 25 aa 32 20 00    	jmpq   *0x2032aa(%rip)        # 604100 <connect@GLIBC_2.2.5>
  400e56:	68 1d 00 00 00       	pushq  $0x1d
  400e5b:	e9 10 fe ff ff       	jmpq   400c70 <.plt>

0000000000400e60 <getc@plt>:
  400e60:	ff 25 a2 32 20 00    	jmpq   *0x2032a2(%rip)        # 604108 <getc@GLIBC_2.2.5>
  400e66:	68 1e 00 00 00       	pushq  $0x1e
  400e6b:	e9 00 fe ff ff       	jmpq   400c70 <.plt>

0000000000400e70 <socket@plt>:
  400e70:	ff 25 9a 32 20 00    	jmpq   *0x20329a(%rip)        # 604110 <socket@GLIBC_2.2.5>
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
  400e93:	49 c7 c0 10 2c 40 00 	mov    $0x402c10,%r8
  400e9a:	48 c7 c1 a0 2b 40 00 	mov    $0x402ba0,%rcx
  400ea1:	48 c7 c7 2f 11 40 00 	mov    $0x40112f,%rdi
  400ea8:	ff 15 3a 31 20 00    	callq  *0x20313a(%rip)        # 603fe8 <__libc_start_main@GLIBC_2.2.5>
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
  400ec0:	48 8d 3d c9 35 20 00 	lea    0x2035c9(%rip),%rdi        # 604490 <__TMC_END__>
  400ec7:	48 8d 05 c2 35 20 00 	lea    0x2035c2(%rip),%rax        # 604490 <__TMC_END__>
  400ece:	48 39 f8             	cmp    %rdi,%rax
  400ed1:	74 15                	je     400ee8 <deregister_tm_clones+0x28>
  400ed3:	48 8b 05 06 31 20 00 	mov    0x203106(%rip),%rax        # 603fe0 <_ITM_deregisterTMCloneTable@Base>
  400eda:	48 85 c0             	test   %rax,%rax
  400edd:	74 09                	je     400ee8 <deregister_tm_clones+0x28>
  400edf:	ff e0                	jmpq   *%rax
  400ee1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400ee8:	c3                   	retq   
  400ee9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400ef0 <register_tm_clones>:
  400ef0:	48 8d 3d 99 35 20 00 	lea    0x203599(%rip),%rdi        # 604490 <__TMC_END__>
  400ef7:	48 8d 35 92 35 20 00 	lea    0x203592(%rip),%rsi        # 604490 <__TMC_END__>
  400efe:	48 29 fe             	sub    %rdi,%rsi
  400f01:	48 c1 fe 03          	sar    $0x3,%rsi
  400f05:	48 89 f0             	mov    %rsi,%rax
  400f08:	48 c1 e8 3f          	shr    $0x3f,%rax
  400f0c:	48 01 c6             	add    %rax,%rsi
  400f0f:	48 d1 fe             	sar    %rsi
  400f12:	74 14                	je     400f28 <register_tm_clones+0x38>
  400f14:	48 8b 05 dd 30 20 00 	mov    0x2030dd(%rip),%rax        # 603ff8 <_ITM_registerTMCloneTable@Base>
  400f1b:	48 85 c0             	test   %rax,%rax
  400f1e:	74 08                	je     400f28 <register_tm_clones+0x38>
  400f20:	ff e0                	jmpq   *%rax
  400f22:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400f28:	c3                   	retq   
  400f29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400f30 <__do_global_dtors_aux>:
  400f30:	f3 0f 1e fa          	endbr64 
  400f34:	80 3d 8d 35 20 00 00 	cmpb   $0x0,0x20358d(%rip)        # 6044c8 <completed.7303>
  400f3b:	75 13                	jne    400f50 <__do_global_dtors_aux+0x20>
  400f3d:	55                   	push   %rbp
  400f3e:	48 89 e5             	mov    %rsp,%rbp
  400f41:	e8 7a ff ff ff       	callq  400ec0 <deregister_tm_clones>
  400f46:	c6 05 7b 35 20 00 01 	movb   $0x1,0x20357b(%rip)        # 6044c8 <completed.7303>
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
  400f6d:	83 3d 94 35 20 00 00 	cmpl   $0x0,0x203594(%rip)        # 604508 <is_checker>
  400f74:	74 41                	je     400fb7 <usage+0x51>
  400f76:	bf 40 2c 40 00       	mov    $0x402c40,%edi
  400f7b:	b8 00 00 00 00       	mov    $0x0,%eax
  400f80:	e8 7b fd ff ff       	callq  400d00 <printf@plt>
  400f85:	bf 78 2c 40 00       	mov    $0x402c78,%edi
  400f8a:	e8 41 fd ff ff       	callq  400cd0 <puts@plt>
  400f8f:	bf f0 2d 40 00       	mov    $0x402df0,%edi
  400f94:	e8 37 fd ff ff       	callq  400cd0 <puts@plt>
  400f99:	bf a0 2c 40 00       	mov    $0x402ca0,%edi
  400f9e:	e8 2d fd ff ff       	callq  400cd0 <puts@plt>
  400fa3:	bf 0a 2e 40 00       	mov    $0x402e0a,%edi
  400fa8:	e8 23 fd ff ff       	callq  400cd0 <puts@plt>
  400fad:	bf 00 00 00 00       	mov    $0x0,%edi
  400fb2:	e8 89 fe ff ff       	callq  400e40 <exit@plt>
  400fb7:	bf 26 2e 40 00       	mov    $0x402e26,%edi
  400fbc:	b8 00 00 00 00       	mov    $0x0,%eax
  400fc1:	e8 3a fd ff ff       	callq  400d00 <printf@plt>
  400fc6:	bf c8 2c 40 00       	mov    $0x402cc8,%edi
  400fcb:	e8 00 fd ff ff       	callq  400cd0 <puts@plt>
  400fd0:	bf f0 2c 40 00       	mov    $0x402cf0,%edi
  400fd5:	e8 f6 fc ff ff       	callq  400cd0 <puts@plt>
  400fda:	bf 44 2e 40 00       	mov    $0x402e44,%edi
  400fdf:	e8 ec fc ff ff       	callq  400cd0 <puts@plt>
  400fe4:	eb c7                	jmp    400fad <usage+0x47>

0000000000400fe6 <initialize_target>:
  400fe6:	55                   	push   %rbp
  400fe7:	53                   	push   %rbx
  400fe8:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  400fef:	89 f5                	mov    %esi,%ebp
  400ff1:	89 3d 01 35 20 00    	mov    %edi,0x203501(%rip)        # 6044f8 <check_level>
  400ff7:	8b 3d 4b 31 20 00    	mov    0x20314b(%rip),%edi        # 604148 <target_id>
  400ffd:	e8 7b 1b 00 00       	callq  402b7d <gencookie>
  401002:	89 05 fc 34 20 00    	mov    %eax,0x2034fc(%rip)        # 604504 <cookie>
  401008:	89 c7                	mov    %eax,%edi
  40100a:	e8 6e 1b 00 00       	callq  402b7d <gencookie>
  40100f:	89 05 eb 34 20 00    	mov    %eax,0x2034eb(%rip)        # 604500 <authkey>
  401015:	8b 05 2d 31 20 00    	mov    0x20312d(%rip),%eax        # 604148 <target_id>
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
  401048:	48 89 05 31 34 20 00 	mov    %rax,0x203431(%rip)        # 604480 <buf_offset>
  40104f:	c6 05 d2 40 20 00 63 	movb   $0x63,0x2040d2(%rip)        # 605128 <target_prefix>
  401056:	83 3d 2b 34 20 00 00 	cmpl   $0x0,0x20342b(%rip)        # 604488 <notify>
  40105d:	74 09                	je     401068 <initialize_target+0x82>
  40105f:	83 3d a2 34 20 00 00 	cmpl   $0x0,0x2034a2(%rip)        # 604508 <is_checker>
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
  4010a2:	48 8b 3c c5 60 41 60 	mov    0x604160(,%rax,8),%rdi
  4010a9:	00 
  4010aa:	48 85 ff             	test   %rdi,%rdi
  4010ad:	74 2a                	je     4010d9 <initialize_target+0xf3>
  4010af:	48 89 e6             	mov    %rsp,%rsi
  4010b2:	e8 c9 fb ff ff       	callq  400c80 <strcasecmp@plt>
  4010b7:	85 c0                	test   %eax,%eax
  4010b9:	74 19                	je     4010d4 <initialize_target+0xee>
  4010bb:	83 c3 01             	add    $0x1,%ebx
  4010be:	eb df                	jmp    40109f <initialize_target+0xb9>
  4010c0:	bf 20 2d 40 00       	mov    $0x402d20,%edi
  4010c5:	e8 06 fc ff ff       	callq  400cd0 <puts@plt>
  4010ca:	bf 08 00 00 00       	mov    $0x8,%edi
  4010cf:	e8 6c fd ff ff       	callq  400e40 <exit@plt>
  4010d4:	bd 01 00 00 00       	mov    $0x1,%ebp
  4010d9:	85 ed                	test   %ebp,%ebp
  4010db:	74 36                	je     401113 <initialize_target+0x12d>
  4010dd:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  4010e4:	00 
  4010e5:	e8 1d 18 00 00       	callq  402907 <init_driver>
  4010ea:	85 c0                	test   %eax,%eax
  4010ec:	0f 89 76 ff ff ff    	jns    401068 <initialize_target+0x82>
  4010f2:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  4010f9:	00 
  4010fa:	bf 98 2d 40 00       	mov    $0x402d98,%edi
  4010ff:	b8 00 00 00 00       	mov    $0x0,%eax
  401104:	e8 f7 fb ff ff       	callq  400d00 <printf@plt>
  401109:	bf 08 00 00 00       	mov    $0x8,%edi
  40110e:	e8 2d fd ff ff       	callq  400e40 <exit@plt>
  401113:	48 89 e6             	mov    %rsp,%rsi
  401116:	bf 58 2d 40 00       	mov    $0x402d58,%edi
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
  40113c:	be 0c 1d 40 00       	mov    $0x401d0c,%esi
  401141:	bf 0b 00 00 00       	mov    $0xb,%edi
  401146:	e8 05 fc ff ff       	callq  400d50 <signal@plt>
  40114b:	be be 1c 40 00       	mov    $0x401cbe,%esi
  401150:	bf 07 00 00 00       	mov    $0x7,%edi
  401155:	e8 f6 fb ff ff       	callq  400d50 <signal@plt>
  40115a:	be 5a 1d 40 00       	mov    $0x401d5a,%esi
  40115f:	bf 04 00 00 00       	mov    $0x4,%edi
  401164:	e8 e7 fb ff ff       	callq  400d50 <signal@plt>
  401169:	83 3d 98 33 20 00 00 	cmpl   $0x0,0x203398(%rip)        # 604508 <is_checker>
  401170:	75 25                	jne    401197 <main+0x68>
  401172:	41 bc 65 2e 40 00    	mov    $0x402e65,%r12d
  401178:	48 8b 05 21 33 20 00 	mov    0x203321(%rip),%rax        # 6044a0 <stdin@@GLIBC_2.2.5>
  40117f:	48 89 05 6a 33 20 00 	mov    %rax,0x20336a(%rip)        # 6044f0 <infile>
  401186:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40118c:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401192:	e9 81 00 00 00       	jmpq   401218 <main+0xe9>
  401197:	be a8 1d 40 00       	mov    $0x401da8,%esi
  40119c:	bf 0e 00 00 00       	mov    $0xe,%edi
  4011a1:	e8 aa fb ff ff       	callq  400d50 <signal@plt>
  4011a6:	bf 05 00 00 00       	mov    $0x5,%edi
  4011ab:	e8 70 fb ff ff       	callq  400d20 <alarm@plt>
  4011b0:	41 bc 5d 2e 40 00    	mov    $0x402e5d,%r12d
  4011b6:	eb c0                	jmp    401178 <main+0x49>
  4011b8:	48 8b 3b             	mov    (%rbx),%rdi
  4011bb:	e8 a6 fd ff ff       	callq  400f66 <usage>
  4011c0:	be 95 31 40 00       	mov    $0x403195,%esi
  4011c5:	48 8b 3d dc 32 20 00 	mov    0x2032dc(%rip),%rdi        # 6044a8 <optarg@@GLIBC_2.2.5>
  4011cc:	e8 1f fc ff ff       	callq  400df0 <fopen@plt>
  4011d1:	48 89 05 18 33 20 00 	mov    %rax,0x203318(%rip)        # 6044f0 <infile>
  4011d8:	48 85 c0             	test   %rax,%rax
  4011db:	75 3b                	jne    401218 <main+0xe9>
  4011dd:	48 8b 15 c4 32 20 00 	mov    0x2032c4(%rip),%rdx        # 6044a8 <optarg@@GLIBC_2.2.5>
  4011e4:	be 6a 2e 40 00       	mov    $0x402e6a,%esi
  4011e9:	48 8b 3d d0 32 20 00 	mov    0x2032d0(%rip),%rdi        # 6044c0 <stderr@@GLIBC_2.2.5>
  4011f0:	e8 7b fb ff ff       	callq  400d70 <fprintf@plt>
  4011f5:	b8 01 00 00 00       	mov    $0x1,%eax
  4011fa:	e9 c1 00 00 00       	jmpq   4012c0 <main+0x191>
  4011ff:	ba 10 00 00 00       	mov    $0x10,%edx
  401204:	be 00 00 00 00       	mov    $0x0,%esi
  401209:	48 8b 3d 98 32 20 00 	mov    0x203298(%rip),%rdi        # 6044a8 <optarg@@GLIBC_2.2.5>
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
  401236:	ff 24 c5 a8 2e 40 00 	jmpq   *0x402ea8(,%rax,8)
  40123d:	ba 0a 00 00 00       	mov    $0xa,%edx
  401242:	be 00 00 00 00       	mov    $0x0,%esi
  401247:	48 8b 3d 5a 32 20 00 	mov    0x20325a(%rip),%rdi        # 6044a8 <optarg@@GLIBC_2.2.5>
  40124e:	e8 2d fb ff ff       	callq  400d80 <strtol@plt>
  401253:	41 89 c5             	mov    %eax,%r13d
  401256:	eb c0                	jmp    401218 <main+0xe9>
  401258:	c7 05 26 32 20 00 00 	movl   $0x0,0x203226(%rip)        # 604488 <notify>
  40125f:	00 00 00 
  401262:	eb b4                	jmp    401218 <main+0xe9>
  401264:	bf 87 2e 40 00       	mov    $0x402e87,%edi
  401269:	b8 00 00 00 00       	mov    $0x0,%eax
  40126e:	e8 8d fa ff ff       	callq  400d00 <printf@plt>
  401273:	48 8b 3b             	mov    (%rbx),%rdi
  401276:	e8 eb fc ff ff       	callq  400f66 <usage>
  40127b:	be 00 00 00 00       	mov    $0x0,%esi
  401280:	44 89 ef             	mov    %r13d,%edi
  401283:	e8 5e fd ff ff       	callq  400fe6 <initialize_target>
  401288:	83 3d 79 32 20 00 00 	cmpl   $0x0,0x203279(%rip)        # 604508 <is_checker>
  40128f:	74 09                	je     40129a <main+0x16b>
  401291:	44 39 35 68 32 20 00 	cmp    %r14d,0x203268(%rip)        # 604500 <authkey>
  401298:	75 2f                	jne    4012c9 <main+0x19a>
  40129a:	8b 35 64 32 20 00    	mov    0x203264(%rip),%esi        # 604504 <cookie>
  4012a0:	bf 9a 2e 40 00       	mov    $0x402e9a,%edi
  4012a5:	b8 00 00 00 00       	mov    $0x0,%eax
  4012aa:	e8 51 fa ff ff       	callq  400d00 <printf@plt>
  4012af:	48 8b 3d ca 31 20 00 	mov    0x2031ca(%rip),%rdi        # 604480 <buf_offset>
  4012b6:	e8 be 0b 00 00       	callq  401e79 <stable_launch>
  4012bb:	b8 00 00 00 00       	mov    $0x0,%eax
  4012c0:	5b                   	pop    %rbx
  4012c1:	5d                   	pop    %rbp
  4012c2:	41 5c                	pop    %r12
  4012c4:	41 5d                	pop    %r13
  4012c6:	41 5e                	pop    %r14
  4012c8:	c3                   	retq   
  4012c9:	44 89 f6             	mov    %r14d,%esi
  4012cc:	bf c0 2d 40 00       	mov    $0x402dc0,%edi
  4012d1:	b8 00 00 00 00       	mov    $0x0,%eax
  4012d6:	e8 25 fa ff ff       	callq  400d00 <printf@plt>
  4012db:	b8 00 00 00 00       	mov    $0x0,%eax
  4012e0:	e8 dd 06 00 00       	callq  4019c2 <check_fail>
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
  4017c0:	e8 2c 02 00 00       	callq  4019f1 <Gets>
  4017c5:	b8 01 00 00 00       	mov    $0x1,%eax
  4017ca:	48 83 c4 38          	add    $0x38,%rsp
  4017ce:	c3                   	retq   

00000000004017cf <touch1>:
  4017cf:	48 83 ec 08          	sub    $0x8,%rsp
  4017d3:	c7 05 1f 2d 20 00 01 	movl   $0x1,0x202d1f(%rip)        # 6044fc <vlevel>
  4017da:	00 00 00 
  4017dd:	bf e8 2f 40 00       	mov    $0x402fe8,%edi
  4017e2:	e8 e9 f4 ff ff       	callq  400cd0 <puts@plt>
  4017e7:	bf 01 00 00 00       	mov    $0x1,%edi
  4017ec:	e8 f3 03 00 00       	callq  401be4 <validate>
  4017f1:	bf 00 00 00 00       	mov    $0x0,%edi
  4017f6:	e8 45 f6 ff ff       	callq  400e40 <exit@plt>

00000000004017fb <touch2>:
  4017fb:	48 83 ec 08          	sub    $0x8,%rsp
  4017ff:	89 fe                	mov    %edi,%esi
  401801:	c7 05 f1 2c 20 00 02 	movl   $0x2,0x202cf1(%rip)        # 6044fc <vlevel>
  401808:	00 00 00 
  40180b:	39 3d f3 2c 20 00    	cmp    %edi,0x202cf3(%rip)        # 604504 <cookie>
  401811:	74 23                	je     401836 <touch2+0x3b>
  401813:	bf 38 30 40 00       	mov    $0x403038,%edi
  401818:	b8 00 00 00 00       	mov    $0x0,%eax
  40181d:	e8 de f4 ff ff       	callq  400d00 <printf@plt>
  401822:	bf 02 00 00 00       	mov    $0x2,%edi
  401827:	e8 6a 04 00 00       	callq  401c96 <fail>
  40182c:	bf 00 00 00 00       	mov    $0x0,%edi
  401831:	e8 0a f6 ff ff       	callq  400e40 <exit@plt>
  401836:	bf 10 30 40 00       	mov    $0x403010,%edi
  40183b:	b8 00 00 00 00       	mov    $0x0,%eax
  401840:	e8 bb f4 ff ff       	callq  400d00 <printf@plt>
  401845:	bf 02 00 00 00       	mov    $0x2,%edi
  40184a:	e8 95 03 00 00       	callq  401be4 <validate>
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
  40189d:	be 05 30 40 00       	mov    $0x403005,%esi
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
  4018d4:	c7 05 1e 2c 20 00 03 	movl   $0x3,0x202c1e(%rip)        # 6044fc <vlevel>
  4018db:	00 00 00 
  4018de:	48 89 fe             	mov    %rdi,%rsi
  4018e1:	8b 3d 1d 2c 20 00    	mov    0x202c1d(%rip),%edi        # 604504 <cookie>
  4018e7:	e8 65 ff ff ff       	callq  401851 <hexmatch>
  4018ec:	85 c0                	test   %eax,%eax
  4018ee:	74 26                	je     401916 <touch3+0x46>
  4018f0:	48 89 de             	mov    %rbx,%rsi
  4018f3:	bf 60 30 40 00       	mov    $0x403060,%edi
  4018f8:	b8 00 00 00 00       	mov    $0x0,%eax
  4018fd:	e8 fe f3 ff ff       	callq  400d00 <printf@plt>
  401902:	bf 03 00 00 00       	mov    $0x3,%edi
  401907:	e8 d8 02 00 00       	callq  401be4 <validate>
  40190c:	bf 00 00 00 00       	mov    $0x0,%edi
  401911:	e8 2a f5 ff ff       	callq  400e40 <exit@plt>
  401916:	48 89 de             	mov    %rbx,%rsi
  401919:	bf 88 30 40 00       	mov    $0x403088,%edi
  40191e:	b8 00 00 00 00       	mov    $0x0,%eax
  401923:	e8 d8 f3 ff ff       	callq  400d00 <printf@plt>
  401928:	bf 03 00 00 00       	mov    $0x3,%edi
  40192d:	e8 64 03 00 00       	callq  401c96 <fail>
  401932:	eb d8                	jmp    40190c <touch3+0x3c>

0000000000401934 <test>:
  401934:	48 83 ec 08          	sub    $0x8,%rsp
  401938:	b8 00 00 00 00       	mov    $0x0,%eax
  40193d:	e8 77 fe ff ff       	callq  4017b9 <getbuf>
  401942:	89 c6                	mov    %eax,%esi
  401944:	bf b0 30 40 00       	mov    $0x4030b0,%edi
  401949:	b8 00 00 00 00       	mov    $0x0,%eax
  40194e:	e8 ad f3 ff ff       	callq  400d00 <printf@plt>
  401953:	48 83 c4 08          	add    $0x8,%rsp
  401957:	c3                   	retq   

0000000000401958 <save_char>:
  401958:	8b 05 c6 37 20 00    	mov    0x2037c6(%rip),%eax        # 605124 <gets_cnt>
  40195e:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401963:	7f 49                	jg     4019ae <save_char+0x56>
  401965:	89 f9                	mov    %edi,%ecx
  401967:	c0 e9 04             	shr    $0x4,%cl
  40196a:	8d 14 40             	lea    (%rax,%rax,2),%edx
  40196d:	83 e1 0f             	and    $0xf,%ecx
  401970:	0f b6 b1 d0 33 40 00 	movzbl 0x4033d0(%rcx),%esi
  401977:	48 63 ca             	movslq %edx,%rcx
  40197a:	40 88 b1 20 45 60 00 	mov    %sil,0x604520(%rcx)
  401981:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401984:	83 e7 0f             	and    $0xf,%edi
  401987:	0f b6 b7 d0 33 40 00 	movzbl 0x4033d0(%rdi),%esi
  40198e:	48 63 c9             	movslq %ecx,%rcx
  401991:	40 88 b1 20 45 60 00 	mov    %sil,0x604520(%rcx)
  401998:	83 c2 02             	add    $0x2,%edx
  40199b:	48 63 d2             	movslq %edx,%rdx
  40199e:	c6 82 20 45 60 00 20 	movb   $0x20,0x604520(%rdx)
  4019a5:	83 c0 01             	add    $0x1,%eax
  4019a8:	89 05 76 37 20 00    	mov    %eax,0x203776(%rip)        # 605124 <gets_cnt>
  4019ae:	c3                   	retq   

00000000004019af <save_term>:
  4019af:	8b 05 6f 37 20 00    	mov    0x20376f(%rip),%eax        # 605124 <gets_cnt>
  4019b5:	8d 04 40             	lea    (%rax,%rax,2),%eax
  4019b8:	48 98                	cltq   
  4019ba:	c6 80 20 45 60 00 00 	movb   $0x0,0x604520(%rax)
  4019c1:	c3                   	retq   

00000000004019c2 <check_fail>:
  4019c2:	48 83 ec 08          	sub    $0x8,%rsp
  4019c6:	0f be 35 5b 37 20 00 	movsbl 0x20375b(%rip),%esi        # 605128 <target_prefix>
  4019cd:	b9 20 45 60 00       	mov    $0x604520,%ecx
  4019d2:	8b 15 20 2b 20 00    	mov    0x202b20(%rip),%edx        # 6044f8 <check_level>
  4019d8:	bf d3 30 40 00       	mov    $0x4030d3,%edi
  4019dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4019e2:	e8 19 f3 ff ff       	callq  400d00 <printf@plt>
  4019e7:	bf 01 00 00 00       	mov    $0x1,%edi
  4019ec:	e8 4f f4 ff ff       	callq  400e40 <exit@plt>

00000000004019f1 <Gets>:
  4019f1:	41 54                	push   %r12
  4019f3:	55                   	push   %rbp
  4019f4:	53                   	push   %rbx
  4019f5:	49 89 fc             	mov    %rdi,%r12
  4019f8:	c7 05 22 37 20 00 00 	movl   $0x0,0x203722(%rip)        # 605124 <gets_cnt>
  4019ff:	00 00 00 
  401a02:	48 89 fb             	mov    %rdi,%rbx
  401a05:	48 8b 3d e4 2a 20 00 	mov    0x202ae4(%rip),%rdi        # 6044f0 <infile>
  401a0c:	e8 4f f4 ff ff       	callq  400e60 <getc@plt>
  401a11:	83 f8 ff             	cmp    $0xffffffff,%eax
  401a14:	74 18                	je     401a2e <Gets+0x3d>
  401a16:	83 f8 0a             	cmp    $0xa,%eax
  401a19:	74 13                	je     401a2e <Gets+0x3d>
  401a1b:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401a1f:	88 03                	mov    %al,(%rbx)
  401a21:	0f b6 f8             	movzbl %al,%edi
  401a24:	e8 2f ff ff ff       	callq  401958 <save_char>
  401a29:	48 89 eb             	mov    %rbp,%rbx
  401a2c:	eb d7                	jmp    401a05 <Gets+0x14>
  401a2e:	c6 03 00             	movb   $0x0,(%rbx)
  401a31:	b8 00 00 00 00       	mov    $0x0,%eax
  401a36:	e8 74 ff ff ff       	callq  4019af <save_term>
  401a3b:	4c 89 e0             	mov    %r12,%rax
  401a3e:	5b                   	pop    %rbx
  401a3f:	5d                   	pop    %rbp
  401a40:	41 5c                	pop    %r12
  401a42:	c3                   	retq   

0000000000401a43 <notify_server>:
  401a43:	83 3d be 2a 20 00 00 	cmpl   $0x0,0x202abe(%rip)        # 604508 <is_checker>
  401a4a:	0f 85 93 01 00 00    	jne    401be3 <notify_server+0x1a0>
  401a50:	55                   	push   %rbp
  401a51:	53                   	push   %rbx
  401a52:	48 81 ec 08 40 00 00 	sub    $0x4008,%rsp
  401a59:	89 fb                	mov    %edi,%ebx
  401a5b:	81 3d bf 36 20 00 9c 	cmpl   $0x1f9c,0x2036bf(%rip)        # 605124 <gets_cnt>
  401a62:	1f 00 00 
  401a65:	0f 8f ad 00 00 00    	jg     401b18 <notify_server+0xd5>
  401a6b:	44 0f be 0d b5 36 20 	movsbl 0x2036b5(%rip),%r9d        # 605128 <target_prefix>
  401a72:	00 
  401a73:	83 3d 0e 2a 20 00 00 	cmpl   $0x0,0x202a0e(%rip)        # 604488 <notify>
  401a7a:	0f 84 b1 00 00 00    	je     401b31 <notify_server+0xee>
  401a80:	44 8b 05 79 2a 20 00 	mov    0x202a79(%rip),%r8d        # 604500 <authkey>
  401a87:	85 db                	test   %ebx,%ebx
  401a89:	0f 84 ad 00 00 00    	je     401b3c <notify_server+0xf9>
  401a8f:	bd ee 30 40 00       	mov    $0x4030ee,%ebp
  401a94:	68 20 45 60 00       	pushq  $0x604520
  401a99:	56                   	push   %rsi
  401a9a:	48 89 e9             	mov    %rbp,%rcx
  401a9d:	8b 15 a5 26 20 00    	mov    0x2026a5(%rip),%edx        # 604148 <target_id>
  401aa3:	be f3 30 40 00       	mov    $0x4030f3,%esi
  401aa8:	48 8d bc 24 10 20 00 	lea    0x2010(%rsp),%rdi
  401aaf:	00 
  401ab0:	b8 00 00 00 00       	mov    $0x0,%eax
  401ab5:	e8 76 f3 ff ff       	callq  400e30 <sprintf@plt>
  401aba:	48 83 c4 10          	add    $0x10,%rsp
  401abe:	83 3d c3 29 20 00 00 	cmpl   $0x0,0x2029c3(%rip)        # 604488 <notify>
  401ac5:	0f 84 ab 00 00 00    	je     401b76 <notify_server+0x133>
  401acb:	85 db                	test   %ebx,%ebx
  401acd:	0f 84 8f 00 00 00    	je     401b62 <notify_server+0x11f>
  401ad3:	49 89 e1             	mov    %rsp,%r9
  401ad6:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401adc:	48 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%rcx
  401ae3:	00 
  401ae4:	48 8b 15 65 26 20 00 	mov    0x202665(%rip),%rdx        # 604150 <lab>
  401aeb:	48 8b 35 66 26 20 00 	mov    0x202666(%rip),%rsi        # 604158 <course>
  401af2:	48 8b 3d 47 26 20 00 	mov    0x202647(%rip),%rdi        # 604140 <user_id>
  401af9:	e8 e5 0f 00 00       	callq  402ae3 <driver_post>
  401afe:	85 c0                	test   %eax,%eax
  401b00:	78 44                	js     401b46 <notify_server+0x103>
  401b02:	bf 38 32 40 00       	mov    $0x403238,%edi
  401b07:	e8 c4 f1 ff ff       	callq  400cd0 <puts@plt>
  401b0c:	bf 1b 31 40 00       	mov    $0x40311b,%edi
  401b11:	e8 ba f1 ff ff       	callq  400cd0 <puts@plt>
  401b16:	eb 54                	jmp    401b6c <notify_server+0x129>
  401b18:	bf 08 32 40 00       	mov    $0x403208,%edi
  401b1d:	b8 00 00 00 00       	mov    $0x0,%eax
  401b22:	e8 d9 f1 ff ff       	callq  400d00 <printf@plt>
  401b27:	bf 01 00 00 00       	mov    $0x1,%edi
  401b2c:	e8 0f f3 ff ff       	callq  400e40 <exit@plt>
  401b31:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401b37:	e9 4b ff ff ff       	jmpq   401a87 <notify_server+0x44>
  401b3c:	bd e9 30 40 00       	mov    $0x4030e9,%ebp
  401b41:	e9 4e ff ff ff       	jmpq   401a94 <notify_server+0x51>
  401b46:	48 89 e6             	mov    %rsp,%rsi
  401b49:	bf 0f 31 40 00       	mov    $0x40310f,%edi
  401b4e:	b8 00 00 00 00       	mov    $0x0,%eax
  401b53:	e8 a8 f1 ff ff       	callq  400d00 <printf@plt>
  401b58:	bf 01 00 00 00       	mov    $0x1,%edi
  401b5d:	e8 de f2 ff ff       	callq  400e40 <exit@plt>
  401b62:	bf 25 31 40 00       	mov    $0x403125,%edi
  401b67:	e8 64 f1 ff ff       	callq  400cd0 <puts@plt>
  401b6c:	48 81 c4 08 40 00 00 	add    $0x4008,%rsp
  401b73:	5b                   	pop    %rbx
  401b74:	5d                   	pop    %rbp
  401b75:	c3                   	retq   
  401b76:	48 89 ee             	mov    %rbp,%rsi
  401b79:	bf 70 32 40 00       	mov    $0x403270,%edi
  401b7e:	b8 00 00 00 00       	mov    $0x0,%eax
  401b83:	e8 78 f1 ff ff       	callq  400d00 <printf@plt>
  401b88:	48 8b 35 b1 25 20 00 	mov    0x2025b1(%rip),%rsi        # 604140 <user_id>
  401b8f:	bf 2c 31 40 00       	mov    $0x40312c,%edi
  401b94:	b8 00 00 00 00       	mov    $0x0,%eax
  401b99:	e8 62 f1 ff ff       	callq  400d00 <printf@plt>
  401b9e:	48 8b 35 b3 25 20 00 	mov    0x2025b3(%rip),%rsi        # 604158 <course>
  401ba5:	bf 39 31 40 00       	mov    $0x403139,%edi
  401baa:	b8 00 00 00 00       	mov    $0x0,%eax
  401baf:	e8 4c f1 ff ff       	callq  400d00 <printf@plt>
  401bb4:	48 8b 35 95 25 20 00 	mov    0x202595(%rip),%rsi        # 604150 <lab>
  401bbb:	bf 45 31 40 00       	mov    $0x403145,%edi
  401bc0:	b8 00 00 00 00       	mov    $0x0,%eax
  401bc5:	e8 36 f1 ff ff       	callq  400d00 <printf@plt>
  401bca:	48 8d b4 24 00 20 00 	lea    0x2000(%rsp),%rsi
  401bd1:	00 
  401bd2:	bf 4e 31 40 00       	mov    $0x40314e,%edi
  401bd7:	b8 00 00 00 00       	mov    $0x0,%eax
  401bdc:	e8 1f f1 ff ff       	callq  400d00 <printf@plt>
  401be1:	eb 89                	jmp    401b6c <notify_server+0x129>
  401be3:	c3                   	retq   

0000000000401be4 <validate>:
  401be4:	53                   	push   %rbx
  401be5:	89 fb                	mov    %edi,%ebx
  401be7:	83 3d 1a 29 20 00 00 	cmpl   $0x0,0x20291a(%rip)        # 604508 <is_checker>
  401bee:	74 60                	je     401c50 <validate+0x6c>
  401bf0:	39 3d 06 29 20 00    	cmp    %edi,0x202906(%rip)        # 6044fc <vlevel>
  401bf6:	75 29                	jne    401c21 <validate+0x3d>
  401bf8:	8b 35 fa 28 20 00    	mov    0x2028fa(%rip),%esi        # 6044f8 <check_level>
  401bfe:	39 fe                	cmp    %edi,%esi
  401c00:	75 33                	jne    401c35 <validate+0x51>
  401c02:	0f be 35 1f 35 20 00 	movsbl 0x20351f(%rip),%esi        # 605128 <target_prefix>
  401c09:	b9 20 45 60 00       	mov    $0x604520,%ecx
  401c0e:	89 fa                	mov    %edi,%edx
  401c10:	bf 78 31 40 00       	mov    $0x403178,%edi
  401c15:	b8 00 00 00 00       	mov    $0x0,%eax
  401c1a:	e8 e1 f0 ff ff       	callq  400d00 <printf@plt>
  401c1f:	5b                   	pop    %rbx
  401c20:	c3                   	retq   
  401c21:	bf 5a 31 40 00       	mov    $0x40315a,%edi
  401c26:	e8 a5 f0 ff ff       	callq  400cd0 <puts@plt>
  401c2b:	b8 00 00 00 00       	mov    $0x0,%eax
  401c30:	e8 8d fd ff ff       	callq  4019c2 <check_fail>
  401c35:	89 fa                	mov    %edi,%edx
  401c37:	bf 98 32 40 00       	mov    $0x403298,%edi
  401c3c:	b8 00 00 00 00       	mov    $0x0,%eax
  401c41:	e8 ba f0 ff ff       	callq  400d00 <printf@plt>
  401c46:	b8 00 00 00 00       	mov    $0x0,%eax
  401c4b:	e8 72 fd ff ff       	callq  4019c2 <check_fail>
  401c50:	39 3d a6 28 20 00    	cmp    %edi,0x2028a6(%rip)        # 6044fc <vlevel>
  401c56:	74 18                	je     401c70 <validate+0x8c>
  401c58:	bf 5a 31 40 00       	mov    $0x40315a,%edi
  401c5d:	e8 6e f0 ff ff       	callq  400cd0 <puts@plt>
  401c62:	89 de                	mov    %ebx,%esi
  401c64:	bf 00 00 00 00       	mov    $0x0,%edi
  401c69:	e8 d5 fd ff ff       	callq  401a43 <notify_server>
  401c6e:	eb af                	jmp    401c1f <validate+0x3b>
  401c70:	0f be 15 b1 34 20 00 	movsbl 0x2034b1(%rip),%edx        # 605128 <target_prefix>
  401c77:	89 fe                	mov    %edi,%esi
  401c79:	bf c0 32 40 00       	mov    $0x4032c0,%edi
  401c7e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c83:	e8 78 f0 ff ff       	callq  400d00 <printf@plt>
  401c88:	89 de                	mov    %ebx,%esi
  401c8a:	bf 01 00 00 00       	mov    $0x1,%edi
  401c8f:	e8 af fd ff ff       	callq  401a43 <notify_server>
  401c94:	eb 89                	jmp    401c1f <validate+0x3b>

0000000000401c96 <fail>:
  401c96:	48 83 ec 08          	sub    $0x8,%rsp
  401c9a:	83 3d 67 28 20 00 00 	cmpl   $0x0,0x202867(%rip)        # 604508 <is_checker>
  401ca1:	75 11                	jne    401cb4 <fail+0x1e>
  401ca3:	89 fe                	mov    %edi,%esi
  401ca5:	bf 00 00 00 00       	mov    $0x0,%edi
  401caa:	e8 94 fd ff ff       	callq  401a43 <notify_server>
  401caf:	48 83 c4 08          	add    $0x8,%rsp
  401cb3:	c3                   	retq   
  401cb4:	b8 00 00 00 00       	mov    $0x0,%eax
  401cb9:	e8 04 fd ff ff       	callq  4019c2 <check_fail>

0000000000401cbe <bushandler>:
  401cbe:	48 83 ec 08          	sub    $0x8,%rsp
  401cc2:	83 3d 3f 28 20 00 00 	cmpl   $0x0,0x20283f(%rip)        # 604508 <is_checker>
  401cc9:	74 14                	je     401cdf <bushandler+0x21>
  401ccb:	bf 8d 31 40 00       	mov    $0x40318d,%edi
  401cd0:	e8 fb ef ff ff       	callq  400cd0 <puts@plt>
  401cd5:	b8 00 00 00 00       	mov    $0x0,%eax
  401cda:	e8 e3 fc ff ff       	callq  4019c2 <check_fail>
  401cdf:	bf f8 32 40 00       	mov    $0x4032f8,%edi
  401ce4:	e8 e7 ef ff ff       	callq  400cd0 <puts@plt>
  401ce9:	bf 97 31 40 00       	mov    $0x403197,%edi
  401cee:	e8 dd ef ff ff       	callq  400cd0 <puts@plt>
  401cf3:	be 00 00 00 00       	mov    $0x0,%esi
  401cf8:	bf 00 00 00 00       	mov    $0x0,%edi
  401cfd:	e8 41 fd ff ff       	callq  401a43 <notify_server>
  401d02:	bf 01 00 00 00       	mov    $0x1,%edi
  401d07:	e8 34 f1 ff ff       	callq  400e40 <exit@plt>

0000000000401d0c <seghandler>:
  401d0c:	48 83 ec 08          	sub    $0x8,%rsp
  401d10:	83 3d f1 27 20 00 00 	cmpl   $0x0,0x2027f1(%rip)        # 604508 <is_checker>
  401d17:	74 14                	je     401d2d <seghandler+0x21>
  401d19:	bf ad 31 40 00       	mov    $0x4031ad,%edi
  401d1e:	e8 ad ef ff ff       	callq  400cd0 <puts@plt>
  401d23:	b8 00 00 00 00       	mov    $0x0,%eax
  401d28:	e8 95 fc ff ff       	callq  4019c2 <check_fail>
  401d2d:	bf 18 33 40 00       	mov    $0x403318,%edi
  401d32:	e8 99 ef ff ff       	callq  400cd0 <puts@plt>
  401d37:	bf 97 31 40 00       	mov    $0x403197,%edi
  401d3c:	e8 8f ef ff ff       	callq  400cd0 <puts@plt>
  401d41:	be 00 00 00 00       	mov    $0x0,%esi
  401d46:	bf 00 00 00 00       	mov    $0x0,%edi
  401d4b:	e8 f3 fc ff ff       	callq  401a43 <notify_server>
  401d50:	bf 01 00 00 00       	mov    $0x1,%edi
  401d55:	e8 e6 f0 ff ff       	callq  400e40 <exit@plt>

0000000000401d5a <illegalhandler>:
  401d5a:	48 83 ec 08          	sub    $0x8,%rsp
  401d5e:	83 3d a3 27 20 00 00 	cmpl   $0x0,0x2027a3(%rip)        # 604508 <is_checker>
  401d65:	74 14                	je     401d7b <illegalhandler+0x21>
  401d67:	bf c0 31 40 00       	mov    $0x4031c0,%edi
  401d6c:	e8 5f ef ff ff       	callq  400cd0 <puts@plt>
  401d71:	b8 00 00 00 00       	mov    $0x0,%eax
  401d76:	e8 47 fc ff ff       	callq  4019c2 <check_fail>
  401d7b:	bf 40 33 40 00       	mov    $0x403340,%edi
  401d80:	e8 4b ef ff ff       	callq  400cd0 <puts@plt>
  401d85:	bf 97 31 40 00       	mov    $0x403197,%edi
  401d8a:	e8 41 ef ff ff       	callq  400cd0 <puts@plt>
  401d8f:	be 00 00 00 00       	mov    $0x0,%esi
  401d94:	bf 00 00 00 00       	mov    $0x0,%edi
  401d99:	e8 a5 fc ff ff       	callq  401a43 <notify_server>
  401d9e:	bf 01 00 00 00       	mov    $0x1,%edi
  401da3:	e8 98 f0 ff ff       	callq  400e40 <exit@plt>

0000000000401da8 <sigalrmhandler>:
  401da8:	48 83 ec 08          	sub    $0x8,%rsp
  401dac:	83 3d 55 27 20 00 00 	cmpl   $0x0,0x202755(%rip)        # 604508 <is_checker>
  401db3:	74 14                	je     401dc9 <sigalrmhandler+0x21>
  401db5:	bf d4 31 40 00       	mov    $0x4031d4,%edi
  401dba:	e8 11 ef ff ff       	callq  400cd0 <puts@plt>
  401dbf:	b8 00 00 00 00       	mov    $0x0,%eax
  401dc4:	e8 f9 fb ff ff       	callq  4019c2 <check_fail>
  401dc9:	be 05 00 00 00       	mov    $0x5,%esi
  401dce:	bf 70 33 40 00       	mov    $0x403370,%edi
  401dd3:	b8 00 00 00 00       	mov    $0x0,%eax
  401dd8:	e8 23 ef ff ff       	callq  400d00 <printf@plt>
  401ddd:	be 00 00 00 00       	mov    $0x0,%esi
  401de2:	bf 00 00 00 00       	mov    $0x0,%edi
  401de7:	e8 57 fc ff ff       	callq  401a43 <notify_server>
  401dec:	bf 01 00 00 00       	mov    $0x1,%edi
  401df1:	e8 4a f0 ff ff       	callq  400e40 <exit@plt>

0000000000401df6 <launch>:
  401df6:	55                   	push   %rbp
  401df7:	48 89 e5             	mov    %rsp,%rbp
  401dfa:	48 89 fa             	mov    %rdi,%rdx
  401dfd:	48 8d 47 17          	lea    0x17(%rdi),%rax
  401e01:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401e05:	48 29 c4             	sub    %rax,%rsp
  401e08:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401e0d:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401e11:	be f4 00 00 00       	mov    $0xf4,%esi
  401e16:	e8 f5 ee ff ff       	callq  400d10 <memset@plt>
  401e1b:	48 8b 05 7e 26 20 00 	mov    0x20267e(%rip),%rax        # 6044a0 <stdin@@GLIBC_2.2.5>
  401e22:	48 39 05 c7 26 20 00 	cmp    %rax,0x2026c7(%rip)        # 6044f0 <infile>
  401e29:	74 29                	je     401e54 <launch+0x5e>
  401e2b:	c7 05 c7 26 20 00 00 	movl   $0x0,0x2026c7(%rip)        # 6044fc <vlevel>
  401e32:	00 00 00 
  401e35:	b8 00 00 00 00       	mov    $0x0,%eax
  401e3a:	e8 f5 fa ff ff       	callq  401934 <test>
  401e3f:	83 3d c2 26 20 00 00 	cmpl   $0x0,0x2026c2(%rip)        # 604508 <is_checker>
  401e46:	75 1d                	jne    401e65 <launch+0x6f>
  401e48:	bf f4 31 40 00       	mov    $0x4031f4,%edi
  401e4d:	e8 7e ee ff ff       	callq  400cd0 <puts@plt>
  401e52:	c9                   	leaveq 
  401e53:	c3                   	retq   
  401e54:	bf dc 31 40 00       	mov    $0x4031dc,%edi
  401e59:	b8 00 00 00 00       	mov    $0x0,%eax
  401e5e:	e8 9d ee ff ff       	callq  400d00 <printf@plt>
  401e63:	eb c6                	jmp    401e2b <launch+0x35>
  401e65:	bf e9 31 40 00       	mov    $0x4031e9,%edi
  401e6a:	e8 61 ee ff ff       	callq  400cd0 <puts@plt>
  401e6f:	b8 00 00 00 00       	mov    $0x0,%eax
  401e74:	e8 49 fb ff ff       	callq  4019c2 <check_fail>

0000000000401e79 <stable_launch>:
  401e79:	53                   	push   %rbx
  401e7a:	48 89 3d 67 26 20 00 	mov    %rdi,0x202667(%rip)        # 6044e8 <global_offset>
  401e81:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401e87:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401e8d:	b9 32 01 00 00       	mov    $0x132,%ecx
  401e92:	ba 07 00 00 00       	mov    $0x7,%edx
  401e97:	be 00 00 10 00       	mov    $0x100000,%esi
  401e9c:	bf 00 60 58 55       	mov    $0x55586000,%edi
  401ea1:	e8 4a ee ff ff       	callq  400cf0 <mmap@plt>
  401ea6:	48 89 c3             	mov    %rax,%rbx
  401ea9:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  401eaf:	75 43                	jne    401ef4 <stable_launch+0x7b>
  401eb1:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  401eb8:	48 89 15 71 32 20 00 	mov    %rdx,0x203271(%rip)        # 605130 <stack_top>
  401ebf:	48 89 e0             	mov    %rsp,%rax
  401ec2:	48 89 d4             	mov    %rdx,%rsp
  401ec5:	48 89 c2             	mov    %rax,%rdx
  401ec8:	48 89 15 11 26 20 00 	mov    %rdx,0x202611(%rip)        # 6044e0 <global_save_stack>
  401ecf:	48 8b 3d 12 26 20 00 	mov    0x202612(%rip),%rdi        # 6044e8 <global_offset>
  401ed6:	e8 1b ff ff ff       	callq  401df6 <launch>
  401edb:	48 8b 05 fe 25 20 00 	mov    0x2025fe(%rip),%rax        # 6044e0 <global_save_stack>
  401ee2:	48 89 c4             	mov    %rax,%rsp
  401ee5:	be 00 00 10 00       	mov    $0x100000,%esi
  401eea:	48 89 df             	mov    %rbx,%rdi
  401eed:	e8 de ee ff ff       	callq  400dd0 <munmap@plt>
  401ef2:	5b                   	pop    %rbx
  401ef3:	c3                   	retq   
  401ef4:	be 00 00 10 00       	mov    $0x100000,%esi
  401ef9:	48 89 c7             	mov    %rax,%rdi
  401efc:	e8 cf ee ff ff       	callq  400dd0 <munmap@plt>
  401f01:	ba 00 60 58 55       	mov    $0x55586000,%edx
  401f06:	be a8 33 40 00       	mov    $0x4033a8,%esi
  401f0b:	48 8b 3d ae 25 20 00 	mov    0x2025ae(%rip),%rdi        # 6044c0 <stderr@@GLIBC_2.2.5>
  401f12:	b8 00 00 00 00       	mov    $0x0,%eax
  401f17:	e8 54 ee ff ff       	callq  400d70 <fprintf@plt>
  401f1c:	bf 01 00 00 00       	mov    $0x1,%edi
  401f21:	e8 1a ef ff ff       	callq  400e40 <exit@plt>

0000000000401f26 <rio_readinitb>:
  401f26:	89 37                	mov    %esi,(%rdi)
  401f28:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  401f2f:	48 8d 47 10          	lea    0x10(%rdi),%rax
  401f33:	48 89 47 08          	mov    %rax,0x8(%rdi)
  401f37:	c3                   	retq   

0000000000401f38 <sigalrm_handler>:
  401f38:	48 83 ec 08          	sub    $0x8,%rsp
  401f3c:	ba 00 00 00 00       	mov    $0x0,%edx
  401f41:	be e0 33 40 00       	mov    $0x4033e0,%esi
  401f46:	48 8b 3d 73 25 20 00 	mov    0x202573(%rip),%rdi        # 6044c0 <stderr@@GLIBC_2.2.5>
  401f4d:	b8 00 00 00 00       	mov    $0x0,%eax
  401f52:	e8 19 ee ff ff       	callq  400d70 <fprintf@plt>
  401f57:	bf 01 00 00 00       	mov    $0x1,%edi
  401f5c:	e8 df ee ff ff       	callq  400e40 <exit@plt>

0000000000401f61 <urlencode>:
  401f61:	41 54                	push   %r12
  401f63:	55                   	push   %rbp
  401f64:	53                   	push   %rbx
  401f65:	48 83 ec 10          	sub    $0x10,%rsp
  401f69:	48 89 fb             	mov    %rdi,%rbx
  401f6c:	48 89 f5             	mov    %rsi,%rbp
  401f6f:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401f76:	b8 00 00 00 00       	mov    $0x0,%eax
  401f7b:	f2 ae                	repnz scas %es:(%rdi),%al
  401f7d:	48 89 ce             	mov    %rcx,%rsi
  401f80:	48 f7 d6             	not    %rsi
  401f83:	8d 46 ff             	lea    -0x1(%rsi),%eax
  401f86:	eb 0e                	jmp    401f96 <urlencode+0x35>
  401f88:	88 55 00             	mov    %dl,0x0(%rbp)
  401f8b:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401f8f:	48 83 c3 01          	add    $0x1,%rbx
  401f93:	44 89 e0             	mov    %r12d,%eax
  401f96:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  401f9a:	85 c0                	test   %eax,%eax
  401f9c:	0f 84 93 00 00 00    	je     402035 <urlencode+0xd4>
  401fa2:	0f b6 13             	movzbl (%rbx),%edx
  401fa5:	80 fa 2a             	cmp    $0x2a,%dl
  401fa8:	0f 94 c1             	sete   %cl
  401fab:	80 fa 2d             	cmp    $0x2d,%dl
  401fae:	0f 94 c0             	sete   %al
  401fb1:	08 c1                	or     %al,%cl
  401fb3:	75 d3                	jne    401f88 <urlencode+0x27>
  401fb5:	80 fa 2e             	cmp    $0x2e,%dl
  401fb8:	74 ce                	je     401f88 <urlencode+0x27>
  401fba:	80 fa 5f             	cmp    $0x5f,%dl
  401fbd:	74 c9                	je     401f88 <urlencode+0x27>
  401fbf:	8d 42 d0             	lea    -0x30(%rdx),%eax
  401fc2:	3c 09                	cmp    $0x9,%al
  401fc4:	76 c2                	jbe    401f88 <urlencode+0x27>
  401fc6:	8d 42 bf             	lea    -0x41(%rdx),%eax
  401fc9:	3c 19                	cmp    $0x19,%al
  401fcb:	76 bb                	jbe    401f88 <urlencode+0x27>
  401fcd:	8d 42 9f             	lea    -0x61(%rdx),%eax
  401fd0:	3c 19                	cmp    $0x19,%al
  401fd2:	76 b4                	jbe    401f88 <urlencode+0x27>
  401fd4:	80 fa 20             	cmp    $0x20,%dl
  401fd7:	74 4a                	je     402023 <urlencode+0xc2>
  401fd9:	8d 42 e0             	lea    -0x20(%rdx),%eax
  401fdc:	3c 5f                	cmp    $0x5f,%al
  401fde:	0f 96 c1             	setbe  %cl
  401fe1:	80 fa 09             	cmp    $0x9,%dl
  401fe4:	0f 94 c0             	sete   %al
  401fe7:	08 c1                	or     %al,%cl
  401fe9:	74 45                	je     402030 <urlencode+0xcf>
  401feb:	0f b6 d2             	movzbl %dl,%edx
  401fee:	be 78 34 40 00       	mov    $0x403478,%esi
  401ff3:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  401ff8:	b8 00 00 00 00       	mov    $0x0,%eax
  401ffd:	e8 2e ee ff ff       	callq  400e30 <sprintf@plt>
  402002:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  402007:	88 45 00             	mov    %al,0x0(%rbp)
  40200a:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  40200f:	88 45 01             	mov    %al,0x1(%rbp)
  402012:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  402017:	88 45 02             	mov    %al,0x2(%rbp)
  40201a:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40201e:	e9 6c ff ff ff       	jmpq   401f8f <urlencode+0x2e>
  402023:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402027:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40202b:	e9 5f ff ff ff       	jmpq   401f8f <urlencode+0x2e>
  402030:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402035:	48 83 c4 10          	add    $0x10,%rsp
  402039:	5b                   	pop    %rbx
  40203a:	5d                   	pop    %rbp
  40203b:	41 5c                	pop    %r12
  40203d:	c3                   	retq   

000000000040203e <rio_writen>:
  40203e:	41 55                	push   %r13
  402040:	41 54                	push   %r12
  402042:	55                   	push   %rbp
  402043:	53                   	push   %rbx
  402044:	48 83 ec 08          	sub    $0x8,%rsp
  402048:	41 89 fc             	mov    %edi,%r12d
  40204b:	48 89 f5             	mov    %rsi,%rbp
  40204e:	49 89 d5             	mov    %rdx,%r13
  402051:	48 89 d3             	mov    %rdx,%rbx
  402054:	eb 06                	jmp    40205c <rio_writen+0x1e>
  402056:	48 29 c3             	sub    %rax,%rbx
  402059:	48 01 c5             	add    %rax,%rbp
  40205c:	48 85 db             	test   %rbx,%rbx
  40205f:	74 24                	je     402085 <rio_writen+0x47>
  402061:	48 89 da             	mov    %rbx,%rdx
  402064:	48 89 ee             	mov    %rbp,%rsi
  402067:	44 89 e7             	mov    %r12d,%edi
  40206a:	e8 71 ec ff ff       	callq  400ce0 <write@plt>
  40206f:	48 85 c0             	test   %rax,%rax
  402072:	7f e2                	jg     402056 <rio_writen+0x18>
  402074:	e8 17 ec ff ff       	callq  400c90 <__errno_location@plt>
  402079:	83 38 04             	cmpl   $0x4,(%rax)
  40207c:	75 15                	jne    402093 <rio_writen+0x55>
  40207e:	b8 00 00 00 00       	mov    $0x0,%eax
  402083:	eb d1                	jmp    402056 <rio_writen+0x18>
  402085:	4c 89 e8             	mov    %r13,%rax
  402088:	48 83 c4 08          	add    $0x8,%rsp
  40208c:	5b                   	pop    %rbx
  40208d:	5d                   	pop    %rbp
  40208e:	41 5c                	pop    %r12
  402090:	41 5d                	pop    %r13
  402092:	c3                   	retq   
  402093:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40209a:	eb ec                	jmp    402088 <rio_writen+0x4a>

000000000040209c <rio_read>:
  40209c:	41 55                	push   %r13
  40209e:	41 54                	push   %r12
  4020a0:	55                   	push   %rbp
  4020a1:	53                   	push   %rbx
  4020a2:	48 83 ec 08          	sub    $0x8,%rsp
  4020a6:	48 89 fb             	mov    %rdi,%rbx
  4020a9:	49 89 f5             	mov    %rsi,%r13
  4020ac:	49 89 d4             	mov    %rdx,%r12
  4020af:	eb 0a                	jmp    4020bb <rio_read+0x1f>
  4020b1:	e8 da eb ff ff       	callq  400c90 <__errno_location@plt>
  4020b6:	83 38 04             	cmpl   $0x4,(%rax)
  4020b9:	75 5a                	jne    402115 <rio_read+0x79>
  4020bb:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4020be:	85 ed                	test   %ebp,%ebp
  4020c0:	7f 22                	jg     4020e4 <rio_read+0x48>
  4020c2:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4020c6:	ba 00 20 00 00       	mov    $0x2000,%edx
  4020cb:	48 89 ee             	mov    %rbp,%rsi
  4020ce:	8b 3b                	mov    (%rbx),%edi
  4020d0:	e8 6b ec ff ff       	callq  400d40 <read@plt>
  4020d5:	89 43 04             	mov    %eax,0x4(%rbx)
  4020d8:	85 c0                	test   %eax,%eax
  4020da:	78 d5                	js     4020b1 <rio_read+0x15>
  4020dc:	74 40                	je     40211e <rio_read+0x82>
  4020de:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4020e2:	eb d7                	jmp    4020bb <rio_read+0x1f>
  4020e4:	89 e8                	mov    %ebp,%eax
  4020e6:	4c 39 e0             	cmp    %r12,%rax
  4020e9:	72 03                	jb     4020ee <rio_read+0x52>
  4020eb:	44 89 e5             	mov    %r12d,%ebp
  4020ee:	4c 63 e5             	movslq %ebp,%r12
  4020f1:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4020f5:	4c 89 e2             	mov    %r12,%rdx
  4020f8:	4c 89 ef             	mov    %r13,%rdi
  4020fb:	e8 90 ec ff ff       	callq  400d90 <memcpy@plt>
  402100:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402104:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402107:	4c 89 e0             	mov    %r12,%rax
  40210a:	48 83 c4 08          	add    $0x8,%rsp
  40210e:	5b                   	pop    %rbx
  40210f:	5d                   	pop    %rbp
  402110:	41 5c                	pop    %r12
  402112:	41 5d                	pop    %r13
  402114:	c3                   	retq   
  402115:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40211c:	eb ec                	jmp    40210a <rio_read+0x6e>
  40211e:	b8 00 00 00 00       	mov    $0x0,%eax
  402123:	eb e5                	jmp    40210a <rio_read+0x6e>

0000000000402125 <rio_readlineb>:
  402125:	41 55                	push   %r13
  402127:	41 54                	push   %r12
  402129:	55                   	push   %rbp
  40212a:	53                   	push   %rbx
  40212b:	48 83 ec 18          	sub    $0x18,%rsp
  40212f:	49 89 fd             	mov    %rdi,%r13
  402132:	48 89 f5             	mov    %rsi,%rbp
  402135:	49 89 d4             	mov    %rdx,%r12
  402138:	bb 01 00 00 00       	mov    $0x1,%ebx
  40213d:	4c 39 e3             	cmp    %r12,%rbx
  402140:	73 44                	jae    402186 <rio_readlineb+0x61>
  402142:	ba 01 00 00 00       	mov    $0x1,%edx
  402147:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40214c:	4c 89 ef             	mov    %r13,%rdi
  40214f:	e8 48 ff ff ff       	callq  40209c <rio_read>
  402154:	83 f8 01             	cmp    $0x1,%eax
  402157:	75 19                	jne    402172 <rio_readlineb+0x4d>
  402159:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  40215d:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  402162:	88 45 00             	mov    %al,0x0(%rbp)
  402165:	3c 0a                	cmp    $0xa,%al
  402167:	74 1a                	je     402183 <rio_readlineb+0x5e>
  402169:	48 83 c3 01          	add    $0x1,%rbx
  40216d:	48 89 d5             	mov    %rdx,%rbp
  402170:	eb cb                	jmp    40213d <rio_readlineb+0x18>
  402172:	85 c0                	test   %eax,%eax
  402174:	75 22                	jne    402198 <rio_readlineb+0x73>
  402176:	48 83 fb 01          	cmp    $0x1,%rbx
  40217a:	75 0a                	jne    402186 <rio_readlineb+0x61>
  40217c:	b8 00 00 00 00       	mov    $0x0,%eax
  402181:	eb 0a                	jmp    40218d <rio_readlineb+0x68>
  402183:	48 89 d5             	mov    %rdx,%rbp
  402186:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  40218a:	48 89 d8             	mov    %rbx,%rax
  40218d:	48 83 c4 18          	add    $0x18,%rsp
  402191:	5b                   	pop    %rbx
  402192:	5d                   	pop    %rbp
  402193:	41 5c                	pop    %r12
  402195:	41 5d                	pop    %r13
  402197:	c3                   	retq   
  402198:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40219f:	eb ec                	jmp    40218d <rio_readlineb+0x68>

00000000004021a1 <submitr>:
  4021a1:	41 57                	push   %r15
  4021a3:	41 56                	push   %r14
  4021a5:	41 55                	push   %r13
  4021a7:	41 54                	push   %r12
  4021a9:	55                   	push   %rbp
  4021aa:	53                   	push   %rbx
  4021ab:	48 81 ec 48 a0 00 00 	sub    $0xa048,%rsp
  4021b2:	49 89 fc             	mov    %rdi,%r12
  4021b5:	89 74 24 04          	mov    %esi,0x4(%rsp)
  4021b9:	49 89 d7             	mov    %rdx,%r15
  4021bc:	49 89 ce             	mov    %rcx,%r14
  4021bf:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  4021c4:	4d 89 cd             	mov    %r9,%r13
  4021c7:	48 8b ac 24 80 a0 00 	mov    0xa080(%rsp),%rbp
  4021ce:	00 
  4021cf:	c7 84 24 1c 20 00 00 	movl   $0x0,0x201c(%rsp)
  4021d6:	00 00 00 00 
  4021da:	ba 00 00 00 00       	mov    $0x0,%edx
  4021df:	be 01 00 00 00       	mov    $0x1,%esi
  4021e4:	bf 02 00 00 00       	mov    $0x2,%edi
  4021e9:	e8 82 ec ff ff       	callq  400e70 <socket@plt>
  4021ee:	85 c0                	test   %eax,%eax
  4021f0:	0f 88 8f 02 00 00    	js     402485 <submitr+0x2e4>
  4021f6:	89 c3                	mov    %eax,%ebx
  4021f8:	4c 89 e7             	mov    %r12,%rdi
  4021fb:	e8 60 eb ff ff       	callq  400d60 <gethostbyname@plt>
  402200:	48 85 c0             	test   %rax,%rax
  402203:	0f 84 c8 02 00 00    	je     4024d1 <submitr+0x330>
  402209:	48 c7 84 24 32 a0 00 	movq   $0x0,0xa032(%rsp)
  402210:	00 00 00 00 00 
  402215:	c7 84 24 3a a0 00 00 	movl   $0x0,0xa03a(%rsp)
  40221c:	00 00 00 00 
  402220:	66 c7 84 24 3e a0 00 	movw   $0x0,0xa03e(%rsp)
  402227:	00 00 00 
  40222a:	66 c7 84 24 30 a0 00 	movw   $0x2,0xa030(%rsp)
  402231:	00 02 00 
  402234:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402238:	48 63 50 14          	movslq 0x14(%rax),%rdx
  40223c:	48 8d bc 24 34 a0 00 	lea    0xa034(%rsp),%rdi
  402243:	00 
  402244:	48 8b 31             	mov    (%rcx),%rsi
  402247:	e8 94 eb ff ff       	callq  400de0 <memmove@plt>
  40224c:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
  402251:	66 c1 c0 08          	rol    $0x8,%ax
  402255:	66 89 84 24 32 a0 00 	mov    %ax,0xa032(%rsp)
  40225c:	00 
  40225d:	ba 10 00 00 00       	mov    $0x10,%edx
  402262:	48 8d b4 24 30 a0 00 	lea    0xa030(%rsp),%rsi
  402269:	00 
  40226a:	89 df                	mov    %ebx,%edi
  40226c:	e8 df eb ff ff       	callq  400e50 <connect@plt>
  402271:	85 c0                	test   %eax,%eax
  402273:	0f 88 c0 02 00 00    	js     402539 <submitr+0x398>
  402279:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402280:	b8 00 00 00 00       	mov    $0x0,%eax
  402285:	48 89 f1             	mov    %rsi,%rcx
  402288:	4c 89 ef             	mov    %r13,%rdi
  40228b:	f2 ae                	repnz scas %es:(%rdi),%al
  40228d:	48 89 ca             	mov    %rcx,%rdx
  402290:	48 f7 d2             	not    %rdx
  402293:	48 89 f1             	mov    %rsi,%rcx
  402296:	4c 89 ff             	mov    %r15,%rdi
  402299:	f2 ae                	repnz scas %es:(%rdi),%al
  40229b:	48 f7 d1             	not    %rcx
  40229e:	49 89 c8             	mov    %rcx,%r8
  4022a1:	48 89 f1             	mov    %rsi,%rcx
  4022a4:	4c 89 f7             	mov    %r14,%rdi
  4022a7:	f2 ae                	repnz scas %es:(%rdi),%al
  4022a9:	48 f7 d1             	not    %rcx
  4022ac:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  4022b1:	48 89 f1             	mov    %rsi,%rcx
  4022b4:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4022b9:	f2 ae                	repnz scas %es:(%rdi),%al
  4022bb:	48 89 c8             	mov    %rcx,%rax
  4022be:	48 f7 d0             	not    %rax
  4022c1:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  4022c6:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  4022cb:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  4022d2:	00 
  4022d3:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4022d9:	0f 87 b4 02 00 00    	ja     402593 <submitr+0x3f2>
  4022df:	48 8d b4 24 20 40 00 	lea    0x4020(%rsp),%rsi
  4022e6:	00 
  4022e7:	b9 00 04 00 00       	mov    $0x400,%ecx
  4022ec:	b8 00 00 00 00       	mov    $0x0,%eax
  4022f1:	48 89 f7             	mov    %rsi,%rdi
  4022f4:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4022f7:	4c 89 ef             	mov    %r13,%rdi
  4022fa:	e8 62 fc ff ff       	callq  401f61 <urlencode>
  4022ff:	85 c0                	test   %eax,%eax
  402301:	0f 88 ff 02 00 00    	js     402606 <submitr+0x465>
  402307:	4c 8d ac 24 20 60 00 	lea    0x6020(%rsp),%r13
  40230e:	00 
  40230f:	4d 89 e1             	mov    %r12,%r9
  402312:	4c 8d 84 24 20 40 00 	lea    0x4020(%rsp),%r8
  402319:	00 
  40231a:	4c 89 f9             	mov    %r15,%rcx
  40231d:	4c 89 f2             	mov    %r14,%rdx
  402320:	be 08 34 40 00       	mov    $0x403408,%esi
  402325:	4c 89 ef             	mov    %r13,%rdi
  402328:	b8 00 00 00 00       	mov    $0x0,%eax
  40232d:	e8 fe ea ff ff       	callq  400e30 <sprintf@plt>
  402332:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402339:	b8 00 00 00 00       	mov    $0x0,%eax
  40233e:	4c 89 ef             	mov    %r13,%rdi
  402341:	f2 ae                	repnz scas %es:(%rdi),%al
  402343:	48 89 ca             	mov    %rcx,%rdx
  402346:	48 f7 d2             	not    %rdx
  402349:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  40234d:	4c 89 ee             	mov    %r13,%rsi
  402350:	89 df                	mov    %ebx,%edi
  402352:	e8 e7 fc ff ff       	callq  40203e <rio_writen>
  402357:	48 85 c0             	test   %rax,%rax
  40235a:	0f 88 31 03 00 00    	js     402691 <submitr+0x4f0>
  402360:	89 de                	mov    %ebx,%esi
  402362:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  402369:	00 
  40236a:	e8 b7 fb ff ff       	callq  401f26 <rio_readinitb>
  40236f:	ba 00 20 00 00       	mov    $0x2000,%edx
  402374:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40237b:	00 
  40237c:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  402383:	00 
  402384:	e8 9c fd ff ff       	callq  402125 <rio_readlineb>
  402389:	48 85 c0             	test   %rax,%rax
  40238c:	0f 8e 6e 03 00 00    	jle    402700 <submitr+0x55f>
  402392:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  402397:	48 8d 8c 24 1c 20 00 	lea    0x201c(%rsp),%rcx
  40239e:	00 
  40239f:	48 8d 94 24 20 20 00 	lea    0x2020(%rsp),%rdx
  4023a6:	00 
  4023a7:	be 7f 34 40 00       	mov    $0x40347f,%esi
  4023ac:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  4023b3:	00 
  4023b4:	b8 00 00 00 00       	mov    $0x0,%eax
  4023b9:	e8 02 ea ff ff       	callq  400dc0 <__isoc99_sscanf@plt>
  4023be:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4023c5:	00 
  4023c6:	bf 96 34 40 00       	mov    $0x403496,%edi
  4023cb:	b9 03 00 00 00       	mov    $0x3,%ecx
  4023d0:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4023d2:	0f 97 c0             	seta   %al
  4023d5:	1c 00                	sbb    $0x0,%al
  4023d7:	84 c0                	test   %al,%al
  4023d9:	0f 84 9f 03 00 00    	je     40277e <submitr+0x5dd>
  4023df:	ba 00 20 00 00       	mov    $0x2000,%edx
  4023e4:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4023eb:	00 
  4023ec:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  4023f3:	00 
  4023f4:	e8 2c fd ff ff       	callq  402125 <rio_readlineb>
  4023f9:	48 85 c0             	test   %rax,%rax
  4023fc:	7f c0                	jg     4023be <submitr+0x21d>
  4023fe:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402405:	3a 20 43 
  402408:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40240f:	20 75 6e 
  402412:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402416:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40241a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402421:	74 6f 20 
  402424:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  40242b:	68 65 61 
  40242e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402432:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402436:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  40243d:	66 72 6f 
  402440:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  402447:	20 72 65 
  40244a:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40244e:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402452:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  402459:	73 65 72 
  40245c:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402460:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  402467:	89 df                	mov    %ebx,%edi
  402469:	e8 c2 e8 ff ff       	callq  400d30 <close@plt>
  40246e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402473:	48 81 c4 48 a0 00 00 	add    $0xa048,%rsp
  40247a:	5b                   	pop    %rbx
  40247b:	5d                   	pop    %rbp
  40247c:	41 5c                	pop    %r12
  40247e:	41 5d                	pop    %r13
  402480:	41 5e                	pop    %r14
  402482:	41 5f                	pop    %r15
  402484:	c3                   	retq   
  402485:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40248c:	3a 20 43 
  40248f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402496:	20 75 6e 
  402499:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40249d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4024a1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4024a8:	74 6f 20 
  4024ab:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  4024b2:	65 20 73 
  4024b5:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4024b9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4024bd:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4024c4:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4024ca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024cf:	eb a2                	jmp    402473 <submitr+0x2d2>
  4024d1:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4024d8:	3a 20 44 
  4024db:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4024e2:	20 75 6e 
  4024e5:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4024e9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4024ed:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4024f4:	74 6f 20 
  4024f7:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4024fe:	76 65 20 
  402501:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402505:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402509:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402510:	72 20 61 
  402513:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402517:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  40251e:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402524:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402528:	89 df                	mov    %ebx,%edi
  40252a:	e8 01 e8 ff ff       	callq  400d30 <close@plt>
  40252f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402534:	e9 3a ff ff ff       	jmpq   402473 <submitr+0x2d2>
  402539:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402540:	3a 20 55 
  402543:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  40254a:	20 74 6f 
  40254d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402551:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402555:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40255c:	65 63 74 
  40255f:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402566:	68 65 20 
  402569:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40256d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402571:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  402578:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  40257e:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  402582:	89 df                	mov    %ebx,%edi
  402584:	e8 a7 e7 ff ff       	callq  400d30 <close@plt>
  402589:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40258e:	e9 e0 fe ff ff       	jmpq   402473 <submitr+0x2d2>
  402593:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40259a:	3a 20 52 
  40259d:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  4025a4:	20 73 74 
  4025a7:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4025ab:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4025af:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4025b6:	74 6f 6f 
  4025b9:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  4025c0:	65 2e 20 
  4025c3:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4025c7:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4025cb:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4025d2:	61 73 65 
  4025d5:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  4025dc:	49 54 52 
  4025df:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4025e3:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4025e7:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  4025ee:	55 46 00 
  4025f1:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4025f5:	89 df                	mov    %ebx,%edi
  4025f7:	e8 34 e7 ff ff       	callq  400d30 <close@plt>
  4025fc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402601:	e9 6d fe ff ff       	jmpq   402473 <submitr+0x2d2>
  402606:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40260d:	3a 20 52 
  402610:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402617:	20 73 74 
  40261a:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40261e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402622:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402629:	63 6f 6e 
  40262c:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402633:	20 61 6e 
  402636:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40263a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40263e:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402645:	67 61 6c 
  402648:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  40264f:	6e 70 72 
  402652:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402656:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40265a:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402661:	6c 65 20 
  402664:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  40266b:	63 74 65 
  40266e:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402672:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402676:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  40267c:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  402680:	89 df                	mov    %ebx,%edi
  402682:	e8 a9 e6 ff ff       	callq  400d30 <close@plt>
  402687:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40268c:	e9 e2 fd ff ff       	jmpq   402473 <submitr+0x2d2>
  402691:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402698:	3a 20 43 
  40269b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4026a2:	20 75 6e 
  4026a5:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4026a9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4026ad:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4026b4:	74 6f 20 
  4026b7:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  4026be:	20 74 6f 
  4026c1:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4026c5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4026c9:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  4026d0:	72 65 73 
  4026d3:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  4026da:	65 72 76 
  4026dd:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4026e1:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4026e5:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  4026eb:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  4026ef:	89 df                	mov    %ebx,%edi
  4026f1:	e8 3a e6 ff ff       	callq  400d30 <close@plt>
  4026f6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026fb:	e9 73 fd ff ff       	jmpq   402473 <submitr+0x2d2>
  402700:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402707:	3a 20 43 
  40270a:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402711:	20 75 6e 
  402714:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402718:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40271c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402723:	74 6f 20 
  402726:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  40272d:	66 69 72 
  402730:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402734:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402738:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  40273f:	61 64 65 
  402742:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  402749:	6d 20 72 
  40274c:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402750:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402754:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  40275b:	20 73 65 
  40275e:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402762:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  402769:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  40276d:	89 df                	mov    %ebx,%edi
  40276f:	e8 bc e5 ff ff       	callq  400d30 <close@plt>
  402774:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402779:	e9 f5 fc ff ff       	jmpq   402473 <submitr+0x2d2>
  40277e:	ba 00 20 00 00       	mov    $0x2000,%edx
  402783:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40278a:	00 
  40278b:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  402792:	00 
  402793:	e8 8d f9 ff ff       	callq  402125 <rio_readlineb>
  402798:	48 85 c0             	test   %rax,%rax
  40279b:	0f 8e 91 00 00 00    	jle    402832 <submitr+0x691>
  4027a1:	8b 94 24 1c 20 00 00 	mov    0x201c(%rsp),%edx
  4027a8:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  4027ae:	0f 85 02 01 00 00    	jne    4028b6 <submitr+0x715>
  4027b4:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4027bb:	00 
  4027bc:	48 89 ef             	mov    %rbp,%rdi
  4027bf:	e8 fc e4 ff ff       	callq  400cc0 <strcpy@plt>
  4027c4:	89 df                	mov    %ebx,%edi
  4027c6:	e8 65 e5 ff ff       	callq  400d30 <close@plt>
  4027cb:	bf 90 34 40 00       	mov    $0x403490,%edi
  4027d0:	b9 04 00 00 00       	mov    $0x4,%ecx
  4027d5:	48 89 ee             	mov    %rbp,%rsi
  4027d8:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4027da:	0f 97 c0             	seta   %al
  4027dd:	1c 00                	sbb    $0x0,%al
  4027df:	0f be c0             	movsbl %al,%eax
  4027e2:	85 c0                	test   %eax,%eax
  4027e4:	0f 84 89 fc ff ff    	je     402473 <submitr+0x2d2>
  4027ea:	bf 94 34 40 00       	mov    $0x403494,%edi
  4027ef:	b9 05 00 00 00       	mov    $0x5,%ecx
  4027f4:	48 89 ee             	mov    %rbp,%rsi
  4027f7:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4027f9:	0f 97 c0             	seta   %al
  4027fc:	1c 00                	sbb    $0x0,%al
  4027fe:	0f be c0             	movsbl %al,%eax
  402801:	85 c0                	test   %eax,%eax
  402803:	0f 84 6a fc ff ff    	je     402473 <submitr+0x2d2>
  402809:	bf 99 34 40 00       	mov    $0x403499,%edi
  40280e:	b9 03 00 00 00       	mov    $0x3,%ecx
  402813:	48 89 ee             	mov    %rbp,%rsi
  402816:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402818:	0f 97 c0             	seta   %al
  40281b:	1c 00                	sbb    $0x0,%al
  40281d:	0f be c0             	movsbl %al,%eax
  402820:	85 c0                	test   %eax,%eax
  402822:	0f 84 4b fc ff ff    	je     402473 <submitr+0x2d2>
  402828:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40282d:	e9 41 fc ff ff       	jmpq   402473 <submitr+0x2d2>
  402832:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402839:	3a 20 43 
  40283c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402843:	20 75 6e 
  402846:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40284a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40284e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402855:	74 6f 20 
  402858:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  40285f:	73 74 61 
  402862:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402866:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40286a:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402871:	65 73 73 
  402874:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  40287b:	72 6f 6d 
  40287e:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402882:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402886:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  40288d:	6c 74 20 
  402890:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402894:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  40289b:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  4028a1:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  4028a5:	89 df                	mov    %ebx,%edi
  4028a7:	e8 84 e4 ff ff       	callq  400d30 <close@plt>
  4028ac:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028b1:	e9 bd fb ff ff       	jmpq   402473 <submitr+0x2d2>
  4028b6:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  4028bb:	be 48 34 40 00       	mov    $0x403448,%esi
  4028c0:	48 89 ef             	mov    %rbp,%rdi
  4028c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4028c8:	e8 63 e5 ff ff       	callq  400e30 <sprintf@plt>
  4028cd:	89 df                	mov    %ebx,%edi
  4028cf:	e8 5c e4 ff ff       	callq  400d30 <close@plt>
  4028d4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028d9:	e9 95 fb ff ff       	jmpq   402473 <submitr+0x2d2>

00000000004028de <init_timeout>:
  4028de:	85 ff                	test   %edi,%edi
  4028e0:	74 24                	je     402906 <init_timeout+0x28>
  4028e2:	53                   	push   %rbx
  4028e3:	89 fb                	mov    %edi,%ebx
  4028e5:	78 18                	js     4028ff <init_timeout+0x21>
  4028e7:	be 38 1f 40 00       	mov    $0x401f38,%esi
  4028ec:	bf 0e 00 00 00       	mov    $0xe,%edi
  4028f1:	e8 5a e4 ff ff       	callq  400d50 <signal@plt>
  4028f6:	89 df                	mov    %ebx,%edi
  4028f8:	e8 23 e4 ff ff       	callq  400d20 <alarm@plt>
  4028fd:	5b                   	pop    %rbx
  4028fe:	c3                   	retq   
  4028ff:	bb 00 00 00 00       	mov    $0x0,%ebx
  402904:	eb e1                	jmp    4028e7 <init_timeout+0x9>
  402906:	c3                   	retq   

0000000000402907 <init_driver>:
  402907:	55                   	push   %rbp
  402908:	53                   	push   %rbx
  402909:	48 83 ec 18          	sub    $0x18,%rsp
  40290d:	48 89 fd             	mov    %rdi,%rbp
  402910:	be 01 00 00 00       	mov    $0x1,%esi
  402915:	bf 0d 00 00 00       	mov    $0xd,%edi
  40291a:	e8 31 e4 ff ff       	callq  400d50 <signal@plt>
  40291f:	be 01 00 00 00       	mov    $0x1,%esi
  402924:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402929:	e8 22 e4 ff ff       	callq  400d50 <signal@plt>
  40292e:	be 01 00 00 00       	mov    $0x1,%esi
  402933:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402938:	e8 13 e4 ff ff       	callq  400d50 <signal@plt>
  40293d:	ba 00 00 00 00       	mov    $0x0,%edx
  402942:	be 01 00 00 00       	mov    $0x1,%esi
  402947:	bf 02 00 00 00       	mov    $0x2,%edi
  40294c:	e8 1f e5 ff ff       	callq  400e70 <socket@plt>
  402951:	85 c0                	test   %eax,%eax
  402953:	0f 88 83 00 00 00    	js     4029dc <init_driver+0xd5>
  402959:	89 c3                	mov    %eax,%ebx
  40295b:	bf c8 2f 40 00       	mov    $0x402fc8,%edi
  402960:	e8 fb e3 ff ff       	callq  400d60 <gethostbyname@plt>
  402965:	48 85 c0             	test   %rax,%rax
  402968:	0f 84 ba 00 00 00    	je     402a28 <init_driver+0x121>
  40296e:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402975:	00 00 
  402977:	c7 44 24 0a 00 00 00 	movl   $0x0,0xa(%rsp)
  40297e:	00 
  40297f:	66 c7 44 24 0e 00 00 	movw   $0x0,0xe(%rsp)
  402986:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  40298c:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402990:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402994:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402999:	48 8b 31             	mov    (%rcx),%rsi
  40299c:	e8 3f e4 ff ff       	callq  400de0 <memmove@plt>
  4029a1:	66 c7 44 24 02 04 1d 	movw   $0x1d04,0x2(%rsp)
  4029a8:	ba 10 00 00 00       	mov    $0x10,%edx
  4029ad:	48 89 e6             	mov    %rsp,%rsi
  4029b0:	89 df                	mov    %ebx,%edi
  4029b2:	e8 99 e4 ff ff       	callq  400e50 <connect@plt>
  4029b7:	85 c0                	test   %eax,%eax
  4029b9:	0f 88 d1 00 00 00    	js     402a90 <init_driver+0x189>
  4029bf:	89 df                	mov    %ebx,%edi
  4029c1:	e8 6a e3 ff ff       	callq  400d30 <close@plt>
  4029c6:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4029cc:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4029d0:	b8 00 00 00 00       	mov    $0x0,%eax
  4029d5:	48 83 c4 18          	add    $0x18,%rsp
  4029d9:	5b                   	pop    %rbx
  4029da:	5d                   	pop    %rbp
  4029db:	c3                   	retq   
  4029dc:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4029e3:	3a 20 43 
  4029e6:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4029ed:	20 75 6e 
  4029f0:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029f4:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4029f8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029ff:	74 6f 20 
  402a02:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402a09:	65 20 73 
  402a0c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a10:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a14:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402a1b:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402a21:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a26:	eb ad                	jmp    4029d5 <init_driver+0xce>
  402a28:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402a2f:	3a 20 44 
  402a32:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402a39:	20 75 6e 
  402a3c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a40:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a44:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a4b:	74 6f 20 
  402a4e:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402a55:	76 65 20 
  402a58:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a5c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a60:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402a67:	72 20 61 
  402a6a:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a6e:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402a75:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402a7b:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402a7f:	89 df                	mov    %ebx,%edi
  402a81:	e8 aa e2 ff ff       	callq  400d30 <close@plt>
  402a86:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a8b:	e9 45 ff ff ff       	jmpq   4029d5 <init_driver+0xce>
  402a90:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402a97:	3a 20 55 
  402a9a:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402aa1:	20 74 6f 
  402aa4:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402aa8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402aac:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402ab3:	65 63 74 
  402ab6:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  402abd:	65 72 76 
  402ac0:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402ac4:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402ac8:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402ace:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402ad2:	89 df                	mov    %ebx,%edi
  402ad4:	e8 57 e2 ff ff       	callq  400d30 <close@plt>
  402ad9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ade:	e9 f2 fe ff ff       	jmpq   4029d5 <init_driver+0xce>

0000000000402ae3 <driver_post>:
  402ae3:	53                   	push   %rbx
  402ae4:	4c 89 cb             	mov    %r9,%rbx
  402ae7:	45 85 c0             	test   %r8d,%r8d
  402aea:	75 18                	jne    402b04 <driver_post+0x21>
  402aec:	48 85 ff             	test   %rdi,%rdi
  402aef:	74 05                	je     402af6 <driver_post+0x13>
  402af1:	80 3f 00             	cmpb   $0x0,(%rdi)
  402af4:	75 30                	jne    402b26 <driver_post+0x43>
  402af6:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402afb:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402aff:	44 89 c0             	mov    %r8d,%eax
  402b02:	5b                   	pop    %rbx
  402b03:	c3                   	retq   
  402b04:	48 89 ce             	mov    %rcx,%rsi
  402b07:	bf 9c 34 40 00       	mov    $0x40349c,%edi
  402b0c:	b8 00 00 00 00       	mov    $0x0,%eax
  402b11:	e8 ea e1 ff ff       	callq  400d00 <printf@plt>
  402b16:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402b1b:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402b1f:	b8 00 00 00 00       	mov    $0x0,%eax
  402b24:	eb dc                	jmp    402b02 <driver_post+0x1f>
  402b26:	48 83 ec 08          	sub    $0x8,%rsp
  402b2a:	41 51                	push   %r9
  402b2c:	49 89 c9             	mov    %rcx,%r9
  402b2f:	49 89 d0             	mov    %rdx,%r8
  402b32:	48 89 f9             	mov    %rdi,%rcx
  402b35:	48 89 f2             	mov    %rsi,%rdx
  402b38:	be 1d 04 00 00       	mov    $0x41d,%esi
  402b3d:	bf c8 2f 40 00       	mov    $0x402fc8,%edi
  402b42:	e8 5a f6 ff ff       	callq  4021a1 <submitr>
  402b47:	48 83 c4 10          	add    $0x10,%rsp
  402b4b:	eb b5                	jmp    402b02 <driver_post+0x1f>

0000000000402b4d <check>:
  402b4d:	89 f8                	mov    %edi,%eax
  402b4f:	c1 e8 1c             	shr    $0x1c,%eax
  402b52:	74 1d                	je     402b71 <check+0x24>
  402b54:	b9 00 00 00 00       	mov    $0x0,%ecx
  402b59:	83 f9 1f             	cmp    $0x1f,%ecx
  402b5c:	7f 0d                	jg     402b6b <check+0x1e>
  402b5e:	89 f8                	mov    %edi,%eax
  402b60:	d3 e8                	shr    %cl,%eax
  402b62:	3c 0a                	cmp    $0xa,%al
  402b64:	74 11                	je     402b77 <check+0x2a>
  402b66:	83 c1 08             	add    $0x8,%ecx
  402b69:	eb ee                	jmp    402b59 <check+0xc>
  402b6b:	b8 01 00 00 00       	mov    $0x1,%eax
  402b70:	c3                   	retq   
  402b71:	b8 00 00 00 00       	mov    $0x0,%eax
  402b76:	c3                   	retq   
  402b77:	b8 00 00 00 00       	mov    $0x0,%eax
  402b7c:	c3                   	retq   

0000000000402b7d <gencookie>:
  402b7d:	53                   	push   %rbx
  402b7e:	83 c7 01             	add    $0x1,%edi
  402b81:	e8 1a e1 ff ff       	callq  400ca0 <srandom@plt>
  402b86:	e8 25 e2 ff ff       	callq  400db0 <random@plt>
  402b8b:	89 c3                	mov    %eax,%ebx
  402b8d:	89 c7                	mov    %eax,%edi
  402b8f:	e8 b9 ff ff ff       	callq  402b4d <check>
  402b94:	85 c0                	test   %eax,%eax
  402b96:	74 ee                	je     402b86 <gencookie+0x9>
  402b98:	89 d8                	mov    %ebx,%eax
  402b9a:	5b                   	pop    %rbx
  402b9b:	c3                   	retq   
  402b9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402ba0 <__libc_csu_init>:
  402ba0:	f3 0f 1e fa          	endbr64 
  402ba4:	41 57                	push   %r15
  402ba6:	49 89 d7             	mov    %rdx,%r15
  402ba9:	41 56                	push   %r14
  402bab:	49 89 f6             	mov    %rsi,%r14
  402bae:	41 55                	push   %r13
  402bb0:	41 89 fd             	mov    %edi,%r13d
  402bb3:	41 54                	push   %r12
  402bb5:	4c 8d 25 44 12 20 00 	lea    0x201244(%rip),%r12        # 603e00 <__frame_dummy_init_array_entry>
  402bbc:	55                   	push   %rbp
  402bbd:	48 8d 2d 44 12 20 00 	lea    0x201244(%rip),%rbp        # 603e08 <__init_array_end>
  402bc4:	53                   	push   %rbx
  402bc5:	4c 29 e5             	sub    %r12,%rbp
  402bc8:	48 83 ec 08          	sub    $0x8,%rsp
  402bcc:	e8 77 e0 ff ff       	callq  400c48 <_init>
  402bd1:	48 c1 fd 03          	sar    $0x3,%rbp
  402bd5:	74 1f                	je     402bf6 <__libc_csu_init+0x56>
  402bd7:	31 db                	xor    %ebx,%ebx
  402bd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402be0:	4c 89 fa             	mov    %r15,%rdx
  402be3:	4c 89 f6             	mov    %r14,%rsi
  402be6:	44 89 ef             	mov    %r13d,%edi
  402be9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402bed:	48 83 c3 01          	add    $0x1,%rbx
  402bf1:	48 39 dd             	cmp    %rbx,%rbp
  402bf4:	75 ea                	jne    402be0 <__libc_csu_init+0x40>
  402bf6:	48 83 c4 08          	add    $0x8,%rsp
  402bfa:	5b                   	pop    %rbx
  402bfb:	5d                   	pop    %rbp
  402bfc:	41 5c                	pop    %r12
  402bfe:	41 5d                	pop    %r13
  402c00:	41 5e                	pop    %r14
  402c02:	41 5f                	pop    %r15
  402c04:	c3                   	retq   

0000000000402c05 <.annobin___libc_csu_fini.start>:
  402c05:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  402c0c:	00 00 00 00 

0000000000402c10 <__libc_csu_fini>:
  402c10:	f3 0f 1e fa          	endbr64 
  402c14:	c3                   	retq   

Disassembly of section .fini:

0000000000402c18 <_fini>:
  402c18:	f3 0f 1e fa          	endbr64 
  402c1c:	48 83 ec 08          	sub    $0x8,%rsp
  402c20:	48 83 c4 08          	add    $0x8,%rsp
  402c24:	c3                   	retq   
