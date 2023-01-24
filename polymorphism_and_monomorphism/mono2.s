	.file	"mono2.cc"
	.text
	.section	.rodata
.LC0:
	.string	"foo"
	.section	.text._ZN1A2fnEv,"axG",@progbits,_ZN1A2fnEv,comdat
	.align 2
	.weak	_ZN1A2fnEv
	.type	_ZN1A2fnEv, @function
_ZN1A2fnEv:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_ZN1A2fnEv, .-_ZN1A2fnEv
	.section	.rodata
.LC1:
	.string	"bar"
	.section	.text._ZN1B2fnEv,"axG",@progbits,_ZN1B2fnEv,comdat
	.align 2
	.weak	_ZN1B2fnEv
	.type	_ZN1B2fnEv, @function
_ZN1B2fnEv:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN1B2fnEv, .-_ZN1B2fnEv
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_Z4callI1AEvT_
	call	_Z4callI1BEvT_
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.text._Z4callI1AEvT_,"axG",@progbits,_Z4callI1AEvT_,comdat
	.weak	_Z4callI1AEvT_
	.type	_Z4callI1AEvT_, @function
_Z4callI1AEvT_:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	-1(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN1A2fnEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	_Z4callI1AEvT_, .-_Z4callI1AEvT_
	.section	.text._Z4callI1BEvT_,"axG",@progbits,_Z4callI1BEvT_,comdat
	.weak	_Z4callI1BEvT_
	.type	_Z4callI1BEvT_, @function
_Z4callI1BEvT_:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	-1(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN1B2fnEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	_Z4callI1BEvT_, .-_Z4callI1BEvT_
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
