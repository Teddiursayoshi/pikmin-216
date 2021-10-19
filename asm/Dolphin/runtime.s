.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 0x8
.global __constants
__constants:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x41E00000
	.4byte 0x00000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __cvt_fp2unsigned
__cvt_fp2unsigned:
/* 800C1B4C 000BEA8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C1B50 000BEA90  3C 80 80 47 */	lis r4, __constants@h
/* 800C1B54 000BEA94  60 84 9F 20 */	ori r4, r4, __constants@l
/* 800C1B58 000BEA98  38 60 00 00 */	li r3, 0
/* 800C1B5C 000BEA9C  C8 04 00 00 */	lfd f0, 0(r4)
/* 800C1B60 000BEAA0  C8 64 00 08 */	lfd f3, 8(r4)
/* 800C1B64 000BEAA4  C8 84 00 10 */	lfd f4, 0x10(r4)
/* 800C1B68 000BEAA8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800C1B6C 000BEAAC  FF 01 18 00 */	fcmpu cr6, f1, f3
/* 800C1B70 000BEAB0  41 80 00 30 */	blt lbl_800C1BA0
/* 800C1B74 000BEAB4  38 63 FF FF */	addi r3, r3, -1
/* 800C1B78 000BEAB8  40 98 00 28 */	bge cr6, lbl_800C1BA0
/* 800C1B7C 000BEABC  FF 81 20 00 */	fcmpu cr7, f1, f4
/* 800C1B80 000BEAC0  FC 40 08 90 */	fmr f2, f1
/* 800C1B84 000BEAC4  41 9C 00 08 */	blt cr7, lbl_800C1B8C
/* 800C1B88 000BEAC8  FC 41 20 28 */	fsub f2, f1, f4
lbl_800C1B8C:
/* 800C1B8C 000BEACC  FC 40 10 1E */	fctiwz f2, f2
/* 800C1B90 000BEAD0  D8 41 00 08 */	stfd f2, 8(r1)
/* 800C1B94 000BEAD4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800C1B98 000BEAD8  41 9C 00 08 */	blt cr7, lbl_800C1BA0
/* 800C1B9C 000BEADC  3C 63 80 00 */	addis r3, r3, 0x8000
lbl_800C1BA0:
/* 800C1BA0 000BEAE0  38 21 00 10 */	addi r1, r1, 0x10
/* 800C1BA4 000BEAE4  4E 80 00 20 */	blr 

.global __save_fpr
__save_fpr:
/* 800C1BA8 000BEAE8  D9 CB FF 70 */	stfd f14, -0x90(r11)
/* 800C1BAC 000BEAEC  D9 EB FF 78 */	stfd f15, -0x88(r11)
/* 800C1BB0 000BEAF0  DA 0B FF 80 */	stfd f16, -0x80(r11)
/* 800C1BB4 000BEAF4  DA 2B FF 88 */	stfd f17, -0x78(r11)
/* 800C1BB8 000BEAF8  DA 4B FF 90 */	stfd f18, -0x70(r11)
/* 800C1BBC 000BEAFC  DA 6B FF 98 */	stfd f19, -0x68(r11)
/* 800C1BC0 000BEB00  DA 8B FF A0 */	stfd f20, -0x60(r11)
/* 800C1BC4 000BEB04  DA AB FF A8 */	stfd f21, -0x58(r11)
/* 800C1BC8 000BEB08  DA CB FF B0 */	stfd f22, -0x50(r11)
/* 800C1BCC 000BEB0C  DA EB FF B8 */	stfd f23, -0x48(r11)

.global func_800C1BD0
func_800C1BD0:
/* 800C1BD0 000BEB10  DB 0B FF C0 */	stfd f24, -0x40(r11)

.global func_800C1BD4
func_800C1BD4:
/* 800C1BD4 000BEB14  DB 2B FF C8 */	stfd f25, -0x38(r11)
/* 800C1BD8 000BEB18  DB 4B FF D0 */	stfd f26, -0x30(r11)
/* 800C1BDC 000BEB1C  DB 6B FF D8 */	stfd f27, -0x28(r11)

.global func_800C1BE0
func_800C1BE0:
/* 800C1BE0 000BEB20  DB 8B FF E0 */	stfd f28, -0x20(r11)
/* 800C1BE4 000BEB24  DB AB FF E8 */	stfd f29, -0x18(r11)
/* 800C1BE8 000BEB28  DB CB FF F0 */	stfd f30, -0x10(r11)
/* 800C1BEC 000BEB2C  DB EB FF F8 */	stfd f31, -8(r11)
/* 800C1BF0 000BEB30  4E 80 00 20 */	blr 

.global __restore_fpr
__restore_fpr:
/* 800C1BF4 000BEB34  C9 CB FF 70 */	lfd f14, -0x90(r11)
/* 800C1BF8 000BEB38  C9 EB FF 78 */	lfd f15, -0x88(r11)
/* 800C1BFC 000BEB3C  CA 0B FF 80 */	lfd f16, -0x80(r11)
/* 800C1C00 000BEB40  CA 2B FF 88 */	lfd f17, -0x78(r11)
/* 800C1C04 000BEB44  CA 4B FF 90 */	lfd f18, -0x70(r11)
/* 800C1C08 000BEB48  CA 6B FF 98 */	lfd f19, -0x68(r11)
/* 800C1C0C 000BEB4C  CA 8B FF A0 */	lfd f20, -0x60(r11)
/* 800C1C10 000BEB50  CA AB FF A8 */	lfd f21, -0x58(r11)
/* 800C1C14 000BEB54  CA CB FF B0 */	lfd f22, -0x50(r11)
/* 800C1C18 000BEB58  CA EB FF B8 */	lfd f23, -0x48(r11)

.global func_800C1C1C
func_800C1C1C:
/* 800C1C1C 000BEB5C  CB 0B FF C0 */	lfd f24, -0x40(r11)

.global func_800C1C20
func_800C1C20:
/* 800C1C20 000BEB60  CB 2B FF C8 */	lfd f25, -0x38(r11)
/* 800C1C24 000BEB64  CB 4B FF D0 */	lfd f26, -0x30(r11)
/* 800C1C28 000BEB68  CB 6B FF D8 */	lfd f27, -0x28(r11)

.global func_800C1C2C
func_800C1C2C:
/* 800C1C2C 000BEB6C  CB 8B FF E0 */	lfd f28, -0x20(r11)
/* 800C1C30 000BEB70  CB AB FF E8 */	lfd f29, -0x18(r11)
/* 800C1C34 000BEB74  CB CB FF F0 */	lfd f30, -0x10(r11)
/* 800C1C38 000BEB78  CB EB FF F8 */	lfd f31, -8(r11)
/* 800C1C3C 000BEB7C  4E 80 00 20 */	blr 

.global __save_gpr
__save_gpr:
/* 800C1C40 000BEB80  91 CB FF B8 */	stw r14, -0x48(r11)
/* 800C1C44 000BEB84  91 EB FF BC */	stw r15, -0x44(r11)
/* 800C1C48 000BEB88  92 0B FF C0 */	stw r16, -0x40(r11)
/* 800C1C4C 000BEB8C  92 2B FF C4 */	stw r17, -0x3c(r11)
/* 800C1C50 000BEB90  92 4B FF C8 */	stw r18, -0x38(r11)
/* 800C1C54 000BEB94  92 6B FF CC */	stw r19, -0x34(r11)
/* 800C1C58 000BEB98  92 8B FF D0 */	stw r20, -0x30(r11)
/* 800C1C5C 000BEB9C  92 AB FF D4 */	stw r21, -0x2c(r11)
/* 800C1C60 000BEBA0  92 CB FF D8 */	stw r22, -0x28(r11)
/* 800C1C64 000BEBA4  92 EB FF DC */	stw r23, -0x24(r11)
/* 800C1C68 000BEBA8  93 0B FF E0 */	stw r24, -0x20(r11)
/* 800C1C6C 000BEBAC  93 2B FF E4 */	stw r25, -0x1c(r11)

.global func_800C1C70
func_800C1C70:
/* 800C1C70 000BEBB0  93 4B FF E8 */	stw r26, -0x18(r11)
/* 800C1C74 000BEBB4  93 6B FF EC */	stw r27, -0x14(r11)
/* 800C1C78 000BEBB8  93 8B FF F0 */	stw r28, -0x10(r11)
/* 800C1C7C 000BEBBC  93 AB FF F4 */	stw r29, -0xc(r11)
/* 800C1C80 000BEBC0  93 CB FF F8 */	stw r30, -8(r11)
/* 800C1C84 000BEBC4  93 EB FF FC */	stw r31, -4(r11)
/* 800C1C88 000BEBC8  4E 80 00 20 */	blr 

.global __restore_gpr
__restore_gpr:
/* 800C1C8C 000BEBCC  81 CB FF B8 */	lwz r14, -0x48(r11)
/* 800C1C90 000BEBD0  81 EB FF BC */	lwz r15, -0x44(r11)
/* 800C1C94 000BEBD4  82 0B FF C0 */	lwz r16, -0x40(r11)
/* 800C1C98 000BEBD8  82 2B FF C4 */	lwz r17, -0x3c(r11)
/* 800C1C9C 000BEBDC  82 4B FF C8 */	lwz r18, -0x38(r11)
/* 800C1CA0 000BEBE0  82 6B FF CC */	lwz r19, -0x34(r11)
/* 800C1CA4 000BEBE4  82 8B FF D0 */	lwz r20, -0x30(r11)
/* 800C1CA8 000BEBE8  82 AB FF D4 */	lwz r21, -0x2c(r11)
/* 800C1CAC 000BEBEC  82 CB FF D8 */	lwz r22, -0x28(r11)
/* 800C1CB0 000BEBF0  82 EB FF DC */	lwz r23, -0x24(r11)
/* 800C1CB4 000BEBF4  83 0B FF E0 */	lwz r24, -0x20(r11)
/* 800C1CB8 000BEBF8  83 2B FF E4 */	lwz r25, -0x1c(r11)

.global func_800C1CBC
func_800C1CBC:
/* 800C1CBC 000BEBFC  83 4B FF E8 */	lwz r26, -0x18(r11)
/* 800C1CC0 000BEC00  83 6B FF EC */	lwz r27, -0x14(r11)
/* 800C1CC4 000BEC04  83 8B FF F0 */	lwz r28, -0x10(r11)
/* 800C1CC8 000BEC08  83 AB FF F4 */	lwz r29, -0xc(r11)
/* 800C1CCC 000BEC0C  83 CB FF F8 */	lwz r30, -8(r11)
/* 800C1CD0 000BEC10  83 EB FF FC */	lwz r31, -4(r11)
/* 800C1CD4 000BEC14  4E 80 00 20 */	blr 

.global __div2u
__div2u:
/* 800C1CD8 000BEC18  2C 03 00 00 */	cmpwi r3, 0
/* 800C1CDC 000BEC1C  7C 60 00 34 */	cntlzw r0, r3
/* 800C1CE0 000BEC20  7C 89 00 34 */	cntlzw r9, r4
/* 800C1CE4 000BEC24  40 82 00 08 */	bne lbl_800C1CEC
/* 800C1CE8 000BEC28  38 09 00 20 */	addi r0, r9, 0x20
lbl_800C1CEC:
/* 800C1CEC 000BEC2C  2C 05 00 00 */	cmpwi r5, 0
/* 800C1CF0 000BEC30  7C A9 00 34 */	cntlzw r9, r5
/* 800C1CF4 000BEC34  7C CA 00 34 */	cntlzw r10, r6
/* 800C1CF8 000BEC38  40 82 00 08 */	bne lbl_800C1D00
/* 800C1CFC 000BEC3C  39 2A 00 20 */	addi r9, r10, 0x20
lbl_800C1D00:
/* 800C1D00 000BEC40  7C 00 48 00 */	cmpw r0, r9
/* 800C1D04 000BEC44  21 40 00 40 */	subfic r10, r0, 0x40
/* 800C1D08 000BEC48  41 81 00 B0 */	bgt lbl_800C1DB8
/* 800C1D0C 000BEC4C  39 29 00 01 */	addi r9, r9, 1
/* 800C1D10 000BEC50  21 29 00 40 */	subfic r9, r9, 0x40
/* 800C1D14 000BEC54  7C 00 4A 14 */	add r0, r0, r9
/* 800C1D18 000BEC58  7D 29 50 50 */	subf r9, r9, r10
/* 800C1D1C 000BEC5C  7D 29 03 A6 */	mtctr r9
/* 800C1D20 000BEC60  2C 09 00 20 */	cmpwi r9, 0x20
/* 800C1D24 000BEC64  38 E9 FF E0 */	addi r7, r9, -32
/* 800C1D28 000BEC68  41 80 00 10 */	blt lbl_800C1D38
/* 800C1D2C 000BEC6C  7C 68 3C 30 */	srw r8, r3, r7
/* 800C1D30 000BEC70  38 E0 00 00 */	li r7, 0
/* 800C1D34 000BEC74  48 00 00 18 */	b lbl_800C1D4C
lbl_800C1D38:
/* 800C1D38 000BEC78  7C 88 4C 30 */	srw r8, r4, r9
/* 800C1D3C 000BEC7C  20 E9 00 20 */	subfic r7, r9, 0x20
/* 800C1D40 000BEC80  7C 67 38 30 */	slw r7, r3, r7
/* 800C1D44 000BEC84  7D 08 3B 78 */	or r8, r8, r7
/* 800C1D48 000BEC88  7C 67 4C 30 */	srw r7, r3, r9
lbl_800C1D4C:
/* 800C1D4C 000BEC8C  2C 00 00 20 */	cmpwi r0, 0x20
/* 800C1D50 000BEC90  31 20 FF E0 */	addic r9, r0, -32
/* 800C1D54 000BEC94  41 80 00 10 */	blt lbl_800C1D64
/* 800C1D58 000BEC98  7C 83 48 30 */	slw r3, r4, r9
/* 800C1D5C 000BEC9C  38 80 00 00 */	li r4, 0
/* 800C1D60 000BECA0  48 00 00 18 */	b lbl_800C1D78
lbl_800C1D64:
/* 800C1D64 000BECA4  7C 63 00 30 */	slw r3, r3, r0
/* 800C1D68 000BECA8  21 20 00 20 */	subfic r9, r0, 0x20
/* 800C1D6C 000BECAC  7C 89 4C 30 */	srw r9, r4, r9
/* 800C1D70 000BECB0  7C 63 4B 78 */	or r3, r3, r9
/* 800C1D74 000BECB4  7C 84 00 30 */	slw r4, r4, r0
lbl_800C1D78:
/* 800C1D78 000BECB8  39 40 FF FF */	li r10, -1
/* 800C1D7C 000BECBC  30 E7 00 00 */	addic r7, r7, 0
lbl_800C1D80:
/* 800C1D80 000BECC0  7C 84 21 14 */	adde r4, r4, r4
/* 800C1D84 000BECC4  7C 63 19 14 */	adde r3, r3, r3
/* 800C1D88 000BECC8  7D 08 41 14 */	adde r8, r8, r8
/* 800C1D8C 000BECCC  7C E7 39 14 */	adde r7, r7, r7
/* 800C1D90 000BECD0  7C 06 40 10 */	subfc r0, r6, r8
/* 800C1D94 000BECD4  7D 25 39 11 */	subfe. r9, r5, r7
/* 800C1D98 000BECD8  41 80 00 10 */	blt lbl_800C1DA8
/* 800C1D9C 000BECDC  7C 08 03 78 */	mr r8, r0
/* 800C1DA0 000BECE0  7D 27 4B 78 */	mr r7, r9
/* 800C1DA4 000BECE4  30 0A 00 01 */	addic r0, r10, 1
lbl_800C1DA8:
/* 800C1DA8 000BECE8  42 00 FF D8 */	bdnz lbl_800C1D80
/* 800C1DAC 000BECEC  7C 84 21 14 */	adde r4, r4, r4
/* 800C1DB0 000BECF0  7C 63 19 14 */	adde r3, r3, r3
/* 800C1DB4 000BECF4  4E 80 00 20 */	blr 
lbl_800C1DB8:
/* 800C1DB8 000BECF8  38 80 00 00 */	li r4, 0
/* 800C1DBC 000BECFC  38 60 00 00 */	li r3, 0
/* 800C1DC0 000BED00  4E 80 00 20 */	blr 

.global __div2i
__div2i:
/* 800C1DC4 000BED04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C1DC8 000BED08  54 69 00 01 */	rlwinm. r9, r3, 0, 0, 0
/* 800C1DCC 000BED0C  41 82 00 0C */	beq lbl_800C1DD8
/* 800C1DD0 000BED10  20 84 00 00 */	subfic r4, r4, 0
/* 800C1DD4 000BED14  7C 63 01 90 */	subfze r3, r3
lbl_800C1DD8:
/* 800C1DD8 000BED18  91 21 00 08 */	stw r9, 8(r1)
/* 800C1DDC 000BED1C  54 AA 00 01 */	rlwinm. r10, r5, 0, 0, 0
/* 800C1DE0 000BED20  41 82 00 0C */	beq lbl_800C1DEC
/* 800C1DE4 000BED24  20 C6 00 00 */	subfic r6, r6, 0
/* 800C1DE8 000BED28  7C A5 01 90 */	subfze r5, r5
lbl_800C1DEC:
/* 800C1DEC 000BED2C  91 41 00 0C */	stw r10, 0xc(r1)
/* 800C1DF0 000BED30  2C 03 00 00 */	cmpwi r3, 0
/* 800C1DF4 000BED34  7C 60 00 34 */	cntlzw r0, r3
/* 800C1DF8 000BED38  7C 89 00 34 */	cntlzw r9, r4
/* 800C1DFC 000BED3C  40 82 00 08 */	bne lbl_800C1E04
/* 800C1E00 000BED40  38 09 00 20 */	addi r0, r9, 0x20
lbl_800C1E04:
/* 800C1E04 000BED44  2C 05 00 00 */	cmpwi r5, 0
/* 800C1E08 000BED48  7C A9 00 34 */	cntlzw r9, r5
/* 800C1E0C 000BED4C  7C CA 00 34 */	cntlzw r10, r6
/* 800C1E10 000BED50  40 82 00 08 */	bne lbl_800C1E18
/* 800C1E14 000BED54  39 2A 00 20 */	addi r9, r10, 0x20
lbl_800C1E18:
/* 800C1E18 000BED58  7C 00 48 00 */	cmpw r0, r9
/* 800C1E1C 000BED5C  21 40 00 40 */	subfic r10, r0, 0x40
/* 800C1E20 000BED60  41 81 00 CC */	bgt lbl_800C1EEC
/* 800C1E24 000BED64  39 29 00 01 */	addi r9, r9, 1
/* 800C1E28 000BED68  21 29 00 40 */	subfic r9, r9, 0x40
/* 800C1E2C 000BED6C  7C 00 4A 14 */	add r0, r0, r9
/* 800C1E30 000BED70  7D 29 50 50 */	subf r9, r9, r10
/* 800C1E34 000BED74  7D 29 03 A6 */	mtctr r9
/* 800C1E38 000BED78  2C 09 00 20 */	cmpwi r9, 0x20
/* 800C1E3C 000BED7C  38 E9 FF E0 */	addi r7, r9, -32
/* 800C1E40 000BED80  41 80 00 10 */	blt lbl_800C1E50
/* 800C1E44 000BED84  7C 68 3C 30 */	srw r8, r3, r7
/* 800C1E48 000BED88  38 E0 00 00 */	li r7, 0
/* 800C1E4C 000BED8C  48 00 00 18 */	b lbl_800C1E64
lbl_800C1E50:
/* 800C1E50 000BED90  7C 88 4C 30 */	srw r8, r4, r9
/* 800C1E54 000BED94  20 E9 00 20 */	subfic r7, r9, 0x20
/* 800C1E58 000BED98  7C 67 38 30 */	slw r7, r3, r7
/* 800C1E5C 000BED9C  7D 08 3B 78 */	or r8, r8, r7
/* 800C1E60 000BEDA0  7C 67 4C 30 */	srw r7, r3, r9
lbl_800C1E64:
/* 800C1E64 000BEDA4  2C 00 00 20 */	cmpwi r0, 0x20
/* 800C1E68 000BEDA8  31 20 FF E0 */	addic r9, r0, -32
/* 800C1E6C 000BEDAC  41 80 00 10 */	blt lbl_800C1E7C
/* 800C1E70 000BEDB0  7C 83 48 30 */	slw r3, r4, r9
/* 800C1E74 000BEDB4  38 80 00 00 */	li r4, 0
/* 800C1E78 000BEDB8  48 00 00 18 */	b lbl_800C1E90
lbl_800C1E7C:
/* 800C1E7C 000BEDBC  7C 63 00 30 */	slw r3, r3, r0
/* 800C1E80 000BEDC0  21 20 00 20 */	subfic r9, r0, 0x20
/* 800C1E84 000BEDC4  7C 89 4C 30 */	srw r9, r4, r9
/* 800C1E88 000BEDC8  7C 63 4B 78 */	or r3, r3, r9
/* 800C1E8C 000BEDCC  7C 84 00 30 */	slw r4, r4, r0
lbl_800C1E90:
/* 800C1E90 000BEDD0  39 40 FF FF */	li r10, -1
/* 800C1E94 000BEDD4  30 E7 00 00 */	addic r7, r7, 0
lbl_800C1E98:
/* 800C1E98 000BEDD8  7C 84 21 14 */	adde r4, r4, r4
/* 800C1E9C 000BEDDC  7C 63 19 14 */	adde r3, r3, r3
/* 800C1EA0 000BEDE0  7D 08 41 14 */	adde r8, r8, r8
/* 800C1EA4 000BEDE4  7C E7 39 14 */	adde r7, r7, r7
/* 800C1EA8 000BEDE8  7C 06 40 10 */	subfc r0, r6, r8
/* 800C1EAC 000BEDEC  7D 25 39 11 */	subfe. r9, r5, r7
/* 800C1EB0 000BEDF0  41 80 00 10 */	blt lbl_800C1EC0
/* 800C1EB4 000BEDF4  7C 08 03 78 */	mr r8, r0
/* 800C1EB8 000BEDF8  7D 27 4B 78 */	mr r7, r9
/* 800C1EBC 000BEDFC  30 0A 00 01 */	addic r0, r10, 1
lbl_800C1EC0:
/* 800C1EC0 000BEE00  42 00 FF D8 */	bdnz lbl_800C1E98
/* 800C1EC4 000BEE04  7C 84 21 14 */	adde r4, r4, r4
/* 800C1EC8 000BEE08  7C 63 19 14 */	adde r3, r3, r3
/* 800C1ECC 000BEE0C  81 21 00 08 */	lwz r9, 8(r1)
/* 800C1ED0 000BEE10  81 41 00 0C */	lwz r10, 0xc(r1)
/* 800C1ED4 000BEE14  7D 27 52 79 */	xor. r7, r9, r10
/* 800C1ED8 000BEE18  41 82 00 1C */	beq lbl_800C1EF4
/* 800C1EDC 000BEE1C  2C 09 00 00 */	cmpwi r9, 0
/* 800C1EE0 000BEE20  20 84 00 00 */	subfic r4, r4, 0
/* 800C1EE4 000BEE24  7C 63 01 90 */	subfze r3, r3
/* 800C1EE8 000BEE28  48 00 00 0C */	b lbl_800C1EF4
lbl_800C1EEC:
/* 800C1EEC 000BEE2C  38 80 00 00 */	li r4, 0
/* 800C1EF0 000BEE30  38 60 00 00 */	li r3, 0
lbl_800C1EF4:
/* 800C1EF4 000BEE34  38 21 00 10 */	addi r1, r1, 0x10
/* 800C1EF8 000BEE38  4E 80 00 20 */	blr 

.global __mod2u
__mod2u:
/* 800C1EFC 000BEE3C  2C 03 00 00 */	cmpwi r3, 0
/* 800C1F00 000BEE40  7C 60 00 34 */	cntlzw r0, r3
/* 800C1F04 000BEE44  7C 89 00 34 */	cntlzw r9, r4
/* 800C1F08 000BEE48  40 82 00 08 */	bne lbl_800C1F10
/* 800C1F0C 000BEE4C  38 09 00 20 */	addi r0, r9, 0x20
lbl_800C1F10:
/* 800C1F10 000BEE50  2C 05 00 00 */	cmpwi r5, 0
/* 800C1F14 000BEE54  7C A9 00 34 */	cntlzw r9, r5
/* 800C1F18 000BEE58  7C CA 00 34 */	cntlzw r10, r6
/* 800C1F1C 000BEE5C  40 82 00 08 */	bne lbl_800C1F24
/* 800C1F20 000BEE60  39 2A 00 20 */	addi r9, r10, 0x20
lbl_800C1F24:
/* 800C1F24 000BEE64  7C 00 48 00 */	cmpw r0, r9
/* 800C1F28 000BEE68  21 40 00 40 */	subfic r10, r0, 0x40
/* 800C1F2C 000BEE6C  4D 81 00 20 */	bgtlr 
/* 800C1F30 000BEE70  39 29 00 01 */	addi r9, r9, 1
/* 800C1F34 000BEE74  21 29 00 40 */	subfic r9, r9, 0x40
/* 800C1F38 000BEE78  7C 00 4A 14 */	add r0, r0, r9
/* 800C1F3C 000BEE7C  7D 29 50 50 */	subf r9, r9, r10
/* 800C1F40 000BEE80  7D 29 03 A6 */	mtctr r9
/* 800C1F44 000BEE84  2C 09 00 20 */	cmpwi r9, 0x20
/* 800C1F48 000BEE88  38 E9 FF E0 */	addi r7, r9, -32
/* 800C1F4C 000BEE8C  41 80 00 10 */	blt lbl_800C1F5C
/* 800C1F50 000BEE90  7C 68 3C 30 */	srw r8, r3, r7
/* 800C1F54 000BEE94  38 E0 00 00 */	li r7, 0
/* 800C1F58 000BEE98  48 00 00 18 */	b lbl_800C1F70
lbl_800C1F5C:
/* 800C1F5C 000BEE9C  7C 88 4C 30 */	srw r8, r4, r9
/* 800C1F60 000BEEA0  20 E9 00 20 */	subfic r7, r9, 0x20
/* 800C1F64 000BEEA4  7C 67 38 30 */	slw r7, r3, r7
/* 800C1F68 000BEEA8  7D 08 3B 78 */	or r8, r8, r7
/* 800C1F6C 000BEEAC  7C 67 4C 30 */	srw r7, r3, r9
lbl_800C1F70:
/* 800C1F70 000BEEB0  2C 00 00 20 */	cmpwi r0, 0x20
/* 800C1F74 000BEEB4  31 20 FF E0 */	addic r9, r0, -32
/* 800C1F78 000BEEB8  41 80 00 10 */	blt lbl_800C1F88
/* 800C1F7C 000BEEBC  7C 83 48 30 */	slw r3, r4, r9
/* 800C1F80 000BEEC0  38 80 00 00 */	li r4, 0
/* 800C1F84 000BEEC4  48 00 00 18 */	b lbl_800C1F9C
lbl_800C1F88:
/* 800C1F88 000BEEC8  7C 63 00 30 */	slw r3, r3, r0
/* 800C1F8C 000BEECC  21 20 00 20 */	subfic r9, r0, 0x20
/* 800C1F90 000BEED0  7C 89 4C 30 */	srw r9, r4, r9
/* 800C1F94 000BEED4  7C 63 4B 78 */	or r3, r3, r9
/* 800C1F98 000BEED8  7C 84 00 30 */	slw r4, r4, r0
lbl_800C1F9C:
/* 800C1F9C 000BEEDC  39 40 FF FF */	li r10, -1
/* 800C1FA0 000BEEE0  30 E7 00 00 */	addic r7, r7, 0
lbl_800C1FA4:
/* 800C1FA4 000BEEE4  7C 84 21 14 */	adde r4, r4, r4
/* 800C1FA8 000BEEE8  7C 63 19 14 */	adde r3, r3, r3
/* 800C1FAC 000BEEEC  7D 08 41 14 */	adde r8, r8, r8
/* 800C1FB0 000BEEF0  7C E7 39 14 */	adde r7, r7, r7
/* 800C1FB4 000BEEF4  7C 06 40 10 */	subfc r0, r6, r8
/* 800C1FB8 000BEEF8  7D 25 39 11 */	subfe. r9, r5, r7
/* 800C1FBC 000BEEFC  41 80 00 10 */	blt lbl_800C1FCC
/* 800C1FC0 000BEF00  7C 08 03 78 */	mr r8, r0
/* 800C1FC4 000BEF04  7D 27 4B 78 */	mr r7, r9
/* 800C1FC8 000BEF08  30 0A 00 01 */	addic r0, r10, 1
lbl_800C1FCC:
/* 800C1FCC 000BEF0C  42 00 FF D8 */	bdnz lbl_800C1FA4
/* 800C1FD0 000BEF10  7D 04 43 78 */	mr r4, r8
/* 800C1FD4 000BEF14  7C E3 3B 78 */	mr r3, r7
/* 800C1FD8 000BEF18  4E 80 00 20 */	blr 
/* 800C1FDC 000BEF1C  4E 80 00 20 */	blr 

.global __mod2i
__mod2i:
/* 800C1FE0 000BEF20  2F 83 00 00 */	cmpwi cr7, r3, 0
/* 800C1FE4 000BEF24  40 9C 00 0C */	bge cr7, lbl_800C1FF0
/* 800C1FE8 000BEF28  20 84 00 00 */	subfic r4, r4, 0
/* 800C1FEC 000BEF2C  7C 63 01 90 */	subfze r3, r3
lbl_800C1FF0:
/* 800C1FF0 000BEF30  2C 05 00 00 */	cmpwi r5, 0
/* 800C1FF4 000BEF34  40 80 00 0C */	bge lbl_800C2000
/* 800C1FF8 000BEF38  20 C6 00 00 */	subfic r6, r6, 0
/* 800C1FFC 000BEF3C  7C A5 01 90 */	subfze r5, r5
lbl_800C2000:
/* 800C2000 000BEF40  2C 03 00 00 */	cmpwi r3, 0
/* 800C2004 000BEF44  7C 60 00 34 */	cntlzw r0, r3
/* 800C2008 000BEF48  7C 89 00 34 */	cntlzw r9, r4
/* 800C200C 000BEF4C  40 82 00 08 */	bne lbl_800C2014
/* 800C2010 000BEF50  38 09 00 20 */	addi r0, r9, 0x20
lbl_800C2014:
/* 800C2014 000BEF54  2C 05 00 00 */	cmpwi r5, 0
/* 800C2018 000BEF58  7C A9 00 34 */	cntlzw r9, r5
/* 800C201C 000BEF5C  7C CA 00 34 */	cntlzw r10, r6
/* 800C2020 000BEF60  40 82 00 08 */	bne lbl_800C2028
/* 800C2024 000BEF64  39 2A 00 20 */	addi r9, r10, 0x20
lbl_800C2028:
/* 800C2028 000BEF68  7C 00 48 00 */	cmpw r0, r9
/* 800C202C 000BEF6C  21 40 00 40 */	subfic r10, r0, 0x40
/* 800C2030 000BEF70  41 81 00 AC */	bgt lbl_800C20DC
/* 800C2034 000BEF74  39 29 00 01 */	addi r9, r9, 1
/* 800C2038 000BEF78  21 29 00 40 */	subfic r9, r9, 0x40
/* 800C203C 000BEF7C  7C 00 4A 14 */	add r0, r0, r9
/* 800C2040 000BEF80  7D 29 50 50 */	subf r9, r9, r10
/* 800C2044 000BEF84  7D 29 03 A6 */	mtctr r9
/* 800C2048 000BEF88  2C 09 00 20 */	cmpwi r9, 0x20
/* 800C204C 000BEF8C  38 E9 FF E0 */	addi r7, r9, -32
/* 800C2050 000BEF90  41 80 00 10 */	blt lbl_800C2060
/* 800C2054 000BEF94  7C 68 3C 30 */	srw r8, r3, r7
/* 800C2058 000BEF98  38 E0 00 00 */	li r7, 0
/* 800C205C 000BEF9C  48 00 00 18 */	b lbl_800C2074
lbl_800C2060:
/* 800C2060 000BEFA0  7C 88 4C 30 */	srw r8, r4, r9
/* 800C2064 000BEFA4  20 E9 00 20 */	subfic r7, r9, 0x20
/* 800C2068 000BEFA8  7C 67 38 30 */	slw r7, r3, r7
/* 800C206C 000BEFAC  7D 08 3B 78 */	or r8, r8, r7
/* 800C2070 000BEFB0  7C 67 4C 30 */	srw r7, r3, r9
lbl_800C2074:
/* 800C2074 000BEFB4  2C 00 00 20 */	cmpwi r0, 0x20
/* 800C2078 000BEFB8  31 20 FF E0 */	addic r9, r0, -32
/* 800C207C 000BEFBC  41 80 00 10 */	blt lbl_800C208C
/* 800C2080 000BEFC0  7C 83 48 30 */	slw r3, r4, r9
/* 800C2084 000BEFC4  38 80 00 00 */	li r4, 0
/* 800C2088 000BEFC8  48 00 00 18 */	b lbl_800C20A0
lbl_800C208C:
/* 800C208C 000BEFCC  7C 63 00 30 */	slw r3, r3, r0
/* 800C2090 000BEFD0  21 20 00 20 */	subfic r9, r0, 0x20
/* 800C2094 000BEFD4  7C 89 4C 30 */	srw r9, r4, r9
/* 800C2098 000BEFD8  7C 63 4B 78 */	or r3, r3, r9
/* 800C209C 000BEFDC  7C 84 00 30 */	slw r4, r4, r0
lbl_800C20A0:
/* 800C20A0 000BEFE0  39 40 FF FF */	li r10, -1
/* 800C20A4 000BEFE4  30 E7 00 00 */	addic r7, r7, 0
lbl_800C20A8:
/* 800C20A8 000BEFE8  7C 84 21 14 */	adde r4, r4, r4
/* 800C20AC 000BEFEC  7C 63 19 14 */	adde r3, r3, r3
/* 800C20B0 000BEFF0  7D 08 41 14 */	adde r8, r8, r8
/* 800C20B4 000BEFF4  7C E7 39 14 */	adde r7, r7, r7
/* 800C20B8 000BEFF8  7C 06 40 10 */	subfc r0, r6, r8
/* 800C20BC 000BEFFC  7D 25 39 11 */	subfe. r9, r5, r7
/* 800C20C0 000BF000  41 80 00 10 */	blt lbl_800C20D0
/* 800C20C4 000BF004  7C 08 03 78 */	mr r8, r0
/* 800C20C8 000BF008  7D 27 4B 78 */	mr r7, r9
/* 800C20CC 000BF00C  30 0A 00 01 */	addic r0, r10, 1
lbl_800C20D0:
/* 800C20D0 000BF010  42 00 FF D8 */	bdnz lbl_800C20A8
/* 800C20D4 000BF014  7D 04 43 78 */	mr r4, r8
/* 800C20D8 000BF018  7C E3 3B 78 */	mr r3, r7
lbl_800C20DC:
/* 800C20DC 000BF01C  4C 9C 00 20 */	bgelr cr7
/* 800C20E0 000BF020  20 84 00 00 */	subfic r4, r4, 0
/* 800C20E4 000BF024  7C 63 01 90 */	subfze r3, r3
/* 800C20E8 000BF028  4E 80 00 20 */	blr 

.global __shl2i
__shl2i:
/* 800C20EC 000BF02C  21 05 00 20 */	subfic r8, r5, 0x20
/* 800C20F0 000BF030  31 25 FF E0 */	addic r9, r5, -32
/* 800C20F4 000BF034  7C 63 28 30 */	slw r3, r3, r5
/* 800C20F8 000BF038  7C 8A 44 30 */	srw r10, r4, r8
/* 800C20FC 000BF03C  7C 63 53 78 */	or r3, r3, r10
/* 800C2100 000BF040  7C 8A 48 30 */	slw r10, r4, r9
/* 800C2104 000BF044  7C 63 53 78 */	or r3, r3, r10
/* 800C2108 000BF048  7C 84 28 30 */	slw r4, r4, r5
/* 800C210C 000BF04C  4E 80 00 20 */	blr 

.global __shr2u
__shr2u:
/* 800C2110 000BF050  21 05 00 20 */	subfic r8, r5, 0x20
/* 800C2114 000BF054  31 25 FF E0 */	addic r9, r5, -32
/* 800C2118 000BF058  7C 84 2C 30 */	srw r4, r4, r5
/* 800C211C 000BF05C  7C 6A 40 30 */	slw r10, r3, r8
/* 800C2120 000BF060  7C 84 53 78 */	or r4, r4, r10
/* 800C2124 000BF064  7C 6A 4C 30 */	srw r10, r3, r9
/* 800C2128 000BF068  7C 84 53 78 */	or r4, r4, r10
/* 800C212C 000BF06C  7C 63 2C 30 */	srw r3, r3, r5
/* 800C2130 000BF070  4E 80 00 20 */	blr 

.global __shr2i
__shr2i:
/* 800C2134 000BF074  21 05 00 20 */	subfic r8, r5, 0x20
/* 800C2138 000BF078  35 25 FF E0 */	addic. r9, r5, -32
/* 800C213C 000BF07C  7C 84 2C 30 */	srw r4, r4, r5
/* 800C2140 000BF080  7C 6A 40 30 */	slw r10, r3, r8
/* 800C2144 000BF084  7C 84 53 78 */	or r4, r4, r10
/* 800C2148 000BF088  7C 6A 4E 30 */	sraw r10, r3, r9
/* 800C214C 000BF08C  40 81 00 08 */	ble lbl_800C2154
/* 800C2150 000BF090  7C 84 53 78 */	or r4, r4, r10
lbl_800C2154:
/* 800C2154 000BF094  7C 63 2E 30 */	sraw r3, r3, r5
/* 800C2158 000BF098  4E 80 00 20 */	blr 

.global __cvt_ull_dbl
__cvt_ull_dbl:
/* 800C215C 000BF09C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C2160 000BF0A0  7C 67 23 79 */	or. r7, r3, r4
/* 800C2164 000BF0A4  38 C0 00 00 */	li r6, 0
/* 800C2168 000BF0A8  41 82 00 7C */	beq lbl_800C21E4
/* 800C216C 000BF0AC  7C 67 00 34 */	cntlzw r7, r3
/* 800C2170 000BF0B0  7C 88 00 34 */	cntlzw r8, r4
/* 800C2174 000BF0B4  54 E9 D0 08 */	rlwinm r9, r7, 0x1a, 0, 4
/* 800C2178 000BF0B8  7D 29 FE 70 */	srawi r9, r9, 0x1f
/* 800C217C 000BF0BC  7D 29 40 38 */	and r9, r9, r8
/* 800C2180 000BF0C0  7C E7 4A 14 */	add r7, r7, r9
/* 800C2184 000BF0C4  21 07 00 20 */	subfic r8, r7, 0x20
/* 800C2188 000BF0C8  31 27 FF E0 */	addic r9, r7, -32
/* 800C218C 000BF0CC  7C 63 38 30 */	slw r3, r3, r7
/* 800C2190 000BF0D0  7C 8A 44 30 */	srw r10, r4, r8
/* 800C2194 000BF0D4  7C 63 53 78 */	or r3, r3, r10
/* 800C2198 000BF0D8  7C 8A 48 30 */	slw r10, r4, r9
/* 800C219C 000BF0DC  7C 63 53 78 */	or r3, r3, r10
/* 800C21A0 000BF0E0  7C 84 38 30 */	slw r4, r4, r7
/* 800C21A4 000BF0E4  7C C7 30 50 */	subf r6, r7, r6
/* 800C21A8 000BF0E8  54 87 05 7E */	clrlwi r7, r4, 0x15
/* 800C21AC 000BF0EC  2C 07 04 00 */	cmpwi r7, 0x400
/* 800C21B0 000BF0F0  38 C6 04 3E */	addi r6, r6, 0x43e
/* 800C21B4 000BF0F4  41 80 00 1C */	blt lbl_800C21D0
/* 800C21B8 000BF0F8  41 81 00 0C */	bgt lbl_800C21C4
/* 800C21BC 000BF0FC  54 87 05 29 */	rlwinm. r7, r4, 0, 0x14, 0x14
/* 800C21C0 000BF100  41 82 00 10 */	beq lbl_800C21D0
lbl_800C21C4:
/* 800C21C4 000BF104  30 84 08 00 */	addic r4, r4, 0x800
/* 800C21C8 000BF108  7C 63 01 94 */	addze r3, r3
/* 800C21CC 000BF10C  7C C6 01 94 */	addze r6, r6
lbl_800C21D0:
/* 800C21D0 000BF110  54 84 A8 3E */	rotlwi r4, r4, 0x15
/* 800C21D4 000BF114  50 64 A8 14 */	rlwimi r4, r3, 0x15, 0, 0xa
/* 800C21D8 000BF118  54 63 AB 3E */	rlwinm r3, r3, 0x15, 0xc, 0x1f
/* 800C21DC 000BF11C  54 C6 A0 16 */	slwi r6, r6, 0x14
/* 800C21E0 000BF120  7C C3 1B 78 */	or r3, r6, r3
lbl_800C21E4:
/* 800C21E4 000BF124  90 61 00 08 */	stw r3, 8(r1)
/* 800C21E8 000BF128  90 81 00 0C */	stw r4, 0xc(r1)
/* 800C21EC 000BF12C  C8 21 00 08 */	lfd f1, 8(r1)
/* 800C21F0 000BF130  38 21 00 10 */	addi r1, r1, 0x10
/* 800C21F4 000BF134  4E 80 00 20 */	blr 

.global __cvt_dbl_usll
__cvt_dbl_usll:
/* 800C21F8 000BF138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C21FC 000BF13C  D8 21 00 08 */	stfd f1, 8(r1)
/* 800C2200 000BF140  80 61 00 08 */	lwz r3, 8(r1)
/* 800C2204 000BF144  80 81 00 0C */	lwz r4, 0xc(r1)
/* 800C2208 000BF148  54 65 65 7E */	rlwinm r5, r3, 0xc, 0x15, 0x1f
/* 800C220C 000BF14C  28 05 03 FF */	cmplwi r5, 0x3ff
/* 800C2210 000BF150  40 80 00 10 */	bge lbl_800C2220
/* 800C2214 000BF154  38 60 00 00 */	li r3, 0
/* 800C2218 000BF158  38 80 00 00 */	li r4, 0
/* 800C221C 000BF15C  48 00 00 A0 */	b lbl_800C22BC
lbl_800C2220:
/* 800C2220 000BF160  7C 66 1B 78 */	mr r6, r3
/* 800C2224 000BF164  54 63 03 3E */	clrlwi r3, r3, 0xc
/* 800C2228 000BF168  64 63 00 10 */	oris r3, r3, 0x10
/* 800C222C 000BF16C  38 A5 FB CD */	addi r5, r5, -1075
/* 800C2230 000BF170  2C 05 00 00 */	cmpwi r5, 0
/* 800C2234 000BF174  40 80 00 2C */	bge lbl_800C2260
/* 800C2238 000BF178  7C A5 00 D0 */	neg r5, r5
/* 800C223C 000BF17C  21 05 00 20 */	subfic r8, r5, 0x20
/* 800C2240 000BF180  31 25 FF E0 */	addic r9, r5, -32
/* 800C2244 000BF184  7C 84 2C 30 */	srw r4, r4, r5
/* 800C2248 000BF188  7C 6A 40 30 */	slw r10, r3, r8
/* 800C224C 000BF18C  7C 84 53 78 */	or r4, r4, r10
/* 800C2250 000BF190  7C 6A 4C 30 */	srw r10, r3, r9
/* 800C2254 000BF194  7C 84 53 78 */	or r4, r4, r10
/* 800C2258 000BF198  7C 63 2C 30 */	srw r3, r3, r5
/* 800C225C 000BF19C  48 00 00 50 */	b lbl_800C22AC
lbl_800C2260:
/* 800C2260 000BF1A0  2C 05 00 0A */	cmpwi r5, 0xa
/* 800C2264 000BF1A4  40 A1 00 28 */	ble+ lbl_800C228C
/* 800C2268 000BF1A8  54 C6 00 01 */	rlwinm. r6, r6, 0, 0, 0
/* 800C226C 000BF1AC  41 82 00 10 */	beq lbl_800C227C
/* 800C2270 000BF1B0  3C 60 80 00 */	lis r3, 0x8000
/* 800C2274 000BF1B4  38 80 00 00 */	li r4, 0
/* 800C2278 000BF1B8  48 00 00 44 */	b lbl_800C22BC
lbl_800C227C:
/* 800C227C 000BF1BC  3C 60 7F FF */	lis r3, 0x7FFFFFFF@h
/* 800C2280 000BF1C0  60 63 FF FF */	ori r3, r3, 0x7FFFFFFF@l
/* 800C2284 000BF1C4  38 80 FF FF */	li r4, -1
/* 800C2288 000BF1C8  48 00 00 34 */	b lbl_800C22BC
lbl_800C228C:
/* 800C228C 000BF1CC  21 05 00 20 */	subfic r8, r5, 0x20
/* 800C2290 000BF1D0  31 25 FF E0 */	addic r9, r5, -32
/* 800C2294 000BF1D4  7C 63 28 30 */	slw r3, r3, r5
/* 800C2298 000BF1D8  7C 8A 44 30 */	srw r10, r4, r8
/* 800C229C 000BF1DC  7C 63 53 78 */	or r3, r3, r10
/* 800C22A0 000BF1E0  7C 8A 48 30 */	slw r10, r4, r9
/* 800C22A4 000BF1E4  7C 63 53 78 */	or r3, r3, r10
/* 800C22A8 000BF1E8  7C 84 28 30 */	slw r4, r4, r5
lbl_800C22AC:
/* 800C22AC 000BF1EC  54 C6 00 01 */	rlwinm. r6, r6, 0, 0, 0
/* 800C22B0 000BF1F0  41 82 00 0C */	beq lbl_800C22BC
/* 800C22B4 000BF1F4  20 84 00 00 */	subfic r4, r4, 0
/* 800C22B8 000BF1F8  7C 63 01 90 */	subfze r3, r3
lbl_800C22BC:
/* 800C22BC 000BF1FC  38 21 00 10 */	addi r1, r1, 0x10
/* 800C22C0 000BF200  4E 80 00 20 */	blr 
