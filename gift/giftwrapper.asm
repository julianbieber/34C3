
34c3/gift/giftwrapper.so:     file format elf64-x86-64


Disassembly of section .init:

0000000000000718 <_init>:
 718:	48 83 ec 08          	sub    $0x8,%rsp
 71c:	48 8b 05 bd 08 20 00 	mov    0x2008bd(%rip),%rax        # 200fe0 <__gmon_start__>
 723:	48 85 c0             	test   %rax,%rax
 726:	74 02                	je     72a <_init+0x12>
 728:	ff d0                	callq  *%rax
 72a:	48 83 c4 08          	add    $0x8,%rsp
 72e:	c3                   	retq   

Disassembly of section .plt:

0000000000000730 <.plt>:
 730:	ff 35 d2 08 20 00    	pushq  0x2008d2(%rip)        # 201008 <_GLOBAL_OFFSET_TABLE_+0x8>
 736:	ff 25 d4 08 20 00    	jmpq   *0x2008d4(%rip)        # 201010 <_GLOBAL_OFFSET_TABLE_+0x10>
 73c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000740 <puts@plt>:
 740:	ff 25 d2 08 20 00    	jmpq   *0x2008d2(%rip)        # 201018 <puts@GLIBC_2.2.5>
 746:	68 00 00 00 00       	pushq  $0x0
 74b:	e9 e0 ff ff ff       	jmpq   730 <.plt>

0000000000000750 <system@plt>:
 750:	ff 25 ca 08 20 00    	jmpq   *0x2008ca(%rip)        # 201020 <system@GLIBC_2.2.5>
 756:	68 01 00 00 00       	pushq  $0x1
 75b:	e9 d0 ff ff ff       	jmpq   730 <.plt>

0000000000000760 <printf@plt>:
 760:	ff 25 c2 08 20 00    	jmpq   *0x2008c2(%rip)        # 201028 <printf@GLIBC_2.2.5>
 766:	68 02 00 00 00       	pushq  $0x2
 76b:	e9 c0 ff ff ff       	jmpq   730 <.plt>

0000000000000770 <read@plt>:
 770:	ff 25 ba 08 20 00    	jmpq   *0x2008ba(%rip)        # 201030 <read@GLIBC_2.2.5>
 776:	68 03 00 00 00       	pushq  $0x3
 77b:	e9 b0 ff ff ff       	jmpq   730 <.plt>

0000000000000780 <strtol@plt>:
 780:	ff 25 b2 08 20 00    	jmpq   *0x2008b2(%rip)        # 201038 <strtol@GLIBC_2.2.5>
 786:	68 04 00 00 00       	pushq  $0x4
 78b:	e9 a0 ff ff ff       	jmpq   730 <.plt>

0000000000000790 <exit@plt>:
 790:	ff 25 aa 08 20 00    	jmpq   *0x2008aa(%rip)        # 201040 <exit@GLIBC_2.2.5>
 796:	68 05 00 00 00       	pushq  $0x5
 79b:	e9 90 ff ff ff       	jmpq   730 <.plt>

Disassembly of section .text:

00000000000007a0 <deregister_tm_clones>:
 7a0:	48 8d 3d b9 08 20 00 	lea    0x2008b9(%rip),%rdi        # 201060 <_edata>
 7a7:	55                   	push   %rbp
 7a8:	48 8d 05 b1 08 20 00 	lea    0x2008b1(%rip),%rax        # 201060 <_edata>
 7af:	48 39 f8             	cmp    %rdi,%rax
 7b2:	48 89 e5             	mov    %rsp,%rbp
 7b5:	74 19                	je     7d0 <deregister_tm_clones+0x30>
 7b7:	48 8b 05 0a 08 20 00 	mov    0x20080a(%rip),%rax        # 200fc8 <_ITM_deregisterTMCloneTable>
 7be:	48 85 c0             	test   %rax,%rax
 7c1:	74 0d                	je     7d0 <deregister_tm_clones+0x30>
 7c3:	5d                   	pop    %rbp
 7c4:	ff e0                	jmpq   *%rax
 7c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 7cd:	00 00 00 
 7d0:	5d                   	pop    %rbp
 7d1:	c3                   	retq   
 7d2:	0f 1f 40 00          	nopl   0x0(%rax)
 7d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 7dd:	00 00 00 

00000000000007e0 <register_tm_clones>:
 7e0:	48 8d 3d 79 08 20 00 	lea    0x200879(%rip),%rdi        # 201060 <_edata>
 7e7:	48 8d 35 72 08 20 00 	lea    0x200872(%rip),%rsi        # 201060 <_edata>
 7ee:	55                   	push   %rbp
 7ef:	48 29 fe             	sub    %rdi,%rsi
 7f2:	48 89 e5             	mov    %rsp,%rbp
 7f5:	48 c1 fe 03          	sar    $0x3,%rsi
 7f9:	48 89 f0             	mov    %rsi,%rax
 7fc:	48 c1 e8 3f          	shr    $0x3f,%rax
 800:	48 01 c6             	add    %rax,%rsi
 803:	48 d1 fe             	sar    %rsi
 806:	74 18                	je     820 <register_tm_clones+0x40>
 808:	48 8b 05 d9 07 20 00 	mov    0x2007d9(%rip),%rax        # 200fe8 <_ITM_registerTMCloneTable>
 80f:	48 85 c0             	test   %rax,%rax
 812:	74 0c                	je     820 <register_tm_clones+0x40>
 814:	5d                   	pop    %rbp
 815:	ff e0                	jmpq   *%rax
 817:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 81e:	00 00 
 820:	5d                   	pop    %rbp
 821:	c3                   	retq   
 822:	0f 1f 40 00          	nopl   0x0(%rax)
 826:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 82d:	00 00 00 

0000000000000830 <__do_global_dtors_aux>:
 830:	80 3d 29 08 20 00 00 	cmpb   $0x0,0x200829(%rip)        # 201060 <_edata>
 837:	75 2f                	jne    868 <__do_global_dtors_aux+0x38>
 839:	48 83 3d af 07 20 00 	cmpq   $0x0,0x2007af(%rip)        # 200ff0 <__cxa_finalize@GLIBC_2.2.5>
 840:	00 
 841:	55                   	push   %rbp
 842:	48 89 e5             	mov    %rsp,%rbp
 845:	74 0d                	je     854 <__do_global_dtors_aux+0x24>
 847:	48 8b 3d fa 07 20 00 	mov    0x2007fa(%rip),%rdi        # 201048 <__dso_handle>
 84e:	ff 15 9c 07 20 00    	callq  *0x20079c(%rip)        # 200ff0 <__cxa_finalize@GLIBC_2.2.5>
 854:	e8 47 ff ff ff       	callq  7a0 <deregister_tm_clones>
 859:	c6 05 00 08 20 00 01 	movb   $0x1,0x200800(%rip)        # 201060 <_edata>
 860:	5d                   	pop    %rbp
 861:	c3                   	retq   
 862:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 868:	f3 c3                	repz retq 
 86a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000870 <frame_dummy>:
 870:	55                   	push   %rbp
 871:	48 89 e5             	mov    %rsp,%rbp
 874:	5d                   	pop    %rbp
 875:	e9 66 ff ff ff       	jmpq   7e0 <register_tm_clones>

000000000000087a <wrap>:
 87a:	41 54                	push   %r12
 87c:	55                   	push   %rbp
 87d:	53                   	push   %rbx
 87e:	48 83 ec 70          	sub    $0x70,%rsp
 882:	48 8d 3d b7 01 00 00 	lea    0x1b7(%rip),%rdi        # a40 <_fini+0x10>
 889:	b8 00 00 00 00       	mov    $0x0,%eax
 88e:	e8 cd fe ff ff       	callq  760 <printf@plt>
 893:	48 8d 74 24 65       	lea    0x65(%rsp),%rsi
 898:	48 c7 44 24 65 00 00 	movq   $0x0,0x65(%rsp)
 89f:	00 00 
 8a1:	66 c7 44 24 6d 00 00 	movw   $0x0,0x6d(%rsp)
 8a8:	c6 44 24 6f 00       	movb   $0x0,0x6f(%rsp)
 8ad:	ba 0a 00 00 00       	mov    $0xa,%edx
 8b2:	bf 01 00 00 00       	mov    $0x1,%edi
 8b7:	e8 b4 fe ff ff       	callq  770 <read@plt>
 8bc:	48 85 c0             	test   %rax,%rax
 8bf:	0f 8e ed 00 00 00    	jle    9b2 <wrap+0x138>
 8c5:	48 8d 7c 24 65       	lea    0x65(%rsp),%rdi
 8ca:	ba 00 00 00 00       	mov    $0x0,%edx
 8cf:	be 00 00 00 00       	mov    $0x0,%esi
 8d4:	e8 a7 fe ff ff       	callq  780 <strtol@plt>
 8d9:	48 89 c5             	mov    %rax,%rbp
 8dc:	66 83 f8 63          	cmp    $0x63,%ax
 8e0:	0f 8f d6 00 00 00    	jg     9bc <wrap+0x142>
 8e6:	48 8d 3d ab 01 00 00 	lea    0x1ab(%rip),%rdi        # a98 <_fini+0x68>
 8ed:	b8 00 00 00 00       	mov    $0x0,%eax
 8f2:	e8 69 fe ff ff       	callq  760 <printf@plt>
 8f7:	48 89 e6             	mov    %rsp,%rsi
 8fa:	b9 0c 00 00 00       	mov    $0xc,%ecx
 8ff:	b8 00 00 00 00       	mov    $0x0,%eax
 904:	48 89 f7             	mov    %rsi,%rdi
 907:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 90a:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
 910:	0f b7 c5             	movzwl %bp,%eax
 913:	48 8d 50 01          	lea    0x1(%rax),%rdx
 917:	bf 01 00 00 00       	mov    $0x1,%edi
 91c:	e8 4f fe ff ff       	callq  770 <read@plt>
 921:	83 e8 01             	sub    $0x1,%eax
 924:	48 63 d0             	movslq %eax,%rdx
 927:	80 3c 14 0a          	cmpb   $0xa,(%rsp,%rdx,1)
 92b:	0f 84 99 00 00 00    	je     9ca <wrap+0x150>
 931:	48 8d 3d 80 01 00 00 	lea    0x180(%rip),%rdi        # ab8 <_fini+0x88>
 938:	e8 03 fe ff ff       	callq  740 <puts@plt>
 93d:	66 85 ed             	test   %bp,%bp
 940:	7e 4f                	jle    991 <wrap+0x117>
 942:	0f bf ed             	movswl %bp,%ebp
 945:	83 ed 01             	sub    $0x1,%ebp
 948:	83 e5 f0             	and    $0xfffffff0,%ebp
 94b:	83 c5 10             	add    $0x10,%ebp
 94e:	bb 00 00 00 00       	mov    $0x0,%ebx
 953:	49 89 e4             	mov    %rsp,%r12
 956:	48 63 f3             	movslq %ebx,%rsi
 959:	4c 01 e6             	add    %r12,%rsi
 95c:	48 8d 3d 3d 02 00 00 	lea    0x23d(%rip),%rdi        # ba0 <_fini+0x170>
 963:	b8 00 00 00 00       	mov    $0x0,%eax
 968:	e8 f3 fd ff ff       	callq  760 <printf@plt>
 96d:	be 13 00 00 00       	mov    $0x13,%esi
 972:	29 c6                	sub    %eax,%esi
 974:	ba 20 00 00 00       	mov    $0x20,%edx
 979:	48 8d 3d 29 02 00 00 	lea    0x229(%rip),%rdi        # ba9 <_fini+0x179>
 980:	b8 00 00 00 00       	mov    $0x0,%eax
 985:	e8 d6 fd ff ff       	callq  760 <printf@plt>
 98a:	83 c3 10             	add    $0x10,%ebx
 98d:	39 eb                	cmp    %ebp,%ebx
 98f:	75 c5                	jne    956 <wrap+0xdc>
 991:	48 8d 3d 90 01 00 00 	lea    0x190(%rip),%rdi        # b28 <_fini+0xf8>
 998:	e8 a3 fd ff ff       	callq  740 <puts@plt>
 99d:	48 8d 3d 0c 02 00 00 	lea    0x20c(%rip),%rdi        # bb0 <_fini+0x180>
 9a4:	e8 97 fd ff ff       	callq  740 <puts@plt>
 9a9:	48 83 c4 70          	add    $0x70,%rsp
 9ad:	5b                   	pop    %rbx
 9ae:	5d                   	pop    %rbp
 9af:	41 5c                	pop    %r12
 9b1:	c3                   	retq   
 9b2:	bf 01 00 00 00       	mov    $0x1,%edi
 9b7:	e8 d4 fd ff ff       	callq  790 <exit@plt>
 9bc:	48 8d 3d b5 00 00 00 	lea    0xb5(%rip),%rdi        # a78 <_fini+0x48>
 9c3:	e8 78 fd ff ff       	callq  740 <puts@plt>
 9c8:	eb df                	jmp    9a9 <wrap+0x12f>
 9ca:	c6 04 14 00          	movb   $0x0,(%rsp,%rdx,1)
 9ce:	e9 5e ff ff ff       	jmpq   931 <wrap+0xb7>

00000000000009d3 <spawn_shell>:
 9d3:	48 83 ec 08          	sub    $0x8,%rsp
 9d7:	48 8d 3d ef 01 00 00 	lea    0x1ef(%rip),%rdi        # bcd <_fini+0x19d>
 9de:	e8 6d fd ff ff       	callq  750 <system@plt>
 9e3:	48 83 c4 08          	add    $0x8,%rsp
 9e7:	c3                   	retq   

00000000000009e8 <initialize_module>:
 9e8:	48 83 ec 08          	sub    $0x8,%rsp
 9ec:	48 89 f0             	mov    %rsi,%rax
 9ef:	48 8b 15 e2 05 20 00 	mov    0x2005e2(%rip),%rdx        # 200fd8 <name@@Base-0x80>
 9f6:	48 8b 12             	mov    (%rdx),%rdx
 9f9:	48 89 17             	mov    %rdx,(%rdi)
 9fc:	48 8b 15 f5 05 20 00 	mov    0x2005f5(%rip),%rdx        # 200ff8 <info@@Base-0x58>
 a03:	48 8b 12             	mov    (%rdx),%rdx
 a06:	48 89 57 08          	mov    %rdx,0x8(%rdi)
 a0a:	48 8b 0d bf 05 20 00 	mov    0x2005bf(%rip),%rcx        # 200fd0 <wrap@@Base+0x200756>
 a11:	48 8d 15 bf 01 00 00 	lea    0x1bf(%rip),%rdx        # bd7 <_fini+0x1a7>
 a18:	48 8d 35 c4 01 00 00 	lea    0x1c4(%rip),%rsi        # be3 <_fini+0x1b3>
 a1f:	48 8d 3d c1 01 00 00 	lea    0x1c1(%rip),%rdi        # be7 <_fini+0x1b7>
 a26:	ff d0                	callq  *%rax
 a28:	48 83 c4 08          	add    $0x8,%rsp
 a2c:	c3                   	retq   

Disassembly of section .fini:

0000000000000a30 <_fini>:
 a30:	48 83 ec 08          	sub    $0x8,%rsp
 a34:	48 83 c4 08          	add    $0x8,%rsp
 a38:	c3                   	retq   
