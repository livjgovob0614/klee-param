	.text
	.file	"test.c"
	.globl	get_sign                # -- Begin function get_sign
	.p2align	4, 0x90
	.type	get_sign,@function
get_sign:                               # @get_sign
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str, %rax
	movl	%edi, -4(%rbp)
	movq	.Lget_sign.arr, %rcx
	movq	%rcx, -16(%rbp)
	movl	.Lget_sign.arr+8, %edi
	movl	%edi, -8(%rbp)
	movslq	-4(%rbp), %rcx
	movl	$5, -16(%rbp,%rcx,4)
	movl	-4(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	printf
	xorl	%esi, %esi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	get_sign, .Lfunc_end0-get_sign
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
	movl	$4, %eax
	movl	%eax, %esi
	movabsq	$.L.str.1, %rdx
	leaq	-8(%rbp), %rcx
	movl	$0, -4(%rbp)
	movq	%rcx, %rdi
	callq	klee_make_symbolic
	movl	-8(%rbp), %edi
	callq	get_sign
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.Lget_sign.arr,@object  # @get_sign.arr
	.section	.rodata,"a",@progbits
	.p2align	2
.Lget_sign.arr:
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.size	.Lget_sign.arr, 12

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"x:%d"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"a"
	.size	.L.str.1, 2


	.ident	"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
