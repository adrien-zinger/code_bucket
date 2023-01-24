	.file	"heterogenous_vector.cc"
	.text
	.section	.text._ZNSt9exceptionC2Ev,"axG",@progbits,_ZNSt9exceptionC5Ev,comdat
	.align 2
	.weak	_ZNSt9exceptionC2Ev
	.type	_ZNSt9exceptionC2Ev, @function
_ZNSt9exceptionC2Ev:
.LFB350:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVSt9exception(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE350:
	.size	_ZNSt9exceptionC2Ev, .-_ZNSt9exceptionC2Ev
	.weak	_ZNSt9exceptionC1Ev
	.set	_ZNSt9exceptionC1Ev,_ZNSt9exceptionC2Ev
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB358:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZNKSt18bad_variant_access4whatEv,"axG",@progbits,_ZNKSt18bad_variant_access4whatEv,comdat
	.align 2
	.weak	_ZNKSt18bad_variant_access4whatEv
	.type	_ZNKSt18bad_variant_access4whatEv, @function
_ZNKSt18bad_variant_access4whatEv:
.LFB1005:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1005:
	.size	_ZNKSt18bad_variant_access4whatEv, .-_ZNKSt18bad_variant_access4whatEv
	.section	.text._ZNSt18bad_variant_accessC2EPKc,"axG",@progbits,_ZNSt18bad_variant_accessC5EPKc,comdat
	.align 2
	.weak	_ZNSt18bad_variant_accessC2EPKc
	.type	_ZNSt18bad_variant_accessC2EPKc, @function
_ZNSt18bad_variant_accessC2EPKc:
.LFB1007:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9exceptionC2Ev
	leaq	16+_ZTVSt18bad_variant_access(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1007:
	.size	_ZNSt18bad_variant_accessC2EPKc, .-_ZNSt18bad_variant_accessC2EPKc
	.weak	_ZNSt18bad_variant_accessC1EPKc
	.set	_ZNSt18bad_variant_accessC1EPKc,_ZNSt18bad_variant_accessC2EPKc
	.section	.text._ZSt26__throw_bad_variant_accessPKc,"axG",@progbits,_ZSt26__throw_bad_variant_accessPKc,comdat
	.weak	_ZSt26__throw_bad_variant_accessPKc
	.type	_ZSt26__throw_bad_variant_accessPKc, @function
_ZSt26__throw_bad_variant_accessPKc:
.LFB1009:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt18bad_variant_accessC1EPKc
	leaq	_ZNSt18bad_variant_accessD1Ev(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt18bad_variant_access(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	__cxa_throw@PLT
	.cfi_endproc
.LFE1009:
	.size	_ZSt26__throw_bad_variant_accessPKc, .-_ZSt26__throw_bad_variant_accessPKc
	.section	.rodata
.LC0:
	.string	"foo"
	.section	.text._ZN1A2fnEv,"axG",@progbits,_ZN1A2fnEv,comdat
	.align 2
	.weak	_ZN1A2fnEv
	.type	_ZN1A2fnEv, @function
_ZN1A2fnEv:
.LFB1035:
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
.LFE1035:
	.size	_ZN1A2fnEv, .-_ZN1A2fnEv
	.section	.rodata
.LC1:
	.string	"bar"
	.section	.text._ZN1B2fnEv,"axG",@progbits,_ZN1B2fnEv,comdat
	.align 2
	.weak	_ZN1B2fnEv
	.type	_ZN1B2fnEv, @function
_ZN1B2fnEv:
.LFB1036:
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
.LFE1036:
	.size	_ZN1B2fnEv, .-_ZN1B2fnEv
	.text
	.align 2
	.type	_ZZ4callSt6vectorISt7variantIJP1AP1BEESaIS5_EEENKUlS2_E_clES2_, @function
_ZZ4callSt6vectorISt7variantIJP1AP1BEESaIS5_EEENKUlS2_E_clES2_:
.LFB1041:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN1A2fnEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1041:
	.size	_ZZ4callSt6vectorISt7variantIJP1AP1BEESaIS5_EEENKUlS2_E_clES2_, .-_ZZ4callSt6vectorISt7variantIJP1AP1BEESaIS5_EEENKUlS2_E_clES2_
	.align 2
	.type	_ZZ4callSt6vectorISt7variantIJP1AP1BEESaIS5_EEENKUlS4_E0_clES4_, @function
_ZZ4callSt6vectorISt7variantIJP1AP1BEESaIS5_EEENKUlS4_E0_clES4_:
.LFB1044:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN1B2fnEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1044:
	.size	_ZZ4callSt6vectorISt7variantIJP1AP1BEESaIS5_EEENKUlS4_E0_clES4_, .-_ZZ4callSt6vectorISt7variantIJP1AP1BEESaIS5_EEENKUlS4_E0_clES4_
	.globl	_Z4callSt6vectorISt7variantIJP1AP1BEESaIS5_EE
	.type	_Z4callSt6vectorISt7variantIJP1AP1BEESaIS5_EE, @function
_Z4callSt6vectorISt7variantIJP1AP1BEESaIS5_EE:
.LFB1037:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE5beginEv
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE3endEv
	movq	%rax, -48(%rbp)
	jmp	.L13
.L14:
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEdeEv
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-57(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt5visitI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS7_EENSt13invoke_resultIT_JDpNSt11conditionalIX21is_lvalue_reference_vIT0_EERNSt19variant_alternativeILm0ENSt16remove_referenceIDTcl4__ascl7declvalISH_EEEEE4typeEE4typeEOSO_E4typeEEE4typeEOSF_DpOSH_
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEppEv
.L13:
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_
	testb	%al, %al
	jne	.L14
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1037:
	.size	_Z4callSt6vectorISt7variantIJP1AP1BEESaIS5_EE, .-_Z4callSt6vectorISt7variantIJP1AP1BEESaIS5_EE
	.section	.text._ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implD2Ev:
.LFB1054:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt7variantIJP1AP1BEEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1054:
	.size	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC2Ev
	.type	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC2Ev, @function
_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC2Ev:
.LFB1056:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1056:
	.size	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC2Ev, .-_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC2Ev
	.weak	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC1Ev
	.set	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC1Ev,_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC2Ev
	.section	.text._ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC2Ev,"axG",@progbits,_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC2Ev
	.type	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC2Ev, @function
_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC2Ev:
.LFB1058:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1058:
	.size	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC2Ev, .-_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC2Ev
	.weak	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC1Ev
	.set	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC1Ev,_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC2Ev
	.text
	.globl	main
	.type	main, @function
main:
.LFB1049:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1049
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC1Ev
	leaq	-82(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE12emplace_backIJS2_EEERS5_DpOT_
	leaq	-81(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE12emplace_backIJS4_EEERS5_DpOT_
	leaq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC1ERKS7_
.LEHE0:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
.LEHB1:
	call	_Z4callSt6vectorISt7variantIJP1AP1BEESaIS5_EE
.LEHE1:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EED1Ev
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EED1Ev
	movl	$0, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L23
	jmp	.L26
.L25:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EED1Ev
	jmp	.L22
.L24:
	endbr64
	movq	%rax, %rbx
.L22:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L26:
	call	__stack_chk_fail@PLT
.L23:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1049:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1049:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1049-.LLSDACSB1049
.LLSDACSB1049:
	.uleb128 .LEHB0-.LFB1049
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L24-.LFB1049
	.uleb128 0
	.uleb128 .LEHB1-.LFB1049
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L25-.LFB1049
	.uleb128 0
	.uleb128 .LEHB2-.LFB1049
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1049:
	.text
	.size	main, .-main
	.section	.text._ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE5beginEv,"axG",@progbits,_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE5beginEv
	.type	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE5beginEv, @function
_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE5beginEv:
.LFB1062:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC1ERKS7_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L29
	call	__stack_chk_fail@PLT
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1062:
	.size	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE5beginEv, .-_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE5beginEv
	.section	.text._ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE3endEv,"axG",@progbits,_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE3endEv
	.type	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE3endEv, @function
_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE3endEv:
.LFB1063:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC1ERKS7_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L32
	call	__stack_chk_fail@PLT
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1063:
	.size	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE3endEv, .-_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE3endEv
	.section	.text._ZN9__gnu_cxxneIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_,"axG",@progbits,_ZN9__gnu_cxxneIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_,comdat
	.weak	_ZN9__gnu_cxxneIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_
	.type	_ZN9__gnu_cxxneIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_, @function
_ZN9__gnu_cxxneIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_:
.LFB1064:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1064:
	.size	_ZN9__gnu_cxxneIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_, .-_ZN9__gnu_cxxneIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEppEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEppEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEppEv:
.LFB1065:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1065:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEppEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEdeEv:
.LFB1066:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1066:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEdeEv
	.section	.text._ZNKSt7variantIJP1AP1BEE22valueless_by_exceptionEv,"axG",@progbits,_ZNKSt7variantIJP1AP1BEE22valueless_by_exceptionEv,comdat
	.align 2
	.weak	_ZNKSt7variantIJP1AP1BEE22valueless_by_exceptionEv
	.type	_ZNKSt7variantIJP1AP1BEE22valueless_by_exceptionEv, @function
_ZNKSt7variantIJP1AP1BEE22valueless_by_exceptionEv:
.LFB1068:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEE8_M_validEv
	xorl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1068:
	.size	_ZNKSt7variantIJP1AP1BEE22valueless_by_exceptionEv, .-_ZNKSt7variantIJP1AP1BEE22valueless_by_exceptionEv
	.section	.text._ZNSt8__detail9__variant4__asIJP1AP1BEEERSt7variantIJDpT_EESA_,"axG",@progbits,_ZNSt8__detail9__variant4__asIJP1AP1BEEERSt7variantIJDpT_EESA_,comdat
	.weak	_ZNSt8__detail9__variant4__asIJP1AP1BEEERSt7variantIJDpT_EESA_
	.type	_ZNSt8__detail9__variant4__asIJP1AP1BEEERSt7variantIJDpT_EESA_, @function
_ZNSt8__detail9__variant4__asIJP1AP1BEEERSt7variantIJDpT_EESA_:
.LFB1069:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1069:
	.size	_ZNSt8__detail9__variant4__asIJP1AP1BEEERSt7variantIJDpT_EESA_, .-_ZNSt8__detail9__variant4__asIJP1AP1BEEERSt7variantIJDpT_EESA_
	.section	.text._ZNSt8__detail9__variant5__getIRNS0_15_Variadic_unionIJP1AP1BEEEEEDcSt16in_place_index_tILm0EEOT_,"axG",@progbits,_ZNSt8__detail9__variant5__getIRNS0_15_Variadic_unionIJP1AP1BEEEEEDcSt16in_place_index_tILm0EEOT_,comdat
	.weak	_ZNSt8__detail9__variant5__getIRNS0_15_Variadic_unionIJP1AP1BEEEEEDcSt16in_place_index_tILm0EEOT_
	.type	_ZNSt8__detail9__variant5__getIRNS0_15_Variadic_unionIJP1AP1BEEEEEDcSt16in_place_index_tILm0EEOT_, @function
_ZNSt8__detail9__variant5__getIRNS0_15_Variadic_unionIJP1AP1BEEEEEDcSt16in_place_index_tILm0EEOT_:
.LFB1081:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEEEOT_RNSt16remove_referenceIS9_E4typeE
	movq	%rax, %rdi
	call	_ZNRSt8__detail9__variant14_UninitializedIP1ALb1EE6_M_getEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1081:
	.size	_ZNSt8__detail9__variant5__getIRNS0_15_Variadic_unionIJP1AP1BEEEEEDcSt16in_place_index_tILm0EEOT_, .-_ZNSt8__detail9__variant5__getIRNS0_15_Variadic_unionIJP1AP1BEEEEEDcSt16in_place_index_tILm0EEOT_
	.section	.text._ZNSt8__detail9__variant5__getILm0ERSt7variantIJP1AP1BEEEEDcOT0_,"axG",@progbits,_ZNSt8__detail9__variant5__getILm0ERSt7variantIJP1AP1BEEEEDcOT0_,comdat
	.weak	_ZNSt8__detail9__variant5__getILm0ERSt7variantIJP1AP1BEEEEDcOT0_
	.type	_ZNSt8__detail9__variant5__getILm0ERSt7variantIJP1AP1BEEEEDcOT0_, @function
_ZNSt8__detail9__variant5__getILm0ERSt7variantIJP1AP1BEEEEDcOT0_:
.LFB1080:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%rax, %rdi
	call	_ZNSt8__detail9__variant5__getIRNS0_15_Variadic_unionIJP1AP1BEEEEEDcSt16in_place_index_tILm0EEOT_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1080:
	.size	_ZNSt8__detail9__variant5__getILm0ERSt7variantIJP1AP1BEEEEDcOT0_, .-_ZNSt8__detail9__variant5__getILm0ERSt7variantIJP1AP1BEEEEDcOT0_
	.text
	.type	_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESt16integer_sequenceImJLm0EEEE28__element_by_index_or_cookieILm0ESJ_EEDcOT0_, @function
_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESt16integer_sequenceImJLm0EEEE28__element_by_index_or_cookieILm0ESJ_EEDcOT0_:
.LFB1079:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%rax, %rdi
	call	_ZNSt8__detail9__variant5__getILm0ERSt7variantIJP1AP1BEEEEDcOT0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1079:
	.size	_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESt16integer_sequenceImJLm0EEEE28__element_by_index_or_cookieILm0ESJ_EEDcOT0_, .-_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESt16integer_sequenceImJLm0EEEE28__element_by_index_or_cookieILm0ESJ_EEDcOT0_
	.type	_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SJ_, @function
_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SJ_:
.LFB1078:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%rax, %rdi
	call	_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESt16integer_sequenceImJLm0EEEE28__element_by_index_or_cookieILm0ESJ_EEDcOT0_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEEOT_RNSt16remove_referenceISE_E4typeE
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt8__invokeI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS4_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1078:
	.size	_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SJ_, .-_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SJ_
	.section	.rodata
	.type	_ZSt9is_same_vINSt8__detail9__variant12_Multi_arrayIPFNS1_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESM_E, @object
	.size	_ZSt9is_same_vINSt8__detail9__variant12_Multi_arrayIPFNS1_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESM_E, 1
_ZSt9is_same_vINSt8__detail9__variant12_Multi_arrayIPFNS1_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESM_E:
	.byte	1
	.section	.text._ZNSt8__detail9__variant5__getIRNS0_15_Variadic_unionIJP1BEEEEEDcSt16in_place_index_tILm0EEOT_,"axG",@progbits,_ZNSt8__detail9__variant5__getIRNS0_15_Variadic_unionIJP1BEEEEEDcSt16in_place_index_tILm0EEOT_,comdat
	.weak	_ZNSt8__detail9__variant5__getIRNS0_15_Variadic_unionIJP1BEEEEEDcSt16in_place_index_tILm0EEOT_
	.type	_ZNSt8__detail9__variant5__getIRNS0_15_Variadic_unionIJP1BEEEEEDcSt16in_place_index_tILm0EEOT_, @function
_ZNSt8__detail9__variant5__getIRNS0_15_Variadic_unionIJP1BEEEEEDcSt16in_place_index_tILm0EEOT_:
.LFB1089:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRNSt8__detail9__variant15_Variadic_unionIJP1BEEEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%rax, %rdi
	call	_ZNRSt8__detail9__variant14_UninitializedIP1BLb1EE6_M_getEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1089:
	.size	_ZNSt8__detail9__variant5__getIRNS0_15_Variadic_unionIJP1BEEEEEDcSt16in_place_index_tILm0EEOT_, .-_ZNSt8__detail9__variant5__getIRNS0_15_Variadic_unionIJP1BEEEEEDcSt16in_place_index_tILm0EEOT_
	.section	.text._ZNSt8__detail9__variant5__getILm1ERNS0_15_Variadic_unionIJP1AP1BEEEEEDcSt16in_place_index_tIXT_EEOT0_,"axG",@progbits,_ZNSt8__detail9__variant5__getILm1ERNS0_15_Variadic_unionIJP1AP1BEEEEEDcSt16in_place_index_tIXT_EEOT0_,comdat
	.weak	_ZNSt8__detail9__variant5__getILm1ERNS0_15_Variadic_unionIJP1AP1BEEEEEDcSt16in_place_index_tIXT_EEOT0_
	.type	_ZNSt8__detail9__variant5__getILm1ERNS0_15_Variadic_unionIJP1AP1BEEEEEDcSt16in_place_index_tIXT_EEOT0_, @function
_ZNSt8__detail9__variant5__getILm1ERNS0_15_Variadic_unionIJP1AP1BEEEEEDcSt16in_place_index_tIXT_EEOT0_:
.LFB1088:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEEEOT_RNSt16remove_referenceIS9_E4typeE
	movq	%rax, %rdi
	call	_ZNSt8__detail9__variant5__getIRNS0_15_Variadic_unionIJP1BEEEEEDcSt16in_place_index_tILm0EEOT_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1088:
	.size	_ZNSt8__detail9__variant5__getILm1ERNS0_15_Variadic_unionIJP1AP1BEEEEEDcSt16in_place_index_tIXT_EEOT0_, .-_ZNSt8__detail9__variant5__getILm1ERNS0_15_Variadic_unionIJP1AP1BEEEEEDcSt16in_place_index_tIXT_EEOT0_
	.section	.text._ZNSt8__detail9__variant5__getILm1ERSt7variantIJP1AP1BEEEEDcOT0_,"axG",@progbits,_ZNSt8__detail9__variant5__getILm1ERSt7variantIJP1AP1BEEEEDcOT0_,comdat
	.weak	_ZNSt8__detail9__variant5__getILm1ERSt7variantIJP1AP1BEEEEDcOT0_
	.type	_ZNSt8__detail9__variant5__getILm1ERSt7variantIJP1AP1BEEEEDcOT0_, @function
_ZNSt8__detail9__variant5__getILm1ERSt7variantIJP1AP1BEEEEDcOT0_:
.LFB1087:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%rax, %rdi
	call	_ZNSt8__detail9__variant5__getILm1ERNS0_15_Variadic_unionIJP1AP1BEEEEEDcSt16in_place_index_tIXT_EEOT0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1087:
	.size	_ZNSt8__detail9__variant5__getILm1ERSt7variantIJP1AP1BEEEEDcOT0_, .-_ZNSt8__detail9__variant5__getILm1ERSt7variantIJP1AP1BEEEEDcOT0_
	.text
	.type	_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESt16integer_sequenceImJLm1EEEE28__element_by_index_or_cookieILm1ESJ_EEDcOT0_, @function
_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESt16integer_sequenceImJLm1EEEE28__element_by_index_or_cookieILm1ESJ_EEDcOT0_:
.LFB1086:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%rax, %rdi
	call	_ZNSt8__detail9__variant5__getILm1ERSt7variantIJP1AP1BEEEEDcOT0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1086:
	.size	_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESt16integer_sequenceImJLm1EEEE28__element_by_index_or_cookieILm1ESJ_EEDcOT0_, .-_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESt16integer_sequenceImJLm1EEEE28__element_by_index_or_cookieILm1ESJ_EEDcOT0_
	.type	_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SJ_, @function
_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SJ_:
.LFB1085:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%rax, %rdi
	call	_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESt16integer_sequenceImJLm1EEEE28__element_by_index_or_cookieILm1ESJ_EEDcOT0_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEEOT_RNSt16remove_referenceISE_E4typeE
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt8__invokeI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS6_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1085:
	.size	_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SJ_, .-_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SJ_
	.align 2
	.type	_ZNKSt8__detail9__variant12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EERSB_EJLm2EEE9_M_accessIJEEEDcmDpT_, @function
_ZNKSt8__detail9__variant12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EERSB_EJLm2EEE9_M_accessIJEEEDcmDpT_:
.LFB1091:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	_ZNKSt8__detail9__variant12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EERSB_EJEE9_M_accessEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1091:
	.size	_ZNKSt8__detail9__variant12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EERSB_EJLm2EEE9_M_accessIJEEEDcmDpT_, .-_ZNKSt8__detail9__variant12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EERSB_EJLm2EEE9_M_accessIJEEEDcmDpT_
	.type	_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEE10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EEJRSB_EEDcOT0_DpOT1_, @function
_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEE10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EEJRSB_EEDcOT0_DpOT1_:
.LFB1072:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EEJRSB_EE9_S_vtableE(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7variantIJP1AP1BEE5indexEv
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt8__detail9__variant12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EERSB_EJLm2EEE9_M_accessIJEEEDcmDpT_
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%rax, %r12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEEOT_RNSt16remove_referenceISD_E4typeE
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	*%rbx
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1072:
	.size	_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEE10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EEJRSB_EEDcOT0_DpOT1_, .-_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEE10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EEJRSB_EEDcOT0_DpOT1_
	.section	.rodata
	.align 8
.LC2:
	.string	"std::visit: variant is valueless"
	.text
	.type	_ZSt5visitI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS7_EENSt13invoke_resultIT_JDpNSt11conditionalIX21is_lvalue_reference_vIT0_EERNSt19variant_alternativeILm0ENSt16remove_referenceIDTcl4__ascl7declvalISH_EEEEE4typeEE4typeEOSO_E4typeEEE4typeEOSF_DpOSH_, @function
_ZSt5visitI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS7_EENSt13invoke_resultIT_JDpNSt11conditionalIX21is_lvalue_reference_vIT0_EERNSt19variant_alternativeILm0ENSt16remove_referenceIDTcl4__ascl7declvalISH_EEEEE4typeEE4typeEOSO_E4typeEEE4typeEOSF_DpOSH_:
.LFB1067:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail9__variant4__asIJP1AP1BEEERSt7variantIJDpT_EESA_
	movq	%rax, %rdi
	call	_ZNKSt7variantIJP1AP1BEE22valueless_by_exceptionEv
	testb	%al, %al
	je	.L66
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	_ZSt26__throw_bad_variant_accessPKc
.L66:
	movb	$1, -1(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEEOT_RNSt16remove_referenceISD_E4typeE
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEE10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EEJRSB_EEDcOT0_DpOT1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1067:
	.size	_ZSt5visitI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS7_EENSt13invoke_resultIT_JDpNSt11conditionalIX21is_lvalue_reference_vIT0_EERNSt19variant_alternativeILm0ENSt16remove_referenceIDTcl4__ascl7declvalISH_EEEEE4typeEE4typeEOSO_E4typeEEE4typeEOSF_DpOSH_, .-_ZSt5visitI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS7_EENSt13invoke_resultIT_JDpNSt11conditionalIX21is_lvalue_reference_vIT0_EERNSt19variant_alternativeILm0ENSt16remove_referenceIDTcl4__ascl7declvalISH_EEEEE4typeEE4typeEOSO_E4typeEEE4typeEOSF_DpOSH_
	.section	.text._ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC2Ev:
.LFB1093:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt7variantIJP1AP1BEEEC2Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1093:
	.size	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC2Ev
	.section	.text._ZNSaISt7variantIJP1AP1BEEED2Ev,"axG",@progbits,_ZNSaISt7variantIJP1AP1BEEED5Ev,comdat
	.align 2
	.weak	_ZNSaISt7variantIJP1AP1BEEED2Ev
	.type	_ZNSaISt7variantIJP1AP1BEEED2Ev, @function
_ZNSaISt7variantIJP1AP1BEEED2Ev:
.LFB1096:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1096:
	.size	_ZNSaISt7variantIJP1AP1BEEED2Ev, .-_ZNSaISt7variantIJP1AP1BEEED2Ev
	.weak	_ZNSaISt7variantIJP1AP1BEEED1Ev
	.set	_ZNSaISt7variantIJP1AP1BEEED1Ev,_ZNSaISt7variantIJP1AP1BEEED2Ev
	.section	.text._ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EED2Ev
	.type	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EED2Ev, @function
_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EED2Ev:
.LFB1099:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1099
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$4, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE13_M_deallocateEPS5_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1099:
	.section	.gcc_except_table
.LLSDA1099:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1099-.LLSDACSB1099
.LLSDACSB1099:
.LLSDACSE1099:
	.section	.text._ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EED2Ev, .-_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EED2Ev
	.weak	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EED1Ev
	.set	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EED1Ev,_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EED2Ev
	.section	.text._ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EED2Ev,"axG",@progbits,_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EED2Ev
	.type	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EED2Ev, @function
_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EED2Ev:
.LFB1102:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1102
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPSt7variantIJP1AP1BEES5_EvT_S7_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1102:
	.section	.gcc_except_table
.LLSDA1102:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1102-.LLSDACSB1102
.LLSDACSB1102:
.LLSDACSE1102:
	.section	.text._ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EED2Ev,"axG",@progbits,_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EED5Ev,comdat
	.size	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EED2Ev, .-_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EED2Ev
	.weak	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EED1Ev
	.set	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EED1Ev,_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EED2Ev
	.section	.text._ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE12emplace_backIJS2_EEERS5_DpOT_,"axG",@progbits,_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE12emplace_backIJS2_EEERS5_DpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE12emplace_backIJS2_EEERS5_DpOT_
	.type	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE12emplace_backIJS2_EEERS5_DpOT_, @function
_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE12emplace_backIJS2_EEERS5_DpOT_:
.LFB1104:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L73
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1AEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS2_EEEvRS6_PT_DpOT0_
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L74
.L73:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1AEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE3endEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
.L74:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE4backEv
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1104:
	.size	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE12emplace_backIJS2_EEERS5_DpOT_, .-_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE12emplace_backIJS2_EEERS5_DpOT_
	.section	.text._ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE12emplace_backIJS4_EEERS5_DpOT_,"axG",@progbits,_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE12emplace_backIJS4_EEERS5_DpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE12emplace_backIJS4_EEERS5_DpOT_
	.type	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE12emplace_backIJS4_EEERS5_DpOT_, @function
_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE12emplace_backIJS4_EEERS5_DpOT_:
.LFB1106:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L77
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1BEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS4_EEEvRS6_PT_DpOT0_
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L78
.L77:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1BEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE3endEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
.L78:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE4backEv
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1106:
	.size	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE12emplace_backIJS4_EEERS5_DpOT_, .-_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE12emplace_backIJS4_EEERS5_DpOT_
	.section	.text._ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC2ERKS7_,"axG",@progbits,_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC5ERKS7_,comdat
	.align 2
	.weak	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC2ERKS7_
	.type	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC2ERKS7_, @function
_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC2ERKS7_:
.LFB1108:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1108
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	leaq	-41(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZN9__gnu_cxx14__alloc_traitsISaISt7variantIJP1AP1BEEES6_E17_S_select_on_copyERKS7_
.LEHE3:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE4sizeEv
	movq	%rax, %rcx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
.LEHB4:
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC2EmRKS6_
.LEHE4:
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt7variantIJP1AP1BEEED1Ev
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movq	(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE3endEv
	movq	%rax, %r12
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE5beginEv
	movq	%r13, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
.LEHB5:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E
.LEHE5:
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	je	.L83
	jmp	.L86
.L84:
	endbr64
	movq	%rax, %rbx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt7variantIJP1AP1BEEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB6:
	call	_Unwind_Resume@PLT
.L85:
	endbr64
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE6:
.L86:
	call	__stack_chk_fail@PLT
.L83:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1108:
	.section	.gcc_except_table
.LLSDA1108:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1108-.LLSDACSB1108
.LLSDACSB1108:
	.uleb128 .LEHB3-.LFB1108
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB1108
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L84-.LFB1108
	.uleb128 0
	.uleb128 .LEHB5-.LFB1108
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L85-.LFB1108
	.uleb128 0
	.uleb128 .LEHB6-.LFB1108
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE1108:
	.section	.text._ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC2ERKS7_,"axG",@progbits,_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC5ERKS7_,comdat
	.size	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC2ERKS7_, .-_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC2ERKS7_
	.weak	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC1ERKS7_
	.set	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC1ERKS7_,_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EEC2ERKS7_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC2ERKS7_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC5ERKS7_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC2ERKS7_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC2ERKS7_, @function
_ZN9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC2ERKS7_:
.LFB1111:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1111:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC2ERKS7_, .-_ZN9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC2ERKS7_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC1ERKS7_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC1ERKS7_,_ZN9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC2ERKS7_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv:
.LFB1113:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1113:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv
	.section	.text._ZNKSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEE8_M_validEv,"axG",@progbits,_ZNKSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEE8_M_validEv,comdat
	.align 2
	.weak	_ZNKSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEE8_M_validEv
	.type	_ZNKSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEE8_M_validEv, @function
_ZNKSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEE8_M_validEv:
.LFB1114:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1114:
	.size	_ZNKSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEE8_M_validEv, .-_ZNKSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEE8_M_validEv
	.text
	.type	_ZSt7forwardI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEEOT_RNSt16remove_referenceISD_E4typeE, @function
_ZSt7forwardI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEEOT_RNSt16remove_referenceISD_E4typeE:
.LFB1115:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1115:
	.size	_ZSt7forwardI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEEOT_RNSt16remove_referenceISD_E4typeE, .-_ZSt7forwardI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEEOT_RNSt16remove_referenceISD_E4typeE
	.type	_ZSt7forwardIO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEEOT_RNSt16remove_referenceISE_E4typeE, @function
_ZSt7forwardIO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEEOT_RNSt16remove_referenceISE_E4typeE:
.LFB1116:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1116:
	.size	_ZSt7forwardIO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEEOT_RNSt16remove_referenceISE_E4typeE, .-_ZSt7forwardIO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEEOT_RNSt16remove_referenceISE_E4typeE
	.section	.text._ZSt7forwardIRSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS7_E4typeE,"axG",@progbits,_ZSt7forwardIRSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS7_E4typeE,comdat
	.weak	_ZSt7forwardIRSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS7_E4typeE
	.type	_ZSt7forwardIRSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS7_E4typeE, @function
_ZSt7forwardIRSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS7_E4typeE:
.LFB1117:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1117:
	.size	_ZSt7forwardIRSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS7_E4typeE, .-_ZSt7forwardIRSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS7_E4typeE
	.section	.text._ZSt7forwardIRNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEEEOT_RNSt16remove_referenceIS9_E4typeE,"axG",@progbits,_ZSt7forwardIRNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEEEOT_RNSt16remove_referenceIS9_E4typeE,comdat
	.weak	_ZSt7forwardIRNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEEEOT_RNSt16remove_referenceIS9_E4typeE
	.type	_ZSt7forwardIRNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEEEOT_RNSt16remove_referenceIS9_E4typeE, @function
_ZSt7forwardIRNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEEEOT_RNSt16remove_referenceIS9_E4typeE:
.LFB1118:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1118:
	.size	_ZSt7forwardIRNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEEEOT_RNSt16remove_referenceIS9_E4typeE, .-_ZSt7forwardIRNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEEEOT_RNSt16remove_referenceIS9_E4typeE
	.section	.text._ZNRSt8__detail9__variant14_UninitializedIP1ALb1EE6_M_getEv,"axG",@progbits,_ZNRSt8__detail9__variant14_UninitializedIP1ALb1EE6_M_getEv,comdat
	.align 2
	.weak	_ZNRSt8__detail9__variant14_UninitializedIP1ALb1EE6_M_getEv
	.type	_ZNRSt8__detail9__variant14_UninitializedIP1ALb1EE6_M_getEv, @function
_ZNRSt8__detail9__variant14_UninitializedIP1ALb1EE6_M_getEv:
.LFB1119:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1119:
	.size	_ZNRSt8__detail9__variant14_UninitializedIP1ALb1EE6_M_getEv, .-_ZNRSt8__detail9__variant14_UninitializedIP1ALb1EE6_M_getEv
	.text
	.type	_ZSt8__invokeI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS4_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_, @function
_ZSt8__invokeI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS4_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_:
.LFB1120:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRP1AEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEEOT_RNSt16remove_referenceISD_E4typeE
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt13__invoke_implIv10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS4_EET_St14__invoke_otherOT0_DpOT1_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1120:
	.size	_ZSt8__invokeI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS4_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_, .-_ZSt8__invokeI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS4_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_
	.section	.text._ZSt7forwardIRNSt8__detail9__variant15_Variadic_unionIJP1BEEEEOT_RNSt16remove_referenceIS7_E4typeE,"axG",@progbits,_ZSt7forwardIRNSt8__detail9__variant15_Variadic_unionIJP1BEEEEOT_RNSt16remove_referenceIS7_E4typeE,comdat
	.weak	_ZSt7forwardIRNSt8__detail9__variant15_Variadic_unionIJP1BEEEEOT_RNSt16remove_referenceIS7_E4typeE
	.type	_ZSt7forwardIRNSt8__detail9__variant15_Variadic_unionIJP1BEEEEOT_RNSt16remove_referenceIS7_E4typeE, @function
_ZSt7forwardIRNSt8__detail9__variant15_Variadic_unionIJP1BEEEEOT_RNSt16remove_referenceIS7_E4typeE:
.LFB1121:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1121:
	.size	_ZSt7forwardIRNSt8__detail9__variant15_Variadic_unionIJP1BEEEEOT_RNSt16remove_referenceIS7_E4typeE, .-_ZSt7forwardIRNSt8__detail9__variant15_Variadic_unionIJP1BEEEEOT_RNSt16remove_referenceIS7_E4typeE
	.section	.text._ZNRSt8__detail9__variant14_UninitializedIP1BLb1EE6_M_getEv,"axG",@progbits,_ZNRSt8__detail9__variant14_UninitializedIP1BLb1EE6_M_getEv,comdat
	.align 2
	.weak	_ZNRSt8__detail9__variant14_UninitializedIP1BLb1EE6_M_getEv
	.type	_ZNRSt8__detail9__variant14_UninitializedIP1BLb1EE6_M_getEv, @function
_ZNRSt8__detail9__variant14_UninitializedIP1BLb1EE6_M_getEv:
.LFB1122:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1122:
	.size	_ZNRSt8__detail9__variant14_UninitializedIP1BLb1EE6_M_getEv, .-_ZNRSt8__detail9__variant14_UninitializedIP1BLb1EE6_M_getEv
	.text
	.type	_ZSt8__invokeI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS6_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_, @function
_ZSt8__invokeI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS6_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_:
.LFB1123:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRP1BEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEEOT_RNSt16remove_referenceISD_E4typeE
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt13__invoke_implIv10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS6_EET_St14__invoke_otherOT0_DpOT1_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1123:
	.size	_ZSt8__invokeI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS6_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_, .-_ZSt8__invokeI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS6_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_
	.section	.text._ZNKSt7variantIJP1AP1BEE5indexEv,"axG",@progbits,_ZNKSt7variantIJP1AP1BEE5indexEv,comdat
	.align 2
	.weak	_ZNKSt7variantIJP1AP1BEE5indexEv
	.type	_ZNKSt7variantIJP1AP1BEE5indexEv, @function
_ZNKSt7variantIJP1AP1BEE5indexEv:
.LFB1124:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1124:
	.size	_ZNKSt7variantIJP1AP1BEE5indexEv, .-_ZNKSt7variantIJP1AP1BEE5indexEv
	.text
	.align 2
	.type	_ZNKSt8__detail9__variant12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EERSB_EJEE9_M_accessEv, @function
_ZNKSt8__detail9__variant12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EERSB_EJEE9_M_accessEv:
.LFB1125:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1125:
	.size	_ZNKSt8__detail9__variant12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EERSB_EJEE9_M_accessEv, .-_ZNKSt8__detail9__variant12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EERSB_EJEE9_M_accessEv
	.section	.text._ZNSaISt7variantIJP1AP1BEEEC2Ev,"axG",@progbits,_ZNSaISt7variantIJP1AP1BEEEC5Ev,comdat
	.align 2
	.weak	_ZNSaISt7variantIJP1AP1BEEEC2Ev
	.type	_ZNSaISt7variantIJP1AP1BEEEC2Ev, @function
_ZNSaISt7variantIJP1AP1BEEEC2Ev:
.LFB1127:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1127:
	.size	_ZNSaISt7variantIJP1AP1BEEEC2Ev, .-_ZNSaISt7variantIJP1AP1BEEEC2Ev
	.weak	_ZNSaISt7variantIJP1AP1BEEEC1Ev
	.set	_ZNSaISt7variantIJP1AP1BEEEC1Ev,_ZNSaISt7variantIJP1AP1BEEEC2Ev
	.section	.text._ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE17_Vector_impl_dataC2Ev:
.LFB1130:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1130:
	.size	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE17_Vector_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEED2Ev:
.LFB1133:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1133:
	.size	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEED1Ev,_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEED2Ev
	.section	.text._ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE13_M_deallocateEPS5_m,"axG",@progbits,_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE13_M_deallocateEPS5_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE13_M_deallocateEPS5_m
	.type	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE13_M_deallocateEPS5_m, @function
_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE13_M_deallocateEPS5_m:
.LFB1135:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L119
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE10deallocateERS6_PS5_m
.L119:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1135:
	.size	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE13_M_deallocateEPS5_m, .-_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE13_M_deallocateEPS5_m
	.section	.text._ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv:
.LFB1136:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1136:
	.size	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPSt7variantIJP1AP1BEES5_EvT_S7_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPSt7variantIJP1AP1BEES5_EvT_S7_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPSt7variantIJP1AP1BEES5_EvT_S7_RSaIT0_E
	.type	_ZSt8_DestroyIPSt7variantIJP1AP1BEES5_EvT_S7_RSaIT0_E, @function
_ZSt8_DestroyIPSt7variantIJP1AP1BEES5_EvT_S7_RSaIT0_E:
.LFB1137:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPSt7variantIJP1AP1BEEEvT_S7_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1137:
	.size	_ZSt8_DestroyIPSt7variantIJP1AP1BEES5_EvT_S7_RSaIT0_E, .-_ZSt8_DestroyIPSt7variantIJP1AP1BEES5_EvT_S7_RSaIT0_E
	.section	.text._ZSt7forwardIP1AEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIP1AEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIP1AEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIP1AEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIP1AEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB1138:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1138:
	.size	_ZSt7forwardIP1AEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIP1AEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS2_EEEvRS6_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS2_EEEvRS6_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS2_EEEvRS6_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS2_EEEvRS6_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS2_EEEvRS6_PT_DpOT0_:
.LFB1139:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1AEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS3_EEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1139:
	.size	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS2_EEEvRS6_PT_DpOT0_, .-_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS2_EEEvRS6_PT_DpOT0_
	.section	.rodata
.LC3:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
	.type	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, @function
_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:
.LFB1140:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE12_M_check_lenEmPKc
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE5beginEv
	movq	%rax, -80(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE11_M_allocateEm
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1AEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rax, %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS2_EEEvRS6_PT_DpOT0_
	movq	$0, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv
	movq	(%rax), %rsi
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_
	movq	%rax, -32(%rbp)
	addq	$16, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-64(%rbp), %rdx
	sarq	$4, %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE13_M_deallocateEPS5_m
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L127
	call	__stack_chk_fail@PLT
.L127:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1140:
	.size	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, .-_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
	.section	.text._ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE4backEv,"axG",@progbits,_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE4backEv,comdat
	.align 2
	.weak	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE4backEv
	.type	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE4backEv, @function
_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE4backEv:
.LFB1144:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE3endEv
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEmiEl
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEdeEv
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L130
	call	__stack_chk_fail@PLT
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1144:
	.size	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE4backEv, .-_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE4backEv
	.section	.text._ZSt7forwardIP1BEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIP1BEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIP1BEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIP1BEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIP1BEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB1145:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1145:
	.size	_ZSt7forwardIP1BEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIP1BEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS4_EEEvRS6_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS4_EEEvRS6_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS4_EEEvRS6_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS4_EEEvRS6_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS4_EEEvRS6_PT_DpOT0_:
.LFB1146:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1BEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS5_EEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1146:
	.size	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS4_EEEvRS6_PT_DpOT0_, .-_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS4_EEEvRS6_PT_DpOT0_
	.section	.text._ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
	.type	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, @function
_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:
.LFB1147:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE12_M_check_lenEmPKc
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE5beginEv
	movq	%rax, -80(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE11_M_allocateEm
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1BEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rax, %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS4_EEEvRS6_PT_DpOT0_
	movq	$0, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv
	movq	(%rax), %rsi
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_
	movq	%rax, -32(%rbp)
	addq	$16, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-64(%rbp), %rdx
	sarq	$4, %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE13_M_deallocateEPS5_m
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L135
	call	__stack_chk_fail@PLT
.L135:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1147:
	.size	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, .-_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
	.section	.text._ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE4sizeEv
	.type	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE4sizeEv, @function
_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE4sizeEv:
.LFB1148:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$4, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1148:
	.size	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE4sizeEv, .-_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE4sizeEv
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaISt7variantIJP1AP1BEEES6_E17_S_select_on_copyERKS7_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaISt7variantIJP1AP1BEEES6_E17_S_select_on_copyERKS7_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaISt7variantIJP1AP1BEEES6_E17_S_select_on_copyERKS7_
	.type	_ZN9__gnu_cxx14__alloc_traitsISaISt7variantIJP1AP1BEEES6_E17_S_select_on_copyERKS7_, @function
_ZN9__gnu_cxx14__alloc_traitsISaISt7variantIJP1AP1BEEES6_E17_S_select_on_copyERKS7_:
.LFB1149:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE37select_on_container_copy_constructionERKS6_
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L140
	call	__stack_chk_fail@PLT
.L140:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1149:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaISt7variantIJP1AP1BEEES6_E17_S_select_on_copyERKS7_, .-_ZN9__gnu_cxx14__alloc_traitsISaISt7variantIJP1AP1BEEES6_E17_S_select_on_copyERKS7_
	.section	.text._ZNKSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv:
.LFB1150:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1150:
	.size	_ZNKSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC2EmRKS6_,"axG",@progbits,_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC5EmRKS6_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC2EmRKS6_
	.type	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC2EmRKS6_, @function
_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC2EmRKS6_:
.LFB1152:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1152
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC1ERKS6_
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB7:
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE17_M_create_storageEm
.LEHE7:
	jmp	.L146
.L145:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L146:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1152:
	.section	.gcc_except_table
.LLSDA1152:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1152-.LLSDACSB1152
.LLSDACSB1152:
	.uleb128 .LEHB7-.LFB1152
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L145-.LFB1152
	.uleb128 0
	.uleb128 .LEHB8-.LFB1152
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE1152:
	.section	.text._ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC2EmRKS6_,"axG",@progbits,_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC5EmRKS6_,comdat
	.size	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC2EmRKS6_, .-_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC2EmRKS6_
	.weak	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC1EmRKS6_
	.set	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC1EmRKS6_,_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EEC2EmRKS6_
	.section	.text._ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE5beginEv,"axG",@progbits,_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE5beginEv
	.type	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE5beginEv, @function
_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE5beginEv:
.LFB1154:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC1ERKS8_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L149
	call	__stack_chk_fail@PLT
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1154:
	.size	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE5beginEv, .-_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE5beginEv
	.section	.text._ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE3endEv,"axG",@progbits,_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE3endEv
	.type	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE3endEv, @function
_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE3endEv:
.LFB1155:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC1ERKS8_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L152
	call	__stack_chk_fail@PLT
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1155:
	.size	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE3endEv, .-_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE3endEv
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E:
.LFB1156:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1156:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E
	.section	.text._ZSt7forwardIRP1AEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRP1AEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRP1AEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRP1AEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIRP1AEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB1157:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1157:
	.size	_ZSt7forwardIRP1AEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRP1AEOT_RNSt16remove_referenceIS3_E4typeE
	.text
	.type	_ZSt13__invoke_implIv10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS4_EET_St14__invoke_otherOT0_DpOT1_, @function
_ZSt13__invoke_implIv10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS4_EET_St14__invoke_otherOT0_DpOT1_:
.LFB1158:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEEOT_RNSt16remove_referenceISD_E4typeE
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRP1AEOT_RNSt16remove_referenceIS3_E4typeE
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZZ4callSt6vectorISt7variantIJP1AP1BEESaIS5_EEENKUlS2_E_clES2_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1158:
	.size	_ZSt13__invoke_implIv10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS4_EET_St14__invoke_otherOT0_DpOT1_, .-_ZSt13__invoke_implIv10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS4_EET_St14__invoke_otherOT0_DpOT1_
	.section	.text._ZSt7forwardIRP1BEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRP1BEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRP1BEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRP1BEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIRP1BEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB1159:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1159:
	.size	_ZSt7forwardIRP1BEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRP1BEOT_RNSt16remove_referenceIS3_E4typeE
	.text
	.type	_ZSt13__invoke_implIv10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS6_EET_St14__invoke_otherOT0_DpOT1_, @function
_ZSt13__invoke_implIv10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS6_EET_St14__invoke_otherOT0_DpOT1_:
.LFB1160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEEOT_RNSt16remove_referenceISD_E4typeE
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRP1BEOT_RNSt16remove_referenceIS3_E4typeE
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZZ4callSt6vectorISt7variantIJP1AP1BEESaIS5_EEENKUlS4_E0_clES4_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1160:
	.size	_ZSt13__invoke_implIv10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS6_EET_St14__invoke_otherOT0_DpOT1_, .-_ZSt13__invoke_implIv10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaIS7_EEEUlS4_E_Z4callS9_EUlS6_E0_EEJRS6_EET_St14__invoke_otherOT0_DpOT1_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC2Ev:
.LFB1162:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1162:
	.size	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC2Ev
	.section	.text._ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE10deallocateERS6_PS5_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE10deallocateERS6_PS5_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE10deallocateERS6_PS5_m
	.type	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE10deallocateERS6_PS5_m, @function
_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE10deallocateERS6_PS5_m:
.LFB1164:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE10deallocateEPS6_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1164:
	.size	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE10deallocateERS6_PS5_m, .-_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE10deallocateERS6_PS5_m
	.section	.text._ZSt8_DestroyIPSt7variantIJP1AP1BEEEvT_S7_,"axG",@progbits,_ZSt8_DestroyIPSt7variantIJP1AP1BEEEvT_S7_,comdat
	.weak	_ZSt8_DestroyIPSt7variantIJP1AP1BEEEvT_S7_
	.type	_ZSt8_DestroyIPSt7variantIJP1AP1BEEEvT_S7_, @function
_ZSt8_DestroyIPSt7variantIJP1AP1BEEEvT_S7_:
.LFB1165:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt7variantIJP1AP1BEEEEvT_S9_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1165:
	.size	_ZSt8_DestroyIPSt7variantIJP1AP1BEEEvT_S7_, .-_ZSt8_DestroyIPSt7variantIJP1AP1BEEEvT_S7_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS3_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS3_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS3_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS3_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS3_EEEvPT_DpOT0_:
.LFB1166:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1AEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$16, %edi
	call	_ZnwmPv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7variantIJP1AP1BEEC1IS1_vvS1_vEEOT_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1166:
	.size	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS3_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS3_EEEvPT_DpOT0_
	.section	.text._ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE12_M_check_lenEmPKc:
.LFB1167:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE8max_sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L168
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L168:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE4sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE4sizeEv
	movq	%rax, -40(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE4sizeEv
	cmpq	%rax, -32(%rbp)
	jb	.L169
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE8max_sizeEv
	cmpq	%rax, -32(%rbp)
	jbe	.L170
.L169:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE8max_sizeEv
	jmp	.L171
.L170:
	movq	-32(%rbp), %rax
.L171:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L173
	call	__stack_chk_fail@PLT
.L173:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1167:
	.size	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE12_M_check_lenEmPKc
	.section	.text._ZN9__gnu_cxxmiIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_,"axG",@progbits,_ZN9__gnu_cxxmiIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_,comdat
	.weak	_ZN9__gnu_cxxmiIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_
	.type	_ZN9__gnu_cxxmiIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_, @function
_ZN9__gnu_cxxmiIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_:
.LFB1168:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv
	movq	(%rax), %rdx
	movq	%rbx, %rax
	subq	%rdx, %rax
	sarq	$4, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1168:
	.size	_ZN9__gnu_cxxmiIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_, .-_ZN9__gnu_cxxmiIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_
	.section	.text._ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE11_M_allocateEm:
.LFB1169:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L177
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE8allocateERS6_m
	jmp	.L179
.L177:
	movl	$0, %eax
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1169:
	.size	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE11_M_allocateEm, .-_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE11_M_allocateEm
	.section	.text._ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_,"axG",@progbits,_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_,comdat
	.weak	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_
	.type	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_, @function
_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_:
.LFB1170:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE14_S_do_relocateEPS5_S8_S8_RS6_St17integral_constantIbLb1EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1170:
	.size	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_, .-_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_
	.section	.text._ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE7destroyIS5_EEvRS6_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE7destroyIS5_EEvRS6_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE7destroyIS5_EEvRS6_PT_
	.type	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE7destroyIS5_EEvRS6_PT_, @function
_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE7destroyIS5_EEvRS6_PT_:
.LFB1171:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE7destroyIS6_EEvPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1171:
	.size	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE7destroyIS5_EEvRS6_PT_, .-_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE7destroyIS5_EEvRS6_PT_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEmiEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEmiEl,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEmiEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEmiEl, @function
_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEmiEl:
.LFB1172:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	salq	$4, %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC1ERKS7_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L185
	call	__stack_chk_fail@PLT
.L185:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1172:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEmiEl, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEmiEl
	.section	.text._ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS5_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS5_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS5_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS5_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS5_EEEvPT_DpOT0_:
.LFB1173:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1BEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$16, %edi
	call	_ZnwmPv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7variantIJP1AP1BEEC1IS3_vvS3_vEEOT_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1173:
	.size	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS5_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS5_EEEvPT_DpOT0_
	.section	.text._ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE37select_on_container_copy_constructionERKS6_,"axG",@progbits,_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE37select_on_container_copy_constructionERKS6_,comdat
	.weak	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE37select_on_container_copy_constructionERKS6_
	.type	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE37select_on_container_copy_constructionERKS6_, @function
_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE37select_on_container_copy_constructionERKS6_:
.LFB1174:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaISt7variantIJP1AP1BEEEC1ERKS5_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1174:
	.size	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE37select_on_container_copy_constructionERKS6_, .-_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE37select_on_container_copy_constructionERKS6_
	.section	.text._ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC2ERKS6_,"axG",@progbits,_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC5ERKS6_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC2ERKS6_
	.type	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC2ERKS6_, @function
_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC2ERKS6_:
.LFB1176:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaISt7variantIJP1AP1BEEEC2ERKS5_
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1176:
	.size	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC2ERKS6_, .-_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC2ERKS6_
	.weak	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC1ERKS6_
	.set	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC1ERKS6_,_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE12_Vector_implC2ERKS6_
	.section	.text._ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE17_M_create_storageEm, @function
_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE17_M_create_storageEm:
.LFB1178:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE11_M_allocateEm
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$4, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1178:
	.size	_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE17_M_create_storageEm, .-_ZNSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE17_M_create_storageEm
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC2ERKS8_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC5ERKS8_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC2ERKS8_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC2ERKS8_, @function
_ZN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC2ERKS8_:
.LFB1180:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1180:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC2ERKS8_, .-_ZN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC2ERKS8_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC1ERKS8_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC1ERKS8_,_ZN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEC2ERKS8_
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_, @function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_:
.LFB1182:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS9_SaIS9_EEEEPS9_EET0_T_SI_SH_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1182:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE10deallocateEPS6_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE10deallocateEPS6_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE10deallocateEPS6_m
	.type	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE10deallocateEPS6_m, @function
_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE10deallocateEPS6_m:
.LFB1184:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1184:
	.size	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE10deallocateEPS6_m, .-_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE10deallocateEPS6_m
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPSt7variantIJP1AP1BEEEEvT_S9_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPSt7variantIJP1AP1BEEEEvT_S9_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt7variantIJP1AP1BEEEEvT_S9_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt7variantIJP1AP1BEEEEvT_S9_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPSt7variantIJP1AP1BEEEEvT_S9_:
.LFB1185:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1185:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt7variantIJP1AP1BEEEEvT_S9_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPSt7variantIJP1AP1BEEEEvT_S9_
	.section	.text._ZNSt7variantIJP1AP1BEEC2ILm0EJS1_ES1_vEESt16in_place_index_tIXT_EEDpOT0_,"axG",@progbits,_ZNSt7variantIJP1AP1BEEC5ILm0EJS1_ES1_vEESt16in_place_index_tIXT_EEDpOT0_,comdat
	.align 2
	.weak	_ZNSt7variantIJP1AP1BEEC2ILm0EJS1_ES1_vEESt16in_place_index_tIXT_EEDpOT0_
	.type	_ZNSt7variantIJP1AP1BEEC2ILm0EJS1_ES1_vEESt16in_place_index_tIXT_EEDpOT0_, @function
_ZNSt7variantIJP1AP1BEEC2ILm0EJS1_ES1_vEESt16in_place_index_tIXT_EEDpOT0_:
.LFB1188:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1AEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC2ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt27_Enable_default_constructorILb1ESt7variantIJP1AP1BEEEC2ESt31_Enable_default_constructor_tag
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1188:
	.size	_ZNSt7variantIJP1AP1BEEC2ILm0EJS1_ES1_vEESt16in_place_index_tIXT_EEDpOT0_, .-_ZNSt7variantIJP1AP1BEEC2ILm0EJS1_ES1_vEESt16in_place_index_tIXT_EEDpOT0_
	.weak	_ZNSt7variantIJP1AP1BEEC1ILm0EJS1_ES1_vEESt16in_place_index_tIXT_EEDpOT0_
	.set	_ZNSt7variantIJP1AP1BEEC1ILm0EJS1_ES1_vEESt16in_place_index_tIXT_EEDpOT0_,_ZNSt7variantIJP1AP1BEEC2ILm0EJS1_ES1_vEESt16in_place_index_tIXT_EEDpOT0_
	.section	.text._ZNSt7variantIJP1AP1BEEC2IS1_vvS1_vEEOT_,"axG",@progbits,_ZNSt7variantIJP1AP1BEEC5IS1_vvS1_vEEOT_,comdat
	.align 2
	.weak	_ZNSt7variantIJP1AP1BEEC2IS1_vvS1_vEEOT_
	.type	_ZNSt7variantIJP1AP1BEEC2IS1_vvS1_vEEOT_, @function
_ZNSt7variantIJP1AP1BEEC2IS1_vvS1_vEEOT_:
.LFB1190:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1190
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1AEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7variantIJP1AP1BEEC1ILm0EJS1_ES1_vEESt16in_place_index_tIXT_EEDpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1190:
	.section	.gcc_except_table
.LLSDA1190:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1190-.LLSDACSB1190
.LLSDACSB1190:
.LLSDACSE1190:
	.section	.text._ZNSt7variantIJP1AP1BEEC2IS1_vvS1_vEEOT_,"axG",@progbits,_ZNSt7variantIJP1AP1BEEC5IS1_vvS1_vEEOT_,comdat
	.size	_ZNSt7variantIJP1AP1BEEC2IS1_vvS1_vEEOT_, .-_ZNSt7variantIJP1AP1BEEC2IS1_vvS1_vEEOT_
	.weak	_ZNSt7variantIJP1AP1BEEC1IS1_vvS1_vEEOT_
	.set	_ZNSt7variantIJP1AP1BEEC1IS1_vvS1_vEEOT_,_ZNSt7variantIJP1AP1BEEC2IS1_vvS1_vEEOT_
	.section	.text._ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE8max_sizeEv
	.type	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE8max_sizeEv, @function
_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE8max_sizeEv:
.LFB1192:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseISt7variantIJP1AP1BEESaIS5_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE11_S_max_sizeERKS6_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1192:
	.size	_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE8max_sizeEv, .-_ZNKSt6vectorISt7variantIJP1AP1BEESaIS5_EE8max_sizeEv
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB1193:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L202
	movq	-16(%rbp), %rax
	jmp	.L203
.L202:
	movq	-8(%rbp), %rax
.L203:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1193:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE8allocateERS6_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE8allocateERS6_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE8allocateERS6_m
	.type	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE8allocateERS6_m, @function
_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE8allocateERS6_m:
.LFB1194:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1194:
	.size	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE8allocateERS6_m, .-_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE8allocateERS6_m
	.section	.text._ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE14_S_do_relocateEPS5_S8_S8_RS6_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE14_S_do_relocateEPS5_S8_S8_RS6_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE14_S_do_relocateEPS5_S8_S8_RS6_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE14_S_do_relocateEPS5_S8_S8_RS6_St17integral_constantIbLb1EE, @function
_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE14_S_do_relocateEPS5_S8_S8_RS6_St17integral_constantIbLb1EE:
.LFB1195:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__relocate_aIPSt7variantIJP1AP1BEES6_SaIS5_EET0_T_S9_S8_RT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1195:
	.size	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE14_S_do_relocateEPS5_S8_S8_RS6_St17integral_constantIbLb1EE, .-_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE14_S_do_relocateEPS5_S8_S8_RS6_St17integral_constantIbLb1EE
	.section	.text._ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE7destroyIS6_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE7destroyIS6_EEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE7destroyIS6_EEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE7destroyIS6_EEvPT_, @function
_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE7destroyIS6_EEvPT_:
.LFB1196:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1196:
	.size	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE7destroyIS6_EEvPT_, .-_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE7destroyIS6_EEvPT_
	.section	.text._ZNSt7variantIJP1AP1BEEC2ILm1EJS3_ES3_vEESt16in_place_index_tIXT_EEDpOT0_,"axG",@progbits,_ZNSt7variantIJP1AP1BEEC5ILm1EJS3_ES3_vEESt16in_place_index_tIXT_EEDpOT0_,comdat
	.align 2
	.weak	_ZNSt7variantIJP1AP1BEEC2ILm1EJS3_ES3_vEESt16in_place_index_tIXT_EEDpOT0_
	.type	_ZNSt7variantIJP1AP1BEEC2ILm1EJS3_ES3_vEESt16in_place_index_tIXT_EEDpOT0_, @function
_ZNSt7variantIJP1AP1BEEC2ILm1EJS3_ES3_vEESt16in_place_index_tIXT_EEDpOT0_:
.LFB1199:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1BEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt27_Enable_default_constructorILb1ESt7variantIJP1AP1BEEEC2ESt31_Enable_default_constructor_tag
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1199:
	.size	_ZNSt7variantIJP1AP1BEEC2ILm1EJS3_ES3_vEESt16in_place_index_tIXT_EEDpOT0_, .-_ZNSt7variantIJP1AP1BEEC2ILm1EJS3_ES3_vEESt16in_place_index_tIXT_EEDpOT0_
	.weak	_ZNSt7variantIJP1AP1BEEC1ILm1EJS3_ES3_vEESt16in_place_index_tIXT_EEDpOT0_
	.set	_ZNSt7variantIJP1AP1BEEC1ILm1EJS3_ES3_vEESt16in_place_index_tIXT_EEDpOT0_,_ZNSt7variantIJP1AP1BEEC2ILm1EJS3_ES3_vEESt16in_place_index_tIXT_EEDpOT0_
	.section	.text._ZNSt7variantIJP1AP1BEEC2IS3_vvS3_vEEOT_,"axG",@progbits,_ZNSt7variantIJP1AP1BEEC5IS3_vvS3_vEEOT_,comdat
	.align 2
	.weak	_ZNSt7variantIJP1AP1BEEC2IS3_vvS3_vEEOT_
	.type	_ZNSt7variantIJP1AP1BEEC2IS3_vvS3_vEEOT_, @function
_ZNSt7variantIJP1AP1BEEC2IS3_vvS3_vEEOT_:
.LFB1201:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1201
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1BEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7variantIJP1AP1BEEC1ILm1EJS3_ES3_vEESt16in_place_index_tIXT_EEDpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1201:
	.section	.gcc_except_table
.LLSDA1201:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1201-.LLSDACSB1201
.LLSDACSB1201:
.LLSDACSE1201:
	.section	.text._ZNSt7variantIJP1AP1BEEC2IS3_vvS3_vEEOT_,"axG",@progbits,_ZNSt7variantIJP1AP1BEEC5IS3_vvS3_vEEOT_,comdat
	.size	_ZNSt7variantIJP1AP1BEEC2IS3_vvS3_vEEOT_, .-_ZNSt7variantIJP1AP1BEEC2IS3_vvS3_vEEOT_
	.weak	_ZNSt7variantIJP1AP1BEEC1IS3_vvS3_vEEOT_
	.set	_ZNSt7variantIJP1AP1BEEC1IS3_vvS3_vEEOT_,_ZNSt7variantIJP1AP1BEEC2IS3_vvS3_vEEOT_
	.section	.text._ZNSaISt7variantIJP1AP1BEEEC2ERKS5_,"axG",@progbits,_ZNSaISt7variantIJP1AP1BEEEC5ERKS5_,comdat
	.align 2
	.weak	_ZNSaISt7variantIJP1AP1BEEEC2ERKS5_
	.type	_ZNSaISt7variantIJP1AP1BEEEC2ERKS5_, @function
_ZNSaISt7variantIJP1AP1BEEEC2ERKS5_:
.LFB1204:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC2ERKS7_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1204:
	.size	_ZNSaISt7variantIJP1AP1BEEEC2ERKS5_, .-_ZNSaISt7variantIJP1AP1BEEEC2ERKS5_
	.weak	_ZNSaISt7variantIJP1AP1BEEEC1ERKS5_
	.set	_ZNSaISt7variantIJP1AP1BEEEC1ERKS5_,_ZNSaISt7variantIJP1AP1BEEEC2ERKS5_
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS9_SaIS9_EEEEPS9_EET0_T_SI_SH_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS9_SaIS9_EEEEPS9_EET0_T_SI_SH_,comdat
	.weak	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS9_SaIS9_EEEEPS9_EET0_T_SI_SH_
	.type	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS9_SaIS9_EEEEPS9_EET0_T_SI_SH_, @function
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS9_SaIS9_EEEEPS9_EET0_T_SI_SH_:
.LFB1206:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L213
.L214:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEdeEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt7variantIJP1AP1BEEEPT_RS6_
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt10_ConstructISt7variantIJP1AP1BEEJRKS5_EEvPT_DpOT0_
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEppEv
	addq	$16, -24(%rbp)
.L213:
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_
	testb	%al, %al
	jne	.L214
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1206:
	.size	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS9_SaIS9_EEEEPS9_EET0_T_SI_SH_, .-_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS9_SaIS9_EEEEPS9_EET0_T_SI_SH_
	.section	.text._ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_,"axG",@progbits,_ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI5NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_,comdat
	.align 2
	.weak	_ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.type	_ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_, @function
_ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_:
.LFB1212:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC2ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1212:
	.size	_ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_, .-_ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.weak	_ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI1NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.set	_ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI1NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_,_ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.section	.text._ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_,"axG",@progbits,_ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI5NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_,comdat
	.align 2
	.weak	_ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.type	_ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_, @function
_ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_:
.LFB1214:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1214:
	.size	_ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_, .-_ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.weak	_ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI1NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.set	_ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI1NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_,_ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.section	.text._ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_,"axG",@progbits,_ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI5NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_,comdat
	.align 2
	.weak	_ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.type	_ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_, @function
_ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_:
.LFB1216:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1216:
	.size	_ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_, .-_ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.weak	_ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI1NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.set	_ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI1NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_,_ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.section	.text._ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_,"axG",@progbits,_ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI5NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_,comdat
	.align 2
	.weak	_ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.type	_ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_, @function
_ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_:
.LFB1218:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1218:
	.size	_ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_, .-_ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.weak	_ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI1NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.set	_ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI1NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_,_ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.section	.text._ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC2ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_,"axG",@progbits,_ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC5ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_,comdat
	.align 2
	.weak	_ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC2ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.type	_ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC2ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_, @function
_ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC2ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_:
.LFB1220:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-24(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1AEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1220:
	.size	_ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC2ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_, .-_ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC2ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.weak	_ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC1ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.set	_ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC1ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_,_ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC2ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.section	.text._ZNSt27_Enable_default_constructorILb1ESt7variantIJP1AP1BEEEC2ESt31_Enable_default_constructor_tag,"axG",@progbits,_ZNSt27_Enable_default_constructorILb1ESt7variantIJP1AP1BEEEC5ESt31_Enable_default_constructor_tag,comdat
	.align 2
	.weak	_ZNSt27_Enable_default_constructorILb1ESt7variantIJP1AP1BEEEC2ESt31_Enable_default_constructor_tag
	.type	_ZNSt27_Enable_default_constructorILb1ESt7variantIJP1AP1BEEEC2ESt31_Enable_default_constructor_tag, @function
_ZNSt27_Enable_default_constructorILb1ESt7variantIJP1AP1BEEEC2ESt31_Enable_default_constructor_tag:
.LFB1223:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1223:
	.size	_ZNSt27_Enable_default_constructorILb1ESt7variantIJP1AP1BEEEC2ESt31_Enable_default_constructor_tag, .-_ZNSt27_Enable_default_constructorILb1ESt7variantIJP1AP1BEEEC2ESt31_Enable_default_constructor_tag
	.weak	_ZNSt27_Enable_default_constructorILb1ESt7variantIJP1AP1BEEEC1ESt31_Enable_default_constructor_tag
	.set	_ZNSt27_Enable_default_constructorILb1ESt7variantIJP1AP1BEEEC1ESt31_Enable_default_constructor_tag,_ZNSt27_Enable_default_constructorILb1ESt7variantIJP1AP1BEEEC2ESt31_Enable_default_constructor_tag
	.section	.text._ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE11_S_max_sizeERKS6_,"axG",@progbits,_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE11_S_max_sizeERKS6_,comdat
	.weak	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE11_S_max_sizeERKS6_
	.type	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE11_S_max_sizeERKS6_, @function
_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE11_S_max_sizeERKS6_:
.LFB1225:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$576460752303423487, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE8max_sizeERKS6_
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L224
	call	__stack_chk_fail@PLT
.L224:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1225:
	.size	_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE11_S_max_sizeERKS6_, .-_ZNSt6vectorISt7variantIJP1AP1BEESaIS5_EE11_S_max_sizeERKS6_
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE11_M_max_sizeEv:
.LFB1227:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$576460752303423487, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1227:
	.size	_ZNK9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE8allocateEmPKv:
.LFB1226:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE11_M_max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L228
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L229
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L229:
	call	_ZSt17__throw_bad_allocv@PLT
.L228:
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1226:
	.size	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE8allocateEmPKv
	.section	.text._ZSt12__relocate_aIPSt7variantIJP1AP1BEES6_SaIS5_EET0_T_S9_S8_RT1_,"axG",@progbits,_ZSt12__relocate_aIPSt7variantIJP1AP1BEES6_SaIS5_EET0_T_S9_S8_RT1_,comdat
	.weak	_ZSt12__relocate_aIPSt7variantIJP1AP1BEES6_SaIS5_EET0_T_S9_S8_RT1_
	.type	_ZSt12__relocate_aIPSt7variantIJP1AP1BEES6_SaIS5_EET0_T_S9_S8_RT1_, @function
_ZSt12__relocate_aIPSt7variantIJP1AP1BEES6_SaIS5_EET0_T_S9_S8_RT1_:
.LFB1228:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPSt7variantIJP1AP1BEEET_S7_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPSt7variantIJP1AP1BEEET_S7_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPSt7variantIJP1AP1BEEET_S7_
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	_ZSt14__relocate_a_1IPSt7variantIJP1AP1BEES6_SaIS5_EET0_T_S9_S8_RT1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1228:
	.size	_ZSt12__relocate_aIPSt7variantIJP1AP1BEES6_SaIS5_EET0_T_S9_S8_RT1_, .-_ZSt12__relocate_aIPSt7variantIJP1AP1BEES6_SaIS5_EET0_T_S9_S8_RT1_
	.section	.text._ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_,"axG",@progbits,_ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI5NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_,comdat
	.align 2
	.weak	_ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.type	_ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_, @function
_ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_:
.LFB1234:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1234:
	.size	_ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_, .-_ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.weak	_ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI1NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.set	_ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI1NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_,_ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.section	.text._ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_,"axG",@progbits,_ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI5NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_,comdat
	.align 2
	.weak	_ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.type	_ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_, @function
_ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_:
.LFB1236:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8__detail9__variant15_Copy_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1236:
	.size	_ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_, .-_ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.weak	_ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI1NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.set	_ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI1NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_,_ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.section	.text._ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_,"axG",@progbits,_ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI5NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_,comdat
	.align 2
	.weak	_ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.type	_ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_, @function
_ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_:
.LFB1238:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8__detail9__variant15_Move_ctor_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1238:
	.size	_ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_, .-_ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.weak	_ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI1NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.set	_ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI1NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_,_ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.section	.text._ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_,"axG",@progbits,_ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI5NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_,comdat
	.align 2
	.weak	_ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.type	_ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_, @function
_ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_:
.LFB1240:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8__detail9__variant17_Copy_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1240:
	.size	_ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_, .-_ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.weak	_ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI1NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.set	_ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI1NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_,_ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.section	.text._ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_,"axG",@progbits,_ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC5ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_,comdat
	.align 2
	.weak	_ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.type	_ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_, @function
_ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_:
.LFB1242:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-24(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1BEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt8__detail9__variant17_Move_assign_baseILb1EJP1AP1BEECI2NS0_16_Variant_storageILb1EJS3_S5_EEEILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1242:
	.size	_ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_, .-_ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.weak	_ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC1ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.set	_ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC1ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_,_ZNSt8__detail9__variant13_Variant_baseIJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC2ERKS7_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC5ERKS7_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC2ERKS7_
	.type	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC2ERKS7_, @function
_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC2ERKS7_:
.LFB1245:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1245:
	.size	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC2ERKS7_, .-_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC2ERKS7_
	.weak	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC1ERKS7_
	.set	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC1ERKS7_,_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEEC2ERKS7_
	.section	.text._ZN9__gnu_cxxneIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_,"axG",@progbits,_ZN9__gnu_cxxneIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_,comdat
	.weak	_ZN9__gnu_cxxneIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_
	.type	_ZN9__gnu_cxxneIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, @function
_ZN9__gnu_cxxneIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_:
.LFB1247:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1247:
	.size	_ZN9__gnu_cxxneIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, .-_ZN9__gnu_cxxneIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEppEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEppEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEppEv:
.LFB1248:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1248:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEppEv
	.section	.text._ZSt11__addressofISt7variantIJP1AP1BEEEPT_RS6_,"axG",@progbits,_ZSt11__addressofISt7variantIJP1AP1BEEEPT_RS6_,comdat
	.weak	_ZSt11__addressofISt7variantIJP1AP1BEEEPT_RS6_
	.type	_ZSt11__addressofISt7variantIJP1AP1BEEEPT_RS6_, @function
_ZSt11__addressofISt7variantIJP1AP1BEEEPT_RS6_:
.LFB1249:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1249:
	.size	_ZSt11__addressofISt7variantIJP1AP1BEEEPT_RS6_, .-_ZSt11__addressofISt7variantIJP1AP1BEEEPT_RS6_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEdeEv:
.LFB1250:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1250:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEEdeEv
	.section	.text._ZSt10_ConstructISt7variantIJP1AP1BEEJRKS5_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructISt7variantIJP1AP1BEEJRKS5_EEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructISt7variantIJP1AP1BEEJRKS5_EEvPT_DpOT0_
	.type	_ZSt10_ConstructISt7variantIJP1AP1BEEJRKS5_EEvPT_DpOT0_, @function
_ZSt10_ConstructISt7variantIJP1AP1BEEJRKS5_EEvPT_DpOT0_:
.LFB1251:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$16, %edi
	call	_ZnwmPv
	movq	%rax, %rcx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1251:
	.size	_ZSt10_ConstructISt7variantIJP1AP1BEEJRKS5_EEvPT_DpOT0_, .-_ZSt10_ConstructISt7variantIJP1AP1BEEJRKS5_EEvPT_DpOT0_
	.section	.text._ZNSt8__detail9__variant14_UninitializedIP1ALb1EEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_,"axG",@progbits,_ZNSt8__detail9__variant14_UninitializedIP1ALb1EEC5IJS3_EEESt16in_place_index_tILm0EEDpOT_,comdat
	.align 2
	.weak	_ZNSt8__detail9__variant14_UninitializedIP1ALb1EEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_
	.type	_ZNSt8__detail9__variant14_UninitializedIP1ALb1EEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_, @function
_ZNSt8__detail9__variant14_UninitializedIP1ALb1EEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_:
.LFB1255:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1AEOT_RNSt16remove_referenceIS2_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1255:
	.size	_ZNSt8__detail9__variant14_UninitializedIP1ALb1EEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_, .-_ZNSt8__detail9__variant14_UninitializedIP1ALb1EEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_
	.weak	_ZNSt8__detail9__variant14_UninitializedIP1ALb1EEC1IJS3_EEESt16in_place_index_tILm0EEDpOT_
	.set	_ZNSt8__detail9__variant14_UninitializedIP1ALb1EEC1IJS3_EEESt16in_place_index_tILm0EEDpOT_,_ZNSt8__detail9__variant14_UninitializedIP1ALb1EEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_
	.section	.text._ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_,"axG",@progbits,_ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC5IJS3_EEESt16in_place_index_tILm0EEDpOT_,comdat
	.align 2
	.weak	_ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_
	.type	_ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_, @function
_ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_:
.LFB1257:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1AEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt8__detail9__variant14_UninitializedIP1ALb1EEC1IJS3_EEESt16in_place_index_tILm0EEDpOT_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1257:
	.size	_ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_, .-_ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_
	.weak	_ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC1IJS3_EEESt16in_place_index_tILm0EEDpOT_
	.set	_ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC1IJS3_EEESt16in_place_index_tILm0EEDpOT_,_ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_
	.section	.text._ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC2ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_,"axG",@progbits,_ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC5ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_,comdat
	.align 2
	.weak	_ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC2ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.type	_ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC2ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_, @function
_ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC2ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_:
.LFB1259:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1AEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC1IJS3_EEESt16in_place_index_tILm0EEDpOT_
	movq	-24(%rbp), %rax
	movb	$0, 8(%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1259:
	.size	_ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC2ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_, .-_ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC2ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.weak	_ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC1ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.set	_ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC1ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_,_ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC2ILm0EJS3_EEESt16in_place_index_tIXT_EEDpOT0_
	.section	.text._ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE8max_sizeERKS6_,"axG",@progbits,_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE8max_sizeERKS6_,comdat
	.weak	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE8max_sizeERKS6_
	.type	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE8max_sizeERKS6_, @function
_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE8max_sizeERKS6_:
.LFB1261:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1261:
	.size	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE8max_sizeERKS6_, .-_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE8max_sizeERKS6_
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB1262:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L254
	movq	-16(%rbp), %rax
	jmp	.L255
.L254:
	movq	-8(%rbp), %rax
.L255:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1262:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZSt12__niter_baseIPSt7variantIJP1AP1BEEET_S7_,"axG",@progbits,_ZSt12__niter_baseIPSt7variantIJP1AP1BEEET_S7_,comdat
	.weak	_ZSt12__niter_baseIPSt7variantIJP1AP1BEEET_S7_
	.type	_ZSt12__niter_baseIPSt7variantIJP1AP1BEEET_S7_, @function
_ZSt12__niter_baseIPSt7variantIJP1AP1BEEET_S7_:
.LFB1263:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1263:
	.size	_ZSt12__niter_baseIPSt7variantIJP1AP1BEEET_S7_, .-_ZSt12__niter_baseIPSt7variantIJP1AP1BEEET_S7_
	.section	.text._ZSt14__relocate_a_1IPSt7variantIJP1AP1BEES6_SaIS5_EET0_T_S9_S8_RT1_,"axG",@progbits,_ZSt14__relocate_a_1IPSt7variantIJP1AP1BEES6_SaIS5_EET0_T_S9_S8_RT1_,comdat
	.weak	_ZSt14__relocate_a_1IPSt7variantIJP1AP1BEES6_SaIS5_EET0_T_S9_S8_RT1_
	.type	_ZSt14__relocate_a_1IPSt7variantIJP1AP1BEES6_SaIS5_EET0_T_S9_S8_RT1_, @function
_ZSt14__relocate_a_1IPSt7variantIJP1AP1BEES6_SaIS5_EET0_T_S9_S8_RT1_:
.LFB1264:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L259
.L260:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt7variantIJP1AP1BEEEPT_RS6_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt7variantIJP1AP1BEEEPT_RS6_
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt19__relocate_object_aISt7variantIJP1AP1BEES5_SaIS5_EEvPT_PT0_RT1_
	addq	$16, -40(%rbp)
	addq	$16, -24(%rbp)
.L259:
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L260
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1264:
	.size	_ZSt14__relocate_a_1IPSt7variantIJP1AP1BEES6_SaIS5_EET0_T_S9_S8_RT1_, .-_ZSt14__relocate_a_1IPSt7variantIJP1AP1BEES6_SaIS5_EET0_T_S9_S8_RT1_
	.section	.text._ZNSt8__detail9__variant14_UninitializedIP1BLb1EEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_,"axG",@progbits,_ZNSt8__detail9__variant14_UninitializedIP1BLb1EEC5IJS3_EEESt16in_place_index_tILm0EEDpOT_,comdat
	.align 2
	.weak	_ZNSt8__detail9__variant14_UninitializedIP1BLb1EEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_
	.type	_ZNSt8__detail9__variant14_UninitializedIP1BLb1EEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_, @function
_ZNSt8__detail9__variant14_UninitializedIP1BLb1EEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_:
.LFB1269:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1BEOT_RNSt16remove_referenceIS2_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1269:
	.size	_ZNSt8__detail9__variant14_UninitializedIP1BLb1EEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_, .-_ZNSt8__detail9__variant14_UninitializedIP1BLb1EEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_
	.weak	_ZNSt8__detail9__variant14_UninitializedIP1BLb1EEC1IJS3_EEESt16in_place_index_tILm0EEDpOT_
	.set	_ZNSt8__detail9__variant14_UninitializedIP1BLb1EEC1IJS3_EEESt16in_place_index_tILm0EEDpOT_,_ZNSt8__detail9__variant14_UninitializedIP1BLb1EEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_
	.section	.text._ZNSt8__detail9__variant15_Variadic_unionIJP1BEEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_,"axG",@progbits,_ZNSt8__detail9__variant15_Variadic_unionIJP1BEEC5IJS3_EEESt16in_place_index_tILm0EEDpOT_,comdat
	.align 2
	.weak	_ZNSt8__detail9__variant15_Variadic_unionIJP1BEEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_
	.type	_ZNSt8__detail9__variant15_Variadic_unionIJP1BEEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_, @function
_ZNSt8__detail9__variant15_Variadic_unionIJP1BEEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_:
.LFB1271:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1BEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt8__detail9__variant14_UninitializedIP1BLb1EEC1IJS3_EEESt16in_place_index_tILm0EEDpOT_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1271:
	.size	_ZNSt8__detail9__variant15_Variadic_unionIJP1BEEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_, .-_ZNSt8__detail9__variant15_Variadic_unionIJP1BEEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_
	.weak	_ZNSt8__detail9__variant15_Variadic_unionIJP1BEEC1IJS3_EEESt16in_place_index_tILm0EEDpOT_
	.set	_ZNSt8__detail9__variant15_Variadic_unionIJP1BEEC1IJS3_EEESt16in_place_index_tILm0EEDpOT_,_ZNSt8__detail9__variant15_Variadic_unionIJP1BEEC2IJS3_EEESt16in_place_index_tILm0EEDpOT_
	.section	.text._ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_,"axG",@progbits,_ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC5ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_,comdat
	.align 2
	.weak	_ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.type	_ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_, @function
_ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_:
.LFB1273:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1BEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt8__detail9__variant15_Variadic_unionIJP1BEEC1IJS3_EEESt16in_place_index_tILm0EEDpOT_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1273:
	.size	_ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_, .-_ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.weak	_ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC1ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.set	_ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC1ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_,_ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.section	.text._ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_,"axG",@progbits,_ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC5ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_,comdat
	.align 2
	.weak	_ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.type	_ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_, @function
_ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_:
.LFB1275:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIP1BEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt8__detail9__variant15_Variadic_unionIJP1AP1BEEC1ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	movq	-24(%rbp), %rax
	movb	$1, 8(%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1275:
	.size	_ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_, .-_ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.weak	_ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC1ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.set	_ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC1ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_,_ZNSt8__detail9__variant16_Variant_storageILb1EJP1AP1BEEC2ILm1EJS5_EEESt16in_place_index_tIXT_EEDpOT0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv:
.LFB1277:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1277:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKSt7variantIJP1AP1BEESt6vectorIS6_SaIS6_EEE4baseEv
	.section	.text._ZSt7forwardIRKSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS8_E4typeE,"axG",@progbits,_ZSt7forwardIRKSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS8_E4typeE,comdat
	.weak	_ZSt7forwardIRKSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS8_E4typeE
	.type	_ZSt7forwardIRKSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS8_E4typeE, @function
_ZSt7forwardIRKSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS8_E4typeE:
.LFB1278:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1278:
	.size	_ZSt7forwardIRKSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS8_E4typeE, .-_ZSt7forwardIRKSt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS8_E4typeE
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE8max_sizeEv:
.LFB1279:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1279:
	.size	_ZNK9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE8max_sizeEv
	.section	.text._ZSt19__relocate_object_aISt7variantIJP1AP1BEES5_SaIS5_EEvPT_PT0_RT1_,"axG",@progbits,_ZSt19__relocate_object_aISt7variantIJP1AP1BEES5_SaIS5_EEvPT_PT0_RT1_,comdat
	.weak	_ZSt19__relocate_object_aISt7variantIJP1AP1BEES5_SaIS5_EEvPT_PT0_RT1_
	.type	_ZSt19__relocate_object_aISt7variantIJP1AP1BEES5_SaIS5_EEvPT_PT0_RT1_, @function
_ZSt19__relocate_object_aISt7variantIJP1AP1BEES5_SaIS5_EEvPT_PT0_RT1_:
.LFB1280:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt7variantIJP1AP1BEEEONSt16remove_referenceIT_E4typeEOS8_
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt7variantIJP1AP1BEEEPT_RS6_
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE7destroyIS5_EEvRS6_PT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1280:
	.size	_ZSt19__relocate_object_aISt7variantIJP1AP1BEES5_SaIS5_EEvPT_PT0_RT1_, .-_ZSt19__relocate_object_aISt7variantIJP1AP1BEES5_SaIS5_EEvPT_PT0_RT1_
	.section	.text._ZSt4moveIRSt7variantIJP1AP1BEEEONSt16remove_referenceIT_E4typeEOS8_,"axG",@progbits,_ZSt4moveIRSt7variantIJP1AP1BEEEONSt16remove_referenceIT_E4typeEOS8_,comdat
	.weak	_ZSt4moveIRSt7variantIJP1AP1BEEEONSt16remove_referenceIT_E4typeEOS8_
	.type	_ZSt4moveIRSt7variantIJP1AP1BEEEONSt16remove_referenceIT_E4typeEOS8_, @function
_ZSt4moveIRSt7variantIJP1AP1BEEEONSt16remove_referenceIT_E4typeEOS8_:
.LFB1281:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1281:
	.size	_ZSt4moveIRSt7variantIJP1AP1BEEEONSt16remove_referenceIT_E4typeEOS8_, .-_ZSt4moveIRSt7variantIJP1AP1BEEEONSt16remove_referenceIT_E4typeEOS8_
	.section	.text._ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_:
.LFB1282:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS6_EEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1282:
	.size	_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_, .-_ZNSt16allocator_traitsISaISt7variantIJP1AP1BEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_
	.section	.text._ZSt7forwardISt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS6_E4typeE,"axG",@progbits,_ZSt7forwardISt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS6_E4typeE,comdat
	.weak	_ZSt7forwardISt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS6_E4typeE
	.type	_ZSt7forwardISt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS6_E4typeE, @function
_ZSt7forwardISt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS6_E4typeE:
.LFB1283:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1283:
	.size	_ZSt7forwardISt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS6_E4typeE, .-_ZSt7forwardISt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS6_E4typeE
	.section	.text._ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS6_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS6_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS6_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS6_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS6_EEEvPT_DpOT0_:
.LFB1284:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt7variantIJP1AP1BEEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$16, %edi
	call	_ZnwmPv
	movq	%rax, %rcx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1284:
	.size	_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS6_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorISt7variantIJP1AP1BEEE9constructIS6_JS6_EEEvPT_DpOT0_
	.weak	_ZTVSt18bad_variant_access
	.section	.data.rel.ro.local._ZTVSt18bad_variant_access,"awG",@progbits,_ZTVSt18bad_variant_access,comdat
	.align 8
	.type	_ZTVSt18bad_variant_access, @object
	.size	_ZTVSt18bad_variant_access, 40
_ZTVSt18bad_variant_access:
	.quad	0
	.quad	_ZTISt18bad_variant_access
	.quad	_ZNSt18bad_variant_accessD1Ev
	.quad	_ZNSt18bad_variant_accessD0Ev
	.quad	_ZNKSt18bad_variant_access4whatEv
	.section	.text._ZNSt18bad_variant_accessD2Ev,"axG",@progbits,_ZNSt18bad_variant_accessD5Ev,comdat
	.align 2
	.weak	_ZNSt18bad_variant_accessD2Ev
	.type	_ZNSt18bad_variant_accessD2Ev, @function
_ZNSt18bad_variant_accessD2Ev:
.LFB1286:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVSt18bad_variant_access(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9exceptionD2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1286:
	.size	_ZNSt18bad_variant_accessD2Ev, .-_ZNSt18bad_variant_accessD2Ev
	.weak	_ZNSt18bad_variant_accessD1Ev
	.set	_ZNSt18bad_variant_accessD1Ev,_ZNSt18bad_variant_accessD2Ev
	.section	.text._ZNSt18bad_variant_accessD0Ev,"axG",@progbits,_ZNSt18bad_variant_accessD5Ev,comdat
	.align 2
	.weak	_ZNSt18bad_variant_accessD0Ev
	.type	_ZNSt18bad_variant_accessD0Ev, @function
_ZNSt18bad_variant_accessD0Ev:
.LFB1288:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt18bad_variant_accessD1Ev
	movq	-8(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1288:
	.size	_ZNSt18bad_variant_accessD0Ev, .-_ZNSt18bad_variant_accessD0Ev
	.weak	_ZTISt18bad_variant_access
	.section	.data.rel.ro._ZTISt18bad_variant_access,"awG",@progbits,_ZTISt18bad_variant_access,comdat
	.align 8
	.type	_ZTISt18bad_variant_access, @object
	.size	_ZTISt18bad_variant_access, 24
_ZTISt18bad_variant_access:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt18bad_variant_access
	.quad	_ZTISt9exception
	.weak	_ZTSSt18bad_variant_access
	.section	.rodata._ZTSSt18bad_variant_access,"aG",@progbits,_ZTSSt18bad_variant_access,comdat
	.align 16
	.type	_ZTSSt18bad_variant_access, @object
	.size	_ZTSSt18bad_variant_access, 23
_ZTSSt18bad_variant_access:
	.string	"St18bad_variant_access"
	.section	.rodata
	.align 8
	.type	_ZNSt8__detail9__variant12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EERSB_EJLm2EEE7__indexE, @object
	.size	_ZNSt8__detail9__variant12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EERSB_EJLm2EEE7__indexE, 8
_ZNSt8__detail9__variant12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EERSB_EJLm2EEE7__indexE:
	.zero	8
	.align 4
	.type	_ZNSt8__detail9__variant12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EERSB_EJLm2EEE11__do_cookieE, @object
	.size	_ZNSt8__detail9__variant12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EERSB_EJLm2EEE11__do_cookieE, 4
_ZNSt8__detail9__variant12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EERSB_EJLm2EEE11__do_cookieE:
	.zero	4
	.section	.data.rel.ro.local,"aw"
	.align 16
	.type	_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EEJRSB_EE9_S_vtableE, @object
	.size	_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EEJRSB_EE9_S_vtableE, 16
_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISB_EEEUlS8_E_Z4callSD_EUlSA_E0_EEJRSB_EE9_S_vtableE:
	.quad	_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SJ_
	.quad	_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEO10overloadedIJZ4callSt6vectorISt7variantIJP1AP1BEESaISC_EEEUlS9_E_Z4callSE_EUlSB_E0_EERSC_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SJ_
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
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
