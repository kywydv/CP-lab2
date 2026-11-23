	.file	"mm.c"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	init
	.type	init, @function
init:
.LFB39:
	.cfi_startproc
	endbr64
	mov	ecx, edx
	imul	ecx, edx
	test	ecx, ecx
	je	.L22
	lea	edx, -1[rcx]
	vxorps	xmm8, xmm8, xmm8
	mov	r8d, ecx
	cmp	edx, 2
	jbe	.L3
	lea	rax, -4[rsi]
	sub	rax, rdi
	cmp	rax, 24
	jbe	.L3
	cmp	edx, 6
	jbe	.L11
	mov	edx, -1840700269
	shr	r8d, 3
	vmovdqa	ymm1, YMMWORD PTR .LC0[rip]
	vmovdqa	ymm6, YMMWORD PTR .LC2[rip]
	vpbroadcastd	ymm5, edx
	mov	edx, 1717986919
	sal	r8, 5
	xor	eax, eax
	vpbroadcastd	ymm4, edx
	mov	edx, 8
	vpbroadcastd	ymm7, edx
	.p2align 4,,10
	.p2align 3
.L5:
	vpsrlq	ymm3, ymm1, 32
	vpmuldq	ymm0, ymm1, ymm5
	vpmuldq	ymm2, ymm3, ymm5
	vpmuldq	ymm3, ymm3, ymm4
	vpermt2d	ymm0, ymm6, ymm2
	vpaddd	ymm0, ymm0, ymm1
	vpsrad	ymm0, ymm0, 2
	vpslld	ymm2, ymm0, 3
	vpsubd	ymm0, ymm2, ymm0
	vpmuldq	ymm2, ymm1, ymm4
	vpsubd	ymm0, ymm1, ymm0
	vcvtdq2ps	ymm0, ymm0
	vmovups	YMMWORD PTR [rdi+rax], ymm0
	vpermt2d	ymm2, ymm6, ymm3
	vpsrad	ymm2, ymm2, 1
	vpslld	ymm0, ymm2, 2
	vpaddd	ymm0, ymm0, ymm2
	vpsubd	ymm0, ymm1, ymm0
	vpaddd	ymm1, ymm1, ymm7
	vcvtdq2ps	ymm0, ymm0
	vmovups	YMMWORD PTR [rsi+rax], ymm0
	add	rax, 32
	cmp	r8, rax
	jne	.L5
	mov	eax, ecx
	and	eax, -8
	mov	r9d, eax
	cmp	ecx, eax
	je	.L20
	mov	r8d, ecx
	sub	r8d, eax
	lea	edx, -1[r8]
	cmp	edx, 2
	jbe	.L24
	vzeroupper
.L4:
	vpbroadcastd	xmm0, eax
	mov	edx, -1840700269
	vpaddd	xmm0, xmm0, XMMWORD PTR .LC5[rip]
	vpbroadcastd	xmm2, edx
	mov	edx, 1717986919
	vpsrlq	xmm4, xmm0, 32
	vpmuldq	xmm1, xmm0, xmm2
	vpmuldq	xmm3, xmm4, xmm2
	vmovdqa	xmm2, XMMWORD PTR .LC7[rip]
	vpermt2d	xmm1, xmm2, xmm3
	vpaddd	xmm1, xmm1, xmm0
	vpsrad	xmm1, xmm1, 2
	vpslld	xmm3, xmm1, 3
	vpsubd	xmm1, xmm3, xmm1
	vpsubd	xmm1, xmm0, xmm1
	vcvtdq2ps	xmm1, xmm1
	vmovups	XMMWORD PTR [rdi+r9*4], xmm1
	vpbroadcastd	xmm1, edx
	vpmuldq	xmm3, xmm0, xmm1
	vpmuldq	xmm4, xmm4, xmm1
	vmovdqa	xmm1, xmm3
	vpermt2d	xmm1, xmm2, xmm4
	vpsrad	xmm1, xmm1, 1
	vpslld	xmm2, xmm1, 2
	vpaddd	xmm1, xmm2, xmm1
	vpsubd	xmm0, xmm0, xmm1
	vcvtdq2ps	xmm0, xmm0
	vmovups	XMMWORD PTR [rsi+r9*4], xmm0
	test	r8b, 3
	je	.L22
	and	r8d, -4
	add	eax, r8d
.L7:
	movsxd	r8, eax
	mov	r10d, eax
	imul	rdx, r8, -1840700269
	sar	r10d, 31
	shr	rdx, 32
	add	edx, eax
	sar	edx, 2
	sub	edx, r10d
	lea	r9d, 0[0+rdx*8]
	sub	r9d, edx
	mov	edx, eax
	sub	edx, r9d
	vcvtsi2ss	xmm0, xmm8, edx
	imul	rdx, r8, 1717986919
	sar	rdx, 33
	vmovss	DWORD PTR [rdi+r8*4], xmm0
	sub	edx, r10d
	lea	r9d, [rdx+rdx*4]
	mov	edx, eax
	sub	edx, r9d
	vcvtsi2ss	xmm0, xmm8, edx
	lea	edx, 1[rax]
	vmovss	DWORD PTR [rsi+r8*4], xmm0
	cmp	ecx, edx
	jle	.L22
	mov	r10d, edx
	mov	r9d, edx
	add	eax, 2
	imul	r11, r10, 613566757
	shr	r11, 32
	sub	r9d, r11d
	shr	r9d
	add	r9d, r11d
	shr	r9d, 2
	lea	r11d, 0[0+r9*8]
	sub	r11d, r9d
	mov	r9d, edx
	sub	r9d, r11d
	mov	r11d, 3435973837
	imul	r10, r11
	vcvtsi2ss	xmm0, xmm8, r9d
	mov	r9, r10
	shr	r9, 34
	lea	r9d, [r9+r9*4]
	vmovss	DWORD PTR 4[rdi+r8*4], xmm0
	sub	edx, r9d
	vcvtsi2ss	xmm0, xmm8, edx
	vmovss	DWORD PTR 4[rsi+r8*4], xmm0
	cmp	ecx, eax
	jle	.L22
	mov	ecx, eax
	mov	edx, eax
	imul	r9, rcx, 613566757
	imul	rcx, r11
	shr	r9, 32
	sub	edx, r9d
	shr	rcx, 34
	shr	edx
	add	edx, r9d
	shr	edx, 2
	lea	r9d, 0[0+rdx*8]
	sub	r9d, edx
	mov	edx, eax
	sub	edx, r9d
	vcvtsi2ss	xmm0, xmm8, edx
	lea	edx, [rcx+rcx*4]
	sub	eax, edx
	vcvtsi2ss	xmm8, xmm8, eax
	vmovss	DWORD PTR 8[rdi+r8*4], xmm0
	vmovss	DWORD PTR 8[rsi+r8*4], xmm8
	ret
.L20:
	vzeroupper
.L22:
	ret
.L24:
	vzeroupper
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L3:
	movsxd	r8, ecx
	xor	eax, eax
	mov	r10d, 3435973837
	.p2align 4,,10
	.p2align 3
.L9:
	mov	ecx, eax
	mov	edx, eax
	imul	r9, rcx, 613566757
	imul	rcx, r10
	shr	r9, 32
	sub	edx, r9d
	shr	edx
	add	edx, r9d
	shr	edx, 2
	lea	r9d, 0[0+rdx*8]
	sub	r9d, edx
	mov	edx, eax
	sub	edx, r9d
	vcvtsi2ss	xmm0, xmm8, edx
	mov	rdx, rcx
	shr	rdx, 34
	lea	ecx, [rdx+rdx*4]
	mov	edx, eax
	sub	edx, ecx
	vmovss	DWORD PTR [rdi+rax*4], xmm0
	vcvtsi2ss	xmm0, xmm8, edx
	vmovss	DWORD PTR [rsi+rax*4], xmm0
	inc	rax
	cmp	r8, rax
	jne	.L9
	ret
.L11:
	xor	r9d, r9d
	xor	eax, eax
	jmp	.L4
	.cfi_endproc
.LFE39:
	.size	init, .-init
	.p2align 4
	.globl	matmul
	.type	matmul, @function
matmul:
.LFB40:
	.cfi_startproc
	endbr64
	test	ecx, ecx
	jle	.L43
	push	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	mov	r10d, ecx
	movsxd	rax, ecx
	xor	r15d, r15d
	lea	r11, 0[0+rax*4]
	xor	r8d, r8d
	push	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	mov	r13, rsi
	mov	rsi, rax
	sal	rsi, 4
	push	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	mov	r12, rdi
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	lea	ebx, -1[rcx]
	lea	rcx, [rax+rax*2]
	mov	QWORD PTR -40[rsp], rdx
	mov	edx, r10d
	shr	edx, 2
	mov	DWORD PTR -32[rsp], ebx
	mov	rbx, rdx
	mov	QWORD PTR -48[rsp], rdi
	sal	rbx, 4
	mov	QWORD PTR -24[rsp], r11
	mov	QWORD PTR -16[rsp], rbx
	.p2align 4,,10
	.p2align 3
.L27:
	mov	rbx, QWORD PTR -16[rsp]
	mov	rdx, QWORD PTR -48[rsp]
	mov	DWORD PTR -28[rsp], r8d
	mov	rbp, r13
	xor	r9d, r9d
	add	rdx, rbx
	.p2align 4,,10
	.p2align 3
.L35:
	cmp	DWORD PTR -32[rsp], 2
	mov	r14d, r9d
	jbe	.L36
.L33:
	mov	r8, QWORD PTR -48[rsp]
	mov	rdi, rbp
	vxorps	xmm2, xmm2, xmm2
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L30:
	vmovss	xmm1, DWORD PTR [rdi+rax*8]
	vmovss	xmm0, DWORD PTR [rdi]
	add	r8, 16
	vinsertps	xmm1, xmm1, DWORD PTR [rdi+rcx*4], 0x10
	vinsertps	xmm0, xmm0, DWORD PTR [rdi+rax*4], 0x10
	add	rdi, rsi
	vmovlhps	xmm0, xmm0, xmm1
	vfmadd231ps	xmm2, xmm0, XMMWORD PTR -16[r8]
	cmp	rdx, r8
	jne	.L30
	vmovhlps	xmm1, xmm2, xmm2
	vaddps	xmm1, xmm1, xmm2
	vshufps	xmm0, xmm1, xmm1, 85
	vaddps	xmm0, xmm0, xmm1
	test	r10b, 3
	je	.L28
	mov	edi, r10d
	and	edi, -4
.L34:
	mov	r8d, r10d
	lea	ebx, [r15+rdi]
	imul	r8d, edi
	movsxd	rbx, ebx
	vmovss	xmm3, DWORD PTR [r12+rbx*4]
	lea	r11d, [r8+r14]
	movsxd	r11, r11d
	vfmadd231ss	xmm0, xmm3, DWORD PTR 0[r13+r11*4]
	lea	r11d, 1[rdi]
	cmp	r10d, r11d
	jle	.L29
	add	r11d, r15d
	add	r8d, r10d
	add	edi, 2
	movsxd	r11, r11d
	lea	ebx, [r8+r14]
	vmovss	xmm4, DWORD PTR [r12+r11*4]
	movsxd	rbx, ebx
	vfmadd231ss	xmm0, xmm4, DWORD PTR 0[r13+rbx*4]
	cmp	r10d, edi
	jle	.L29
	add	r8d, r10d
	add	edi, r15d
	add	r8d, r14d
	movsxd	rdi, edi
	movsxd	r8, r8d
	vmovss	xmm5, DWORD PTR 0[r13+r8*4]
	vfmadd231ss	xmm0, xmm5, DWORD PTR [r12+rdi*4]
.L29:
	mov	rbx, QWORD PTR -40[rsp]
	add	rbp, 4
	vmovss	DWORD PTR [rbx+r9*4], xmm0
	inc	r9
	cmp	rax, r9
	jne	.L35
.L40:
	mov	r8d, DWORD PTR -28[rsp]
	mov	rdx, QWORD PTR -24[rsp]
	add	r15d, r10d
	inc	r8d
	add	QWORD PTR -40[rsp], rdx
	add	QWORD PTR -48[rsp], rdx
	cmp	r10d, r8d
	jne	.L27
	pop	rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	pop	rbp
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	.cfi_restore_state
	mov	rbx, QWORD PTR -40[rsp]
	vmovss	DWORD PTR [rbx+r9*4], xmm0
	inc	r9
	cmp	r9, rax
	je	.L40
	add	rbp, 4
	mov	r14d, r9d
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L36:
	xor	edi, edi
	vxorps	xmm0, xmm0, xmm0
	jmp	.L34
.L43:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	ret
	.cfi_endproc
.LFE40:
	.size	matmul, .-matmul
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC10:
	.string	"%f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB41:
	.cfi_startproc
	endbr64
	push	r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	mov	ebp, 900
	push	rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	sub	rsp, 8
	.cfi_def_cfa_offset 48
	cmp	edi, 1
	jle	.L47
	mov	rdi, QWORD PTR 8[rsi]
	mov	edx, 10
	xor	esi, esi
	call	__isoc23_strtol@PLT
	mov	ebp, eax
.L47:
	mov	ebx, ebp
	imul	ebx, ebp
	sal	ebx, 2
	movsxd	rdi, ebx
	call	malloc@PLT
	movsxd	rdi, ebx
	mov	r12, rax
	call	malloc@PLT
	movsxd	rdi, ebx
	mov	r13, rax
	call	malloc@PLT
	mov	rsi, r13
	mov	rdi, r12
	mov	edx, ebp
	mov	rbx, rax
	call	init
	mov	ecx, ebp
	mov	rdx, rbx
	call	matmul
	vxorps	xmm0, xmm0, xmm0
	lea	rsi, .LC10[rip]
	mov	edi, 2
	mov	eax, 1
	vcvtss2sd	xmm0, xmm0, DWORD PTR 20[rbx]
	vzeroupper
	call	__printf_chk@PLT
	add	rsp, 8
	.cfi_def_cfa_offset 40
	xor	eax, eax
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	rbp
	.cfi_def_cfa_offset 24
	pop	r12
	.cfi_def_cfa_offset 16
	pop	r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE41:
	.size	main, .-main
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC0:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.align 32
.LC2:
	.long	1
	.long	9
	.long	3
	.long	11
	.long	5
	.long	13
	.long	7
	.long	15
	.set	.LC5,.LC0
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC7:
	.long	1
	.long	5
	.long	3
	.long	7
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
