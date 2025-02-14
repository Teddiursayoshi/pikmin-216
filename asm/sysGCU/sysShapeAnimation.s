.include "macros.inc"
.section .ctors, "wa"  # 0x80472F00 - 0x804732C0
lbl_constructor:
	.4byte __sinit_sysShapeAnimation_cpp

.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
lbl_8049AC40:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.balign 4
lbl_8049AC4C:
	.asciz "sysShapeModel"
.balign 4
lbl_8049AC5C:
	.asciz "sysShapeAnimation.cpp"
.balign 4
lbl_8049AC74:
	.asciz "animData null!\n"
.balign 4
lbl_8049AC84:
	.asciz "nanda~~~~?\n"

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
govNAN___Q24Game5P2JST:
	.float 0.0
	.float 0.0
	.float 0.0

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
gu32NAN___Q24Game5P2JST:
	.skip 4
gfNAN___Q24Game5P2JST:
	.skip 4

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
lbl_805208F8:
	.asciz "%s/%s"
.balign 4
lbl_80520900:
	.asciz "%s"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global attach__Q28SysShape8AnimInfoFP12J3DModelDataPv
attach__Q28SysShape8AnimInfoFP12J3DModelDataPv:
/* 8043DCDC 0043AC1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8043DCE0 0043AC20  7C 08 02 A6 */	mflr r0
/* 8043DCE4 0043AC24  90 01 00 24 */	stw r0, 0x24(r1)
/* 8043DCE8 0043AC28  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8043DCEC 0043AC2C  7C BF 2B 79 */	or. r31, r5, r5
/* 8043DCF0 0043AC30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8043DCF4 0043AC34  7C 9E 23 78 */	mr r30, r4
/* 8043DCF8 0043AC38  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8043DCFC 0043AC3C  7C 7D 1B 78 */	mr r29, r3
/* 8043DD00 0043AC40  40 82 00 20 */	bne lbl_8043DD20
/* 8043DD04 0043AC44  3C 60 80 4A */	lis r3, lbl_8049AC5C@ha
/* 8043DD08 0043AC48  3C A0 80 4A */	lis r5, lbl_8049AC74@ha
/* 8043DD0C 0043AC4C  38 63 AC 5C */	addi r3, r3, lbl_8049AC5C@l
/* 8043DD10 0043AC50  38 80 00 40 */	li r4, 0x40
/* 8043DD14 0043AC54  38 A5 AC 74 */	addi r5, r5, lbl_8049AC74@l
/* 8043DD18 0043AC58  4C C6 31 82 */	crclr 6
/* 8043DD1C 0043AC5C  4B BE C9 25 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8043DD20:
/* 8043DD20 0043AC60  7F E3 FB 78 */	mr r3, r31
/* 8043DD24 0043AC64  4B C3 48 7D */	bl load__20J3DAnmLoaderDataBaseFPCv
/* 8043DD28 0043AC68  90 7D 00 18 */	stw r3, 0x18(r29)
/* 8043DD2C 0043AC6C  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8043DD30 0043AC70  80 9D 00 18 */	lwz r4, 0x18(r29)
/* 8043DD34 0043AC74  54 03 07 3E */	clrlwi r3, r0, 0x1c
/* 8043DD38 0043AC78  4B C2 D9 F1 */	bl J3DNewMtxCalcAnm__FUlP15J3DAnmTransform
/* 8043DD3C 0043AC7C  90 7D 00 1C */	stw r3, 0x1c(r29)
/* 8043DD40 0043AC80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8043DD44 0043AC84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8043DD48 0043AC88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8043DD4C 0043AC8C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8043DD50 0043AC90  7C 08 03 A6 */	mtlr r0
/* 8043DD54 0043AC94  38 21 00 20 */	addi r1, r1, 0x20
/* 8043DD58 0043AC98  4E 80 00 20 */	blr 

.global load__Q28SysShape7AnimMgrFP13JKRFileLoaderPcP12J3DModelDataP13JKRFileLoaderPc
load__Q28SysShape7AnimMgrFP13JKRFileLoaderPcP12J3DModelDataP13JKRFileLoaderPc:
/* 8043DD5C 0043AC9C  94 21 FB C0 */	stwu r1, -0x440(r1)
/* 8043DD60 0043ACA0  7C 08 02 A6 */	mflr r0
/* 8043DD64 0043ACA4  90 01 04 44 */	stw r0, 0x444(r1)
/* 8043DD68 0043ACA8  BF 41 04 28 */	stmw r26, 0x428(r1)
/* 8043DD6C 0043ACAC  7C BC 2B 78 */	mr r28, r5
/* 8043DD70 0043ACB0  7C DD 33 78 */	mr r29, r6
/* 8043DD74 0043ACB4  7C FE 3B 78 */	mr r30, r7
/* 8043DD78 0043ACB8  81 83 00 00 */	lwz r12, 0(r3)
/* 8043DD7C 0043ACBC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8043DD80 0043ACC0  7D 89 03 A6 */	mtctr r12
/* 8043DD84 0043ACC4  4E 80 04 21 */	bctrl 
/* 8043DD88 0043ACC8  28 03 00 00 */	cmplwi r3, 0
/* 8043DD8C 0043ACCC  40 82 00 0C */	bne lbl_8043DD98
/* 8043DD90 0043ACD0  38 60 00 00 */	li r3, 0
/* 8043DD94 0043ACD4  48 00 00 D4 */	b lbl_8043DE68
lbl_8043DD98:
/* 8043DD98 0043ACD8  7C 64 1B 78 */	mr r4, r3
/* 8043DD9C 0043ACDC  38 61 00 08 */	addi r3, r1, 8
/* 8043DDA0 0043ACE0  38 A0 FF FF */	li r5, -1
/* 8043DDA4 0043ACE4  4B FD 7B 55 */	bl __ct__9RamStreamFPvi
/* 8043DDA8 0043ACE8  38 00 00 01 */	li r0, 1
/* 8043DDAC 0043ACEC  2C 00 00 01 */	cmpwi r0, 1
/* 8043DDB0 0043ACF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043DDB4 0043ACF4  40 82 00 0C */	bne lbl_8043DDC0
/* 8043DDB8 0043ACF8  38 00 00 00 */	li r0, 0
/* 8043DDBC 0043ACFC  90 01 04 1C */	stw r0, 0x41c(r1)
lbl_8043DDC0:
/* 8043DDC0 0043AD00  38 60 00 74 */	li r3, 0x74
/* 8043DDC4 0043AD04  4B BE 60 E1 */	bl __nw__FUl
/* 8043DDC8 0043AD08  7C 7F 1B 79 */	or. r31, r3, r3
/* 8043DDCC 0043AD0C  41 82 00 80 */	beq lbl_8043DE4C
/* 8043DDD0 0043AD10  4B FD 35 C1 */	bl __ct__5CNodeFv
/* 8043DDD4 0043AD14  3C 60 80 4F */	lis r3, __vt__Q28SysShape7AnimMgr@ha
/* 8043DDD8 0043AD18  3B 7F 00 1C */	addi r27, r31, 0x1c
/* 8043DDDC 0043AD1C  38 03 BD E4 */	addi r0, r3, __vt__Q28SysShape7AnimMgr@l
/* 8043DDE0 0043AD20  90 1F 00 00 */	stw r0, 0(r31)
/* 8043DDE4 0043AD24  7F 63 DB 78 */	mr r3, r27
/* 8043DDE8 0043AD28  4B FD 35 A9 */	bl __ct__5CNodeFv
/* 8043DDEC 0043AD2C  3C 60 80 4F */	lis r3, __vt__Q28SysShape8AnimInfo@ha
/* 8043DDF0 0043AD30  3B 5B 00 28 */	addi r26, r27, 0x28
/* 8043DDF4 0043AD34  38 03 BD D4 */	addi r0, r3, __vt__Q28SysShape8AnimInfo@l
/* 8043DDF8 0043AD38  90 1B 00 00 */	stw r0, 0(r27)
/* 8043DDFC 0043AD3C  7F 43 D3 78 */	mr r3, r26
/* 8043DE00 0043AD40  4B FD 35 91 */	bl __ct__5CNodeFv
/* 8043DE04 0043AD44  3C 80 80 4B */	lis r4, __vt__Q28SysShape8KeyEvent@ha
/* 8043DE08 0043AD48  38 60 00 00 */	li r3, 0
/* 8043DE0C 0043AD4C  38 84 A6 5C */	addi r4, r4, __vt__Q28SysShape8KeyEvent@l
/* 8043DE10 0043AD50  38 00 FF FF */	li r0, -1
/* 8043DE14 0043AD54  90 9A 00 00 */	stw r4, 0(r26)
/* 8043DE18 0043AD58  90 7A 00 18 */	stw r3, 0x18(r26)
/* 8043DE1C 0043AD5C  90 7A 00 1C */	stw r3, 0x1c(r26)
/* 8043DE20 0043AD60  B0 1A 00 20 */	sth r0, 0x20(r26)
/* 8043DE24 0043AD64  90 7B 00 18 */	stw r3, 0x18(r27)
/* 8043DE28 0043AD68  90 7B 00 1C */	stw r3, 0x1c(r27)
/* 8043DE2C 0043AD6C  90 7B 00 50 */	stw r3, 0x50(r27)
/* 8043DE30 0043AD70  90 7B 00 24 */	stw r3, 0x24(r27)
/* 8043DE34 0043AD74  B0 7F 00 70 */	sth r3, 0x70(r31)
/* 8043DE38 0043AD78  90 7F 00 18 */	stw r3, 0x18(r31)
/* 8043DE3C 0043AD7C  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 8043DE40 0043AD80  90 7F 00 28 */	stw r3, 0x28(r31)
/* 8043DE44 0043AD84  90 7F 00 24 */	stw r3, 0x24(r31)
/* 8043DE48 0043AD88  90 7F 00 20 */	stw r3, 0x20(r31)
lbl_8043DE4C:
/* 8043DE4C 0043AD8C  7F E3 FB 78 */	mr r3, r31
/* 8043DE50 0043AD90  7F 85 E3 78 */	mr r5, r28
/* 8043DE54 0043AD94  7F A6 EB 78 */	mr r6, r29
/* 8043DE58 0043AD98  7F C7 F3 78 */	mr r7, r30
/* 8043DE5C 0043AD9C  38 81 00 08 */	addi r4, r1, 8
/* 8043DE60 0043ADA0  48 00 00 1D */	bl load__Q28SysShape7AnimMgrFR6StreamP12J3DModelDataP13JKRFileLoaderPc
/* 8043DE64 0043ADA4  7F E3 FB 78 */	mr r3, r31
lbl_8043DE68:
/* 8043DE68 0043ADA8  BB 41 04 28 */	lmw r26, 0x428(r1)
/* 8043DE6C 0043ADAC  80 01 04 44 */	lwz r0, 0x444(r1)
/* 8043DE70 0043ADB0  7C 08 03 A6 */	mtlr r0
/* 8043DE74 0043ADB4  38 21 04 40 */	addi r1, r1, 0x440
/* 8043DE78 0043ADB8  4E 80 00 20 */	blr 

.global load__Q28SysShape7AnimMgrFR6StreamP12J3DModelDataP13JKRFileLoaderPc
load__Q28SysShape7AnimMgrFR6StreamP12J3DModelDataP13JKRFileLoaderPc:
/* 8043DE7C 0043ADBC  94 21 FD E0 */	stwu r1, -0x220(r1)
/* 8043DE80 0043ADC0  7C 08 02 A6 */	mflr r0
/* 8043DE84 0043ADC4  3D 00 80 4A */	lis r8, lbl_8049AC40@ha
/* 8043DE88 0043ADC8  90 01 02 24 */	stw r0, 0x224(r1)
/* 8043DE8C 0043ADCC  BF 41 02 08 */	stmw r26, 0x208(r1)
/* 8043DE90 0043ADD0  7C 7D 1B 78 */	mr r29, r3
/* 8043DE94 0043ADD4  7C BA 2B 78 */	mr r26, r5
/* 8043DE98 0043ADD8  7C DB 33 78 */	mr r27, r6
/* 8043DE9C 0043ADDC  7C FC 3B 78 */	mr r28, r7
/* 8043DEA0 0043ADE0  3B E8 AC 40 */	addi r31, r8, lbl_8049AC40@l
/* 8043DEA4 0043ADE4  48 00 00 E9 */	bl read__Q28SysShape7AnimMgrFR6Stream
/* 8043DEA8 0043ADE8  83 DD 00 2C */	lwz r30, 0x2c(r29)
/* 8043DEAC 0043ADEC  48 00 00 C4 */	b lbl_8043DF70
lbl_8043DEB0:
/* 8043DEB0 0043ADF0  28 1C 00 00 */	cmplwi r28, 0
/* 8043DEB4 0043ADF4  41 82 00 3C */	beq lbl_8043DEF0
/* 8043DEB8 0043ADF8  80 DE 00 14 */	lwz r6, 0x14(r30)
/* 8043DEBC 0043ADFC  7F 85 E3 78 */	mr r5, r28
/* 8043DEC0 0043AE00  38 61 00 08 */	addi r3, r1, 8
/* 8043DEC4 0043AE04  38 82 25 98 */	addi r4, r2, lbl_805208F8@sda21
/* 8043DEC8 0043AE08  4C C6 31 82 */	crclr 6
/* 8043DECC 0043AE0C  4B C8 95 6D */	bl sprintf
/* 8043DED0 0043AE10  7F 63 DB 78 */	mr r3, r27
/* 8043DED4 0043AE14  38 81 00 08 */	addi r4, r1, 8
/* 8043DED8 0043AE18  81 9B 00 00 */	lwz r12, 0(r27)
/* 8043DEDC 0043AE1C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8043DEE0 0043AE20  7D 89 03 A6 */	mtctr r12
/* 8043DEE4 0043AE24  4E 80 04 21 */	bctrl 
/* 8043DEE8 0043AE28  7C 7D 1B 78 */	mr r29, r3
/* 8043DEEC 0043AE2C  48 00 00 28 */	b lbl_8043DF14
lbl_8043DEF0:
/* 8043DEF0 0043AE30  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 8043DEF4 0043AE34  38 61 00 08 */	addi r3, r1, 8
/* 8043DEF8 0043AE38  38 82 25 A0 */	addi r4, r2, lbl_80520900@sda21
/* 8043DEFC 0043AE3C  4C C6 31 82 */	crclr 6
/* 8043DF00 0043AE40  4B C8 95 39 */	bl sprintf
/* 8043DF04 0043AE44  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8043DF08 0043AE48  7F 64 DB 78 */	mr r4, r27
/* 8043DF0C 0043AE4C  4B BE 51 0D */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8043DF10 0043AE50  7C 7D 1B 78 */	mr r29, r3
lbl_8043DF14:
/* 8043DF14 0043AE54  28 1D 00 00 */	cmplwi r29, 0
/* 8043DF18 0043AE58  40 82 00 18 */	bne lbl_8043DF30
/* 8043DF1C 0043AE5C  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8043DF20 0043AE60  38 BF 00 44 */	addi r5, r31, 0x44
/* 8043DF24 0043AE64  38 80 00 77 */	li r4, 0x77
/* 8043DF28 0043AE68  4C C6 31 82 */	crclr 6
/* 8043DF2C 0043AE6C  4B BE C7 15 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8043DF30:
/* 8043DF30 0043AE70  28 1D 00 00 */	cmplwi r29, 0
/* 8043DF34 0043AE74  40 82 00 18 */	bne lbl_8043DF4C
/* 8043DF38 0043AE78  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8043DF3C 0043AE7C  38 BF 00 34 */	addi r5, r31, 0x34
/* 8043DF40 0043AE80  38 80 00 40 */	li r4, 0x40
/* 8043DF44 0043AE84  4C C6 31 82 */	crclr 6
/* 8043DF48 0043AE88  4B BE C6 F9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8043DF4C:
/* 8043DF4C 0043AE8C  7F A3 EB 78 */	mr r3, r29
/* 8043DF50 0043AE90  4B C3 46 51 */	bl load__20J3DAnmLoaderDataBaseFPCv
/* 8043DF54 0043AE94  90 7E 00 18 */	stw r3, 0x18(r30)
/* 8043DF58 0043AE98  80 1A 00 18 */	lwz r0, 0x18(r26)
/* 8043DF5C 0043AE9C  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 8043DF60 0043AEA0  54 03 07 3E */	clrlwi r3, r0, 0x1c
/* 8043DF64 0043AEA4  4B C2 D7 C5 */	bl J3DNewMtxCalcAnm__FUlP15J3DAnmTransform
/* 8043DF68 0043AEA8  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 8043DF6C 0043AEAC  83 DE 00 04 */	lwz r30, 4(r30)
lbl_8043DF70:
/* 8043DF70 0043AEB0  28 1E 00 00 */	cmplwi r30, 0
/* 8043DF74 0043AEB4  40 82 FF 3C */	bne lbl_8043DEB0
/* 8043DF78 0043AEB8  BB 41 02 08 */	lmw r26, 0x208(r1)
/* 8043DF7C 0043AEBC  80 01 02 24 */	lwz r0, 0x224(r1)
/* 8043DF80 0043AEC0  7C 08 03 A6 */	mtlr r0
/* 8043DF84 0043AEC4  38 21 02 20 */	addi r1, r1, 0x220
/* 8043DF88 0043AEC8  4E 80 00 20 */	blr 

.global read__Q28SysShape7AnimMgrFR6Stream
read__Q28SysShape7AnimMgrFR6Stream:
/* 8043DF8C 0043AECC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8043DF90 0043AED0  7C 08 02 A6 */	mflr r0
/* 8043DF94 0043AED4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8043DF98 0043AED8  BF 41 00 08 */	stmw r26, 8(r1)
/* 8043DF9C 0043AEDC  7C 9C 23 78 */	mr r28, r4
/* 8043DFA0 0043AEE0  7C 7B 1B 78 */	mr r27, r3
/* 8043DFA4 0043AEE4  7F 83 E3 78 */	mr r3, r28
/* 8043DFA8 0043AEE8  4B FD 6A E9 */	bl readInt__6StreamFv
/* 8043DFAC 0043AEEC  7C 7F 1B 78 */	mr r31, r3
/* 8043DFB0 0043AEF0  3B A0 00 00 */	li r29, 0
/* 8043DFB4 0043AEF4  48 00 00 94 */	b lbl_8043E048
lbl_8043DFB8:
/* 8043DFB8 0043AEF8  38 60 00 54 */	li r3, 0x54
/* 8043DFBC 0043AEFC  4B BE 5E E9 */	bl __nw__FUl
/* 8043DFC0 0043AF00  7C 7E 1B 79 */	or. r30, r3, r3
/* 8043DFC4 0043AF04  41 82 00 50 */	beq lbl_8043E014
/* 8043DFC8 0043AF08  4B FD 33 C9 */	bl __ct__5CNodeFv
/* 8043DFCC 0043AF0C  3C 60 80 4F */	lis r3, __vt__Q28SysShape8AnimInfo@ha
/* 8043DFD0 0043AF10  3B 5E 00 28 */	addi r26, r30, 0x28
/* 8043DFD4 0043AF14  38 03 BD D4 */	addi r0, r3, __vt__Q28SysShape8AnimInfo@l
/* 8043DFD8 0043AF18  90 1E 00 00 */	stw r0, 0(r30)
/* 8043DFDC 0043AF1C  7F 43 D3 78 */	mr r3, r26
/* 8043DFE0 0043AF20  4B FD 33 B1 */	bl __ct__5CNodeFv
/* 8043DFE4 0043AF24  3C 80 80 4B */	lis r4, __vt__Q28SysShape8KeyEvent@ha
/* 8043DFE8 0043AF28  38 60 00 00 */	li r3, 0
/* 8043DFEC 0043AF2C  38 84 A6 5C */	addi r4, r4, __vt__Q28SysShape8KeyEvent@l
/* 8043DFF0 0043AF30  38 00 FF FF */	li r0, -1
/* 8043DFF4 0043AF34  90 9A 00 00 */	stw r4, 0(r26)
/* 8043DFF8 0043AF38  90 7A 00 18 */	stw r3, 0x18(r26)
/* 8043DFFC 0043AF3C  90 7A 00 1C */	stw r3, 0x1c(r26)
/* 8043E000 0043AF40  B0 1A 00 20 */	sth r0, 0x20(r26)
/* 8043E004 0043AF44  93 7E 00 50 */	stw r27, 0x50(r30)
/* 8043E008 0043AF48  90 7E 00 18 */	stw r3, 0x18(r30)
/* 8043E00C 0043AF4C  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 8043E010 0043AF50  90 7E 00 24 */	stw r3, 0x24(r30)
lbl_8043E014:
/* 8043E014 0043AF54  7F C3 F3 78 */	mr r3, r30
/* 8043E018 0043AF58  7F 84 E3 78 */	mr r4, r28
/* 8043E01C 0043AF5C  4B FE B9 61 */	bl read__Q28SysShape8AnimInfoFR6Stream
/* 8043E020 0043AF60  A0 1B 00 70 */	lhz r0, 0x70(r27)
/* 8043E024 0043AF64  7F C4 F3 78 */	mr r4, r30
/* 8043E028 0043AF68  38 7B 00 1C */	addi r3, r27, 0x1c
/* 8043E02C 0043AF6C  B0 1E 00 20 */	sth r0, 0x20(r30)
/* 8043E030 0043AF70  93 7E 00 50 */	stw r27, 0x50(r30)
/* 8043E034 0043AF74  4B FD 33 D5 */	bl add__5CNodeFP5CNode
/* 8043E038 0043AF78  A0 7B 00 70 */	lhz r3, 0x70(r27)
/* 8043E03C 0043AF7C  3B BD 00 01 */	addi r29, r29, 1
/* 8043E040 0043AF80  38 03 00 01 */	addi r0, r3, 1
/* 8043E044 0043AF84  B0 1B 00 70 */	sth r0, 0x70(r27)
lbl_8043E048:
/* 8043E048 0043AF88  7C 1D F8 00 */	cmpw r29, r31
/* 8043E04C 0043AF8C  41 80 FF 6C */	blt lbl_8043DFB8
/* 8043E050 0043AF90  BB 41 00 08 */	lmw r26, 8(r1)
/* 8043E054 0043AF94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8043E058 0043AF98  7C 08 03 A6 */	mtlr r0
/* 8043E05C 0043AF9C  38 21 00 20 */	addi r1, r1, 0x20
/* 8043E060 0043AFA0  4E 80 00 20 */	blr 

.global connectBasArc__Q28SysShape7AnimMgrFPcPcP13JKRFileLoader
connectBasArc__Q28SysShape7AnimMgrFPcPcP13JKRFileLoader:
/* 8043E064 0043AFA4  94 21 FD E0 */	stwu r1, -0x220(r1)
/* 8043E068 0043AFA8  7C 08 02 A6 */	mflr r0
/* 8043E06C 0043AFAC  90 01 02 24 */	stw r0, 0x224(r1)
/* 8043E070 0043AFB0  BF 61 02 0C */	stmw r27, 0x20c(r1)
/* 8043E074 0043AFB4  7C 9B 23 78 */	mr r27, r4
/* 8043E078 0043AFB8  7C DC 33 78 */	mr r28, r6
/* 8043E07C 0043AFBC  83 C3 00 2C */	lwz r30, 0x2c(r3)
/* 8043E080 0043AFC0  48 00 00 C0 */	b lbl_8043E140
lbl_8043E084:
/* 8043E084 0043AFC4  28 1B 00 00 */	cmplwi r27, 0
/* 8043E088 0043AFC8  41 82 00 20 */	beq lbl_8043E0A8
/* 8043E08C 0043AFCC  80 DE 00 14 */	lwz r6, 0x14(r30)
/* 8043E090 0043AFD0  7F 65 DB 78 */	mr r5, r27
/* 8043E094 0043AFD4  38 61 00 08 */	addi r3, r1, 8
/* 8043E098 0043AFD8  38 82 25 98 */	addi r4, r2, lbl_805208F8@sda21
/* 8043E09C 0043AFDC  4C C6 31 82 */	crclr 6
/* 8043E0A0 0043AFE0  4B C8 93 99 */	bl sprintf
/* 8043E0A4 0043AFE4  48 00 00 18 */	b lbl_8043E0BC
lbl_8043E0A8:
/* 8043E0A8 0043AFE8  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 8043E0AC 0043AFEC  38 61 00 08 */	addi r3, r1, 8
/* 8043E0B0 0043AFF0  38 82 25 A0 */	addi r4, r2, lbl_80520900@sda21
/* 8043E0B4 0043AFF4  4C C6 31 82 */	crclr 6
/* 8043E0B8 0043AFF8  4B C8 93 81 */	bl sprintf
lbl_8043E0BC:
/* 8043E0BC 0043AFFC  3B E1 00 08 */	addi r31, r1, 8
/* 8043E0C0 0043B000  3B A0 00 00 */	li r29, 0
/* 8043E0C4 0043B004  48 00 00 44 */	b lbl_8043E108
lbl_8043E0C8:
/* 8043E0C8 0043B008  88 1F 00 00 */	lbz r0, 0(r31)
/* 8043E0CC 0043B00C  2C 00 00 2E */	cmpwi r0, 0x2e
/* 8043E0D0 0043B010  40 82 00 30 */	bne lbl_8043E100
/* 8043E0D4 0043B014  38 A1 00 08 */	addi r5, r1, 8
/* 8043E0D8 0043B018  38 00 00 62 */	li r0, 0x62
/* 8043E0DC 0043B01C  7C A5 EA 14 */	add r5, r5, r29
/* 8043E0E0 0043B020  38 80 00 61 */	li r4, 0x61
/* 8043E0E4 0043B024  98 05 00 01 */	stb r0, 1(r5)
/* 8043E0E8 0043B028  38 60 00 73 */	li r3, 0x73
/* 8043E0EC 0043B02C  38 00 00 00 */	li r0, 0
/* 8043E0F0 0043B030  98 85 00 02 */	stb r4, 2(r5)
/* 8043E0F4 0043B034  98 65 00 03 */	stb r3, 3(r5)
/* 8043E0F8 0043B038  98 05 00 04 */	stb r0, 4(r5)
/* 8043E0FC 0043B03C  48 00 00 1C */	b lbl_8043E118
lbl_8043E100:
/* 8043E100 0043B040  3B FF 00 01 */	addi r31, r31, 1
/* 8043E104 0043B044  3B BD 00 01 */	addi r29, r29, 1
lbl_8043E108:
/* 8043E108 0043B048  38 61 00 08 */	addi r3, r1, 8
/* 8043E10C 0043B04C  4B C8 C8 05 */	bl strlen
/* 8043E110 0043B050  7C 1D 18 40 */	cmplw r29, r3
/* 8043E114 0043B054  41 80 FF B4 */	blt lbl_8043E0C8
lbl_8043E118:
/* 8043E118 0043B058  7F 83 E3 78 */	mr r3, r28
/* 8043E11C 0043B05C  38 81 00 08 */	addi r4, r1, 8
/* 8043E120 0043B060  81 9C 00 00 */	lwz r12, 0(r28)
/* 8043E124 0043B064  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8043E128 0043B068  7D 89 03 A6 */	mtctr r12
/* 8043E12C 0043B06C  4E 80 04 21 */	bctrl 
/* 8043E130 0043B070  28 03 00 00 */	cmplwi r3, 0
/* 8043E134 0043B074  41 82 00 08 */	beq lbl_8043E13C
/* 8043E138 0043B078  90 7E 00 24 */	stw r3, 0x24(r30)
lbl_8043E13C:
/* 8043E13C 0043B07C  83 DE 00 04 */	lwz r30, 4(r30)
lbl_8043E140:
/* 8043E140 0043B080  28 1E 00 00 */	cmplwi r30, 0
/* 8043E144 0043B084  40 82 FF 40 */	bne lbl_8043E084
/* 8043E148 0043B088  BB 61 02 0C */	lmw r27, 0x20c(r1)
/* 8043E14C 0043B08C  80 01 02 24 */	lwz r0, 0x224(r1)
/* 8043E150 0043B090  7C 08 03 A6 */	mtlr r0
/* 8043E154 0043B094  38 21 02 20 */	addi r1, r1, 0x220
/* 8043E158 0043B098  4E 80 00 20 */	blr 

.global registerSoundViewer__Q28SysShape7AnimMgrFPQ26PSGame16SoundCreatureMgr
registerSoundViewer__Q28SysShape7AnimMgrFPQ26PSGame16SoundCreatureMgr:
/* 8043E15C 0043B09C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043E160 0043B0A0  7C 08 02 A6 */	mflr r0
/* 8043E164 0043B0A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043E168 0043B0A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043E16C 0043B0AC  93 C1 00 08 */	stw r30, 8(r1)
/* 8043E170 0043B0B0  7C 9E 23 78 */	mr r30, r4
/* 8043E174 0043B0B4  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 8043E178 0043B0B8  48 00 00 18 */	b lbl_8043E190
lbl_8043E17C:
/* 8043E17C 0043B0BC  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8043E180 0043B0C0  7F C3 F3 78 */	mr r3, r30
/* 8043E184 0043B0C4  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 8043E188 0043B0C8  4B F0 0D 11 */	bl registerAnime__Q26PSGame16SoundCreatureMgrFP10J3DAnmBasePCc
/* 8043E18C 0043B0CC  83 FF 00 04 */	lwz r31, 4(r31)
lbl_8043E190:
/* 8043E190 0043B0D0  28 1F 00 00 */	cmplwi r31, 0
/* 8043E194 0043B0D4  40 82 FF E8 */	bne lbl_8043E17C
/* 8043E198 0043B0D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043E19C 0043B0DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8043E1A0 0043B0E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8043E1A4 0043B0E4  7C 08 03 A6 */	mtlr r0
/* 8043E1A8 0043B0E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8043E1AC 0043B0EC  4E 80 00 20 */	blr 

__sinit_sysShapeAnimation_cpp: # static initializer
/* 8043E1B0 0043B0F0  3C 80 80 51 */	lis r4, __float_nan@ha
/* 8043E1B4 0043B0F4  38 00 FF FF */	li r0, -1
/* 8043E1B8 0043B0F8  C0 04 48 B0 */	lfs f0, __float_nan@l(r4)
/* 8043E1BC 0043B0FC  3C 60 80 4F */	lis r3, govNAN___Q24Game5P2JST@ha
/* 8043E1C0 0043B100  90 0D 9B F0 */	stw r0, gu32NAN___Q24Game5P2JST@sda21(r13)
/* 8043E1C4 0043B104  D4 03 CB F0 */	stfsu f0, govNAN___Q24Game5P2JST@l(r3)
/* 8043E1C8 0043B108  D0 0D 9B F4 */	stfs f0, gfNAN___Q24Game5P2JST@sda21(r13)
/* 8043E1CC 0043B10C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8043E1D0 0043B110  D0 03 00 08 */	stfs f0, 8(r3)
/* 8043E1D4 0043B114  4E 80 00 20 */	blr 
