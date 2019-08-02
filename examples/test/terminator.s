	.text
	.file	"terminator.c"
	.globl	func                    # -- Begin function func
	.p2align	4, 0x90
	.type	func,@function
func:                                   # @func
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$3, -4(%rbp)
	jne	.LBB0_2
# %bb.1:
	movabsq	$.L.str, %rdi
	movl	$3, -8(%rbp)
	movb	$0, %al
	callq	printf
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jmp	.LBB0_6
.LBB0_2:
	cmpl	$2, -4(%rbp)
	jne	.LBB0_4
# %bb.3:
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:
	movl	$3, -12(%rbp)
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -24(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	func, .Lfunc_end0-func
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	-5(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %esi
	movabsq	$.L.str.2, %rdx
	movl	$0, -4(%rbp)
	callq	klee_make_symbolic
	movsbl	-5(%rbp), %edi
	callq	func
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"3"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"2"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"a"
	.size	.L.str.2, 2


	.ident	"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
