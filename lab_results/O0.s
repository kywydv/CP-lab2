	.file	"mm.c"
	.intel_syntax noprefix
	.text
	.globl	init
	.type	init, @function
init:
.LFB6:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	DWORD PTR -36[rbp], edx
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -4[rbp]
	movsxd	rdx, eax
	imul	rdx, rdx, -1840700269
	shr	rdx, 32
	add	edx, eax
	mov	ecx, edx
	sar	ecx, 2
	cdq
	sub	ecx, edx
	mov	edx, ecx
	sal	edx, 3
	sub	edx, ecx
	sub	eax, edx
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, ecx
	movss	DWORD PTR [rax], xmm0
	mov	edx, DWORD PTR -4[rbp]
	movsxd	rax, edx
	imul	rax, rax, 1717986919
	shr	rax, 32
	mov	ecx, eax
	sar	ecx
	mov	eax, edx
	sar	eax, 31
	sub	ecx, eax
	mov	eax, ecx
	sal	eax, 2
	add	eax, ecx
	mov	ecx, edx
	sub	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, ecx
	movss	DWORD PTR [rax], xmm0
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -36[rbp]
	imul	eax, eax
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	nop
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	init, .-init
	.globl	matmul
	.type	matmul, @function
matmul:
.LFB7:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	DWORD PTR -44[rbp], ecx
	mov	DWORD PTR -16[rbp], 0
	jmp	.L5
.L10:
	mov	DWORD PTR -12[rbp], 0
	jmp	.L6
.L9:
	pxor	xmm0, xmm0
	movss	DWORD PTR -8[rbp], xmm0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L7
.L8:
	mov	eax, DWORD PTR -16[rbp]
	imul	eax, DWORD PTR -44[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movss	xmm1, DWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, DWORD PTR -44[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	movss	xmm0, DWORD PTR [rax]
	mulss	xmm0, xmm1
	movss	xmm1, DWORD PTR -8[rbp]
	addss	xmm0, xmm1
	movss	DWORD PTR -8[rbp], xmm0
	add	DWORD PTR -4[rbp], 1
.L7:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L8
	mov	eax, DWORD PTR -16[rbp]
	imul	eax, DWORD PTR -44[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movss	xmm0, DWORD PTR -8[rbp]
	movss	DWORD PTR [rax], xmm0
	add	DWORD PTR -12[rbp], 1
.L6:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L9
	add	DWORD PTR -16[rbp], 1
.L5:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L10
	nop
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	matmul, .-matmul
	.section	.rodata
.LC1:
	.string	"%f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	DWORD PTR -36[rbp], edi
	mov	QWORD PTR -48[rbp], rsi
	cmp	DWORD PTR -36[rbp], 1
	jle	.L12
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	atoi@PLT
	mov	DWORD PTR -28[rbp], eax
	jmp	.L13
.L12:
	mov	DWORD PTR -28[rbp], 900
.L13:
	mov	eax, DWORD PTR -28[rbp]
	imul	eax, eax
	sal	eax, 2
	cdqe
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	eax, DWORD PTR -28[rbp]
	imul	eax, eax
	sal	eax, 2
	cdqe
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -28[rbp]
	imul	eax, eax
	sal	eax, 2
	cdqe
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	edx, DWORD PTR -28[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	init
	mov	ecx, DWORD PTR -28[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rsi, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	matmul
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 20
	movss	xmm0, DWORD PTR [rax]
	pxor	xmm1, xmm1
	cvtss2sd	xmm1, xmm0
	movq	rax, xmm1
	lea	rdx, .LC1[rip]
	movq	xmm0, rax
	mov	rdi, rdx
	mov	eax, 1
	call	printf@PLT
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 15.2.0-16ubuntu1) 15.2.0"
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
