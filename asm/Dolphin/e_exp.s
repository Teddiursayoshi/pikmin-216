.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 0x8
.global halF
halF:
	.4byte 0x3FE00000
	.4byte 0x00000000
	.4byte 0xBFE00000
	.4byte 0x00000000
.global ln2HI
ln2HI:
	.4byte 0x3FE62E42
	.4byte 0xFEE00000
	.4byte 0xBFE62E42
	.4byte 0xFEE00000
.global ln2LO
ln2LO:
	.4byte 0x3DEA39EF
	.4byte 0x35793C76
	.4byte 0xBDEA39EF
	.4byte 0x35793C76

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ieee754_exp
__ieee754_exp:
/* 800CC878 000C97B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800CC87C 000C97BC  3C 60 40 86 */	lis r3, 0x40862E42@ha
/* 800CC880 000C97C0  3C 80 80 48 */	lis r4, halF@ha
/* 800CC884 000C97C4  D8 21 00 08 */	stfd f1, 8(r1)
/* 800CC888 000C97C8  38 03 2E 42 */	addi r0, r3, 0x40862E42@l
/* 800CC88C 000C97CC  38 A4 A1 38 */	addi r5, r4, halF@l
/* 800CC890 000C97D0  81 01 00 08 */	lwz r8, 8(r1)
/* 800CC894 000C97D4  55 04 00 7E */	clrlwi r4, r8, 1
/* 800CC898 000C97D8  55 07 0F FE */	srwi r7, r8, 0x1f
/* 800CC89C 000C97DC  7C 04 00 40 */	cmplw r4, r0
/* 800CC8A0 000C97E0  41 80 00 64 */	blt lbl_800CC904
/* 800CC8A4 000C97E4  3C 00 7F F0 */	lis r0, 0x7ff0
/* 800CC8A8 000C97E8  7C 04 00 40 */	cmplw r4, r0
/* 800CC8AC 000C97EC  41 80 00 30 */	blt lbl_800CC8DC
/* 800CC8B0 000C97F0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800CC8B4 000C97F4  55 03 03 3E */	clrlwi r3, r8, 0xc
/* 800CC8B8 000C97F8  7C 60 03 79 */	or. r0, r3, r0
/* 800CC8BC 000C97FC  41 82 00 0C */	beq lbl_800CC8C8
/* 800CC8C0 000C9800  FC 21 08 2A */	fadd f1, f1, f1
/* 800CC8C4 000C9804  48 00 01 D0 */	b lbl_800CCA94
lbl_800CC8C8:
/* 800CC8C8 000C9808  2C 07 00 00 */	cmpwi r7, 0
/* 800CC8CC 000C980C  40 82 00 08 */	bne lbl_800CC8D4
/* 800CC8D0 000C9810  48 00 01 C4 */	b lbl_800CCA94
lbl_800CC8D4:
/* 800CC8D4 000C9814  C8 22 8E 70 */	lfd f1, lbl_805171D0@sda21(r2)
/* 800CC8D8 000C9818  48 00 01 BC */	b lbl_800CCA94
lbl_800CC8DC:
/* 800CC8DC 000C981C  C8 02 8E 78 */	lfd f0, lbl_805171D8@sda21(r2)
/* 800CC8E0 000C9820  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800CC8E4 000C9824  40 81 00 0C */	ble lbl_800CC8F0
/* 800CC8E8 000C9828  C8 22 8E 80 */	lfd f1, lbl_805171E0@sda21(r2)
/* 800CC8EC 000C982C  48 00 01 A8 */	b lbl_800CCA94
lbl_800CC8F0:
/* 800CC8F0 000C9830  C8 02 8E 88 */	lfd f0, lbl_805171E8@sda21(r2)
/* 800CC8F4 000C9834  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800CC8F8 000C9838  40 80 00 0C */	bge lbl_800CC904
/* 800CC8FC 000C983C  C8 22 8E 70 */	lfd f1, lbl_805171D0@sda21(r2)
/* 800CC900 000C9840  48 00 01 94 */	b lbl_800CCA94
lbl_800CC904:
/* 800CC904 000C9844  3C 60 3F D6 */	lis r3, 0x3FD62E42@ha
/* 800CC908 000C9848  38 03 2E 42 */	addi r0, r3, 0x3FD62E42@l
/* 800CC90C 000C984C  7C 04 00 40 */	cmplw r4, r0
/* 800CC910 000C9850  40 81 00 98 */	ble lbl_800CC9A8
/* 800CC914 000C9854  3C 60 3F F1 */	lis r3, 0x3FF0A2B2@ha
/* 800CC918 000C9858  38 03 A2 B2 */	addi r0, r3, 0x3FF0A2B2@l
/* 800CC91C 000C985C  7C 04 00 40 */	cmplw r4, r0
/* 800CC920 000C9860  40 80 00 2C */	bge lbl_800CC94C
/* 800CC924 000C9864  54 E6 18 38 */	slwi r6, r7, 3
/* 800CC928 000C9868  38 85 00 10 */	addi r4, r5, 0x10
/* 800CC92C 000C986C  C8 21 00 08 */	lfd f1, 8(r1)
/* 800CC930 000C9870  38 65 00 20 */	addi r3, r5, 0x20
/* 800CC934 000C9874  7C 04 34 AE */	lfdx f0, r4, r6
/* 800CC938 000C9878  20 07 00 01 */	subfic r0, r7, 1
/* 800CC93C 000C987C  7D 03 34 AE */	lfdx f8, r3, r6
/* 800CC940 000C9880  7C C7 00 50 */	subf r6, r7, r0
/* 800CC944 000C9884  FC E1 00 28 */	fsub f7, f1, f0
/* 800CC948 000C9888  48 00 00 54 */	b lbl_800CC99C
lbl_800CC94C:
/* 800CC94C 000C988C  54 E4 18 38 */	slwi r4, r7, 3
/* 800CC950 000C9890  38 65 00 00 */	addi r3, r5, 0
/* 800CC954 000C9894  C8 22 8E 90 */	lfd f1, lbl_805171F0@sda21(r2)
/* 800CC958 000C9898  3C 00 43 30 */	lis r0, 0x4330
/* 800CC95C 000C989C  C8 81 00 08 */	lfd f4, 8(r1)
/* 800CC960 000C98A0  7C 03 24 AE */	lfdx f0, r3, r4
/* 800CC964 000C98A4  90 01 00 20 */	stw r0, 0x20(r1)
/* 800CC968 000C98A8  FC 41 01 3A */	fmadd f2, f1, f4, f0
/* 800CC96C 000C98AC  C8 62 8E E0 */	lfd f3, lbl_80517240@sda21(r2)
/* 800CC970 000C98B0  C8 25 00 10 */	lfd f1, 0x10(r5)
/* 800CC974 000C98B4  C8 05 00 20 */	lfd f0, 0x20(r5)
/* 800CC978 000C98B8  FC 40 10 1E */	fctiwz f2, f2
/* 800CC97C 000C98BC  D8 41 00 18 */	stfd f2, 0x18(r1)
/* 800CC980 000C98C0  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 800CC984 000C98C4  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 800CC988 000C98C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800CC98C 000C98CC  C8 41 00 20 */	lfd f2, 0x20(r1)
/* 800CC990 000C98D0  FC 42 18 28 */	fsub f2, f2, f3
/* 800CC994 000C98D4  FC E2 20 7C */	fnmsub f7, f2, f1, f4
/* 800CC998 000C98D8  FD 02 00 32 */	fmul f8, f2, f0
lbl_800CC99C:
/* 800CC99C 000C98DC  FC 07 40 28 */	fsub f0, f7, f8
/* 800CC9A0 000C98E0  D8 01 00 08 */	stfd f0, 8(r1)
/* 800CC9A4 000C98E4  48 00 00 34 */	b lbl_800CC9D8
lbl_800CC9A8:
/* 800CC9A8 000C98E8  3C 00 3E 30 */	lis r0, 0x3e30
/* 800CC9AC 000C98EC  7C 04 00 40 */	cmplw r4, r0
/* 800CC9B0 000C98F0  40 80 00 24 */	bge lbl_800CC9D4
/* 800CC9B4 000C98F4  C8 22 8E 98 */	lfd f1, lbl_805171F8@sda21(r2)
/* 800CC9B8 000C98F8  C8 41 00 08 */	lfd f2, 8(r1)
/* 800CC9BC 000C98FC  C8 02 8E A0 */	lfd f0, lbl_80517200@sda21(r2)
/* 800CC9C0 000C9900  FC 21 10 2A */	fadd f1, f1, f2
/* 800CC9C4 000C9904  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800CC9C8 000C9908  40 81 00 10 */	ble lbl_800CC9D8
/* 800CC9CC 000C990C  FC 20 10 2A */	fadd f1, f0, f2
/* 800CC9D0 000C9910  48 00 00 C4 */	b lbl_800CCA94
lbl_800CC9D4:
/* 800CC9D4 000C9914  38 C0 00 00 */	li r6, 0
lbl_800CC9D8:
/* 800CC9D8 000C9918  C8 A1 00 08 */	lfd f5, 8(r1)
/* 800CC9DC 000C991C  2C 06 00 00 */	cmpwi r6, 0
/* 800CC9E0 000C9920  C8 82 8E C8 */	lfd f4, lbl_80517228@sda21(r2)
/* 800CC9E4 000C9924  FC C5 01 72 */	fmul f6, f5, f5
/* 800CC9E8 000C9928  C8 62 8E C0 */	lfd f3, lbl_80517220@sda21(r2)
/* 800CC9EC 000C992C  C8 42 8E B8 */	lfd f2, lbl_80517218@sda21(r2)
/* 800CC9F0 000C9930  C8 22 8E B0 */	lfd f1, lbl_80517210@sda21(r2)
/* 800CC9F4 000C9934  C8 02 8E A8 */	lfd f0, lbl_80517208@sda21(r2)
/* 800CC9F8 000C9938  FC 64 19 BA */	fmadd f3, f4, f6, f3
/* 800CC9FC 000C993C  FC 46 10 FA */	fmadd f2, f6, f3, f2
/* 800CCA00 000C9940  FC 26 08 BA */	fmadd f1, f6, f2, f1
/* 800CCA04 000C9944  FC 06 00 7A */	fmadd f0, f6, f1, f0
/* 800CCA08 000C9948  FC 66 28 3C */	fnmsub f3, f6, f0, f5
/* 800CCA0C 000C994C  40 82 00 24 */	bne lbl_800CCA30
/* 800CCA10 000C9950  C8 02 8E D0 */	lfd f0, lbl_80517230@sda21(r2)
/* 800CCA14 000C9954  FC 25 00 F2 */	fmul f1, f5, f3
/* 800CCA18 000C9958  C8 42 8E A0 */	lfd f2, lbl_80517200@sda21(r2)
/* 800CCA1C 000C995C  FC 03 00 28 */	fsub f0, f3, f0
/* 800CCA20 000C9960  FC 01 00 24 */	fdiv f0, f1, f0
/* 800CCA24 000C9964  FC 00 28 28 */	fsub f0, f0, f5
/* 800CCA28 000C9968  FC 22 00 28 */	fsub f1, f2, f0
/* 800CCA2C 000C996C  48 00 00 68 */	b lbl_800CCA94
lbl_800CCA30:
/* 800CCA30 000C9970  C8 02 8E D0 */	lfd f0, lbl_80517230@sda21(r2)
/* 800CCA34 000C9974  FC 25 00 F2 */	fmul f1, f5, f3
/* 800CCA38 000C9978  C8 42 8E A0 */	lfd f2, lbl_80517200@sda21(r2)
/* 800CCA3C 000C997C  2C 06 FC 03 */	cmpwi r6, -1021
/* 800CCA40 000C9980  FC 00 18 28 */	fsub f0, f0, f3
/* 800CCA44 000C9984  FC 01 00 24 */	fdiv f0, f1, f0
/* 800CCA48 000C9988  FC 08 00 28 */	fsub f0, f8, f0
/* 800CCA4C 000C998C  FC 00 38 28 */	fsub f0, f0, f7
/* 800CCA50 000C9990  FC 02 00 28 */	fsub f0, f2, f0
/* 800CCA54 000C9994  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 800CCA58 000C9998  41 80 00 1C */	blt lbl_800CCA74
/* 800CCA5C 000C999C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800CCA60 000C99A0  54 C0 A0 16 */	slwi r0, r6, 0x14
/* 800CCA64 000C99A4  7C 03 02 14 */	add r0, r3, r0
/* 800CCA68 000C99A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 800CCA6C 000C99AC  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 800CCA70 000C99B0  48 00 00 24 */	b lbl_800CCA94
lbl_800CCA74:
/* 800CCA74 000C99B4  38 06 03 E8 */	addi r0, r6, 0x3e8
/* 800CCA78 000C99B8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800CCA7C 000C99BC  54 00 A0 16 */	slwi r0, r0, 0x14
/* 800CCA80 000C99C0  C8 22 8E D8 */	lfd f1, lbl_80517238@sda21(r2)
/* 800CCA84 000C99C4  7C 03 02 14 */	add r0, r3, r0
/* 800CCA88 000C99C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 800CCA8C 000C99CC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800CCA90 000C99D0  FC 21 00 32 */	fmul f1, f1, f0
lbl_800CCA94:
/* 800CCA94 000C99D4  38 21 00 30 */	addi r1, r1, 0x30
/* 800CCA98 000C99D8  4E 80 00 20 */	blr 
