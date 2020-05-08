	.global _Z5counti
_Z5counti:
	mov	r1, #1
.L1:
	cmp	r0, r1
	add	r1, #1
	bne	.L1
	bx	lr


	.global _Z9countDowni
_Z9countDowni:

.L2:
	subs	r0, #1
	bgt	.L2
	bx	lr


	.global _Z3sumii
_Z3sumii:
	mov	r2, r0
	add	r2, #1
.L3:
	add	r0, r2
	add	r2, #1
	cmp	r2, r1
	ble	.L3
	bx	lr


	.global _Z4facti
_Z4facti:
	mov	r1, r0
	cmp	r0, #0
	bgt	.L4
	mov	r0, #1
	bx	lr

.L4:
	subs	r1, #1
	beq	.L5
	mul	r0, r1
	bgt	.L4
	bx	lr

.L5:
	bx	lr

