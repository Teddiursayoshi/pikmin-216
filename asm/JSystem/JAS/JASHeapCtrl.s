.include "macros.inc"
.section .ctors, "wa"  # 0x80472F00 - 0x804732C0
lbl_constructor:
.4byte __sinit_JASHeapCtrl_cpp

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.global JASDram
JASDram:
	.skip 0x4
.global sAramBase__9JASKernel
sAramBase__9JASKernel:
	.skip 0x4
.global sSystemHeap__9JASKernel
sSystemHeap__9JASKernel:
	.skip 0x4
.global sCommandHeap__9JASKernel
sCommandHeap__9JASKernel:
	.skip 0x4

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__7JASHeapFP11JASDisposer
__ct__7JASHeapFP11JASDisposer:
/* 800A6A9C 000A39DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A6AA0 000A39E0  7C 08 02 A6 */	mflr r0
/* 800A6AA4 000A39E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A6AA8 000A39E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A6AAC 000A39EC  7C 9F 23 78 */	mr r31, r4
/* 800A6AB0 000A39F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A6AB4 000A39F4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800A6AB8 000A39F8  7C 7D 1B 78 */	mr r29, r3
/* 800A6ABC 000A39FC  7F A0 EB 78 */	mr r0, r29
/* 800A6AC0 000A3A00  7C 1E 03 78 */	mr r30, r0
/* 800A6AC4 000A3A04  4B F7 FE 0D */	bl initiate__10JSUPtrListFv
/* 800A6AC8 000A3A08  7F A4 EB 78 */	mr r4, r29
/* 800A6ACC 000A3A0C  38 7E 00 0C */	addi r3, r30, 0xc
/* 800A6AD0 000A3A10  4B F7 FC E9 */	bl __ct__10JSUPtrLinkFPv
/* 800A6AD4 000A3A14  93 FD 00 34 */	stw r31, 0x34(r29)
/* 800A6AD8 000A3A18  38 00 00 00 */	li r0, 0
/* 800A6ADC 000A3A1C  38 7D 00 1C */	addi r3, r29, 0x1c
/* 800A6AE0 000A3A20  90 1D 00 38 */	stw r0, 0x38(r29)
/* 800A6AE4 000A3A24  90 1D 00 3C */	stw r0, 0x3c(r29)
/* 800A6AE8 000A3A28  90 1D 00 40 */	stw r0, 0x40(r29)
/* 800A6AEC 000A3A2C  48 04 90 45 */	bl OSInitMutex
/* 800A6AF0 000A3A30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A6AF4 000A3A34  7F A3 EB 78 */	mr r3, r29
/* 800A6AF8 000A3A38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A6AFC 000A3A3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A6B00 000A3A40  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800A6B04 000A3A44  7C 08 03 A6 */	mtlr r0
/* 800A6B08 000A3A48  38 21 00 20 */	addi r1, r1, 0x20
/* 800A6B0C 000A3A4C  4E 80 00 20 */	blr 

.global alloc__7JASHeapFP7JASHeapUl
alloc__7JASHeapFP7JASHeapUl:
/* 800A6B10 000A3A50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800A6B14 000A3A54  7C 08 02 A6 */	mflr r0
/* 800A6B18 000A3A58  90 01 00 34 */	stw r0, 0x34(r1)
/* 800A6B1C 000A3A5C  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 800A6B20 000A3A60  7C 7C 1B 78 */	mr r28, r3
/* 800A6B24 000A3A64  38 7C 00 1C */	addi r3, r28, 0x1c
/* 800A6B28 000A3A68  7C 9D 23 78 */	mr r29, r4
/* 800A6B2C 000A3A6C  90 61 00 08 */	stw r3, 8(r1)
/* 800A6B30 000A3A70  7C BE 2B 78 */	mr r30, r5
/* 800A6B34 000A3A74  48 04 90 35 */	bl OSLockMutex
/* 800A6B38 000A3A78  80 1C 00 38 */	lwz r0, 0x38(r28)
/* 800A6B3C 000A3A7C  28 00 00 00 */	cmplwi r0, 0
/* 800A6B40 000A3A80  41 82 00 14 */	beq lbl_800A6B54
/* 800A6B44 000A3A84  80 61 00 08 */	lwz r3, 8(r1)
/* 800A6B48 000A3A88  48 04 90 FD */	bl OSUnlockMutex
/* 800A6B4C 000A3A8C  38 60 00 00 */	li r3, 0
/* 800A6B50 000A3A90  48 00 01 7C */	b lbl_800A6CCC
lbl_800A6B54:
/* 800A6B54 000A3A94  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 800A6B58 000A3A98  28 00 00 00 */	cmplwi r0, 0
/* 800A6B5C 000A3A9C  40 82 00 14 */	bne lbl_800A6B70
/* 800A6B60 000A3AA0  80 61 00 08 */	lwz r3, 8(r1)
/* 800A6B64 000A3AA4  48 04 90 E1 */	bl OSUnlockMutex
/* 800A6B68 000A3AA8  38 60 00 00 */	li r3, 0
/* 800A6B6C 000A3AAC  48 00 01 60 */	b lbl_800A6CCC
lbl_800A6B70:
/* 800A6B70 000A3AB0  38 1E 00 1F */	addi r0, r30, 0x1f
/* 800A6B74 000A3AB4  7F A3 EB 78 */	mr r3, r29
/* 800A6B78 000A3AB8  54 1E 00 34 */	rlwinm r30, r0, 0, 0, 0x1a
/* 800A6B7C 000A3ABC  48 00 05 A1 */	bl getCurOffset__7JASHeapFv
/* 800A6B80 000A3AC0  7C 7B 1B 78 */	mr r27, r3
/* 800A6B84 000A3AC4  7F A3 EB 78 */	mr r3, r29
/* 800A6B88 000A3AC8  48 00 04 D1 */	bl getTailOffset__7JASHeapFv
/* 800A6B8C 000A3ACC  7C 1B F2 14 */	add r0, r27, r30
/* 800A6B90 000A3AD0  7C 00 18 40 */	cmplw r0, r3
/* 800A6B94 000A3AD4  41 81 00 3C */	bgt lbl_800A6BD0
/* 800A6B98 000A3AD8  7F A3 EB 78 */	mr r3, r29
/* 800A6B9C 000A3ADC  48 00 04 31 */	bl getTailHeap__7JASHeapFv
/* 800A6BA0 000A3AE0  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 800A6BA4 000A3AE4  7C 65 1B 78 */	mr r5, r3
/* 800A6BA8 000A3AE8  7F A3 EB 78 */	mr r3, r29
/* 800A6BAC 000A3AEC  7F 84 E3 78 */	mr r4, r28
/* 800A6BB0 000A3AF0  7F C7 F3 78 */	mr r7, r30
/* 800A6BB4 000A3AF4  7C C0 DA 14 */	add r6, r0, r27
/* 800A6BB8 000A3AF8  39 00 00 00 */	li r8, 0
/* 800A6BBC 000A3AFC  48 00 03 31 */	bl insertChild__7JASHeapFP7JASHeapP7JASHeapPvUlb
/* 800A6BC0 000A3B00  80 61 00 08 */	lwz r3, 8(r1)
/* 800A6BC4 000A3B04  48 04 90 81 */	bl OSUnlockMutex
/* 800A6BC8 000A3B08  38 60 00 01 */	li r3, 1
/* 800A6BCC 000A3B0C  48 00 01 00 */	b lbl_800A6CCC
lbl_800A6BD0:
/* 800A6BD0 000A3B10  80 FD 00 00 */	lwz r7, 0(r29)
/* 800A6BD4 000A3B14  39 40 FF FF */	li r10, -1
/* 800A6BD8 000A3B18  81 1D 00 38 */	lwz r8, 0x38(r29)
/* 800A6BDC 000A3B1C  39 60 00 00 */	li r11, 0
/* 800A6BE0 000A3B20  28 07 00 00 */	cmplwi r7, 0
/* 800A6BE4 000A3B24  38 A0 00 00 */	li r5, 0
/* 800A6BE8 000A3B28  7D 04 43 78 */	mr r4, r8
/* 800A6BEC 000A3B2C  41 82 00 08 */	beq lbl_800A6BF4
/* 800A6BF0 000A3B30  38 E7 FF F4 */	addi r7, r7, -12
lbl_800A6BF4:
/* 800A6BF4 000A3B34  7C C8 1A 14 */	add r6, r8, r3
/* 800A6BF8 000A3B38  48 00 00 54 */	b lbl_800A6C4C
lbl_800A6BFC:
/* 800A6BFC 000A3B3C  7C 04 30 40 */	cmplw r4, r6
/* 800A6C00 000A3B40  40 80 00 54 */	bge lbl_800A6C54
/* 800A6C04 000A3B44  81 27 00 0C */	lwz r9, 0xc(r7)
/* 800A6C08 000A3B48  80 09 00 38 */	lwz r0, 0x38(r9)
/* 800A6C0C 000A3B4C  7C 04 00 50 */	subf r0, r4, r0
/* 800A6C10 000A3B50  7C 00 F0 40 */	cmplw r0, r30
/* 800A6C14 000A3B54  41 80 00 1C */	blt lbl_800A6C30
/* 800A6C18 000A3B58  7C 00 50 40 */	cmplw r0, r10
/* 800A6C1C 000A3B5C  40 80 00 14 */	bge lbl_800A6C30
/* 800A6C20 000A3B60  7D 25 4B 78 */	mr r5, r9
/* 800A6C24 000A3B64  7C 9F 23 78 */	mr r31, r4
/* 800A6C28 000A3B68  7C 0A 03 78 */	mr r10, r0
/* 800A6C2C 000A3B6C  39 60 00 01 */	li r11, 1
lbl_800A6C30:
/* 800A6C30 000A3B70  80 E7 00 18 */	lwz r7, 0x18(r7)
/* 800A6C34 000A3B74  80 89 00 38 */	lwz r4, 0x38(r9)
/* 800A6C38 000A3B78  80 09 00 3C */	lwz r0, 0x3c(r9)
/* 800A6C3C 000A3B7C  28 07 00 00 */	cmplwi r7, 0
/* 800A6C40 000A3B80  7C 84 02 14 */	add r4, r4, r0
/* 800A6C44 000A3B84  41 82 00 08 */	beq lbl_800A6C4C
/* 800A6C48 000A3B88  38 E7 FF F4 */	addi r7, r7, -12
lbl_800A6C4C:
/* 800A6C4C 000A3B8C  28 07 00 00 */	cmplwi r7, 0
/* 800A6C50 000A3B90  40 82 FF AC */	bne lbl_800A6BFC
lbl_800A6C54:
/* 800A6C54 000A3B94  7C 04 40 40 */	cmplw r4, r8
/* 800A6C58 000A3B98  41 82 00 38 */	beq lbl_800A6C90
/* 800A6C5C 000A3B9C  7C 08 1A 14 */	add r0, r8, r3
/* 800A6C60 000A3BA0  7C 04 00 40 */	cmplw r4, r0
/* 800A6C64 000A3BA4  40 80 00 2C */	bge lbl_800A6C90
/* 800A6C68 000A3BA8  80 1D 00 3C */	lwz r0, 0x3c(r29)
/* 800A6C6C 000A3BAC  7C 08 02 14 */	add r0, r8, r0
/* 800A6C70 000A3BB0  7C 04 00 50 */	subf r0, r4, r0
/* 800A6C74 000A3BB4  7C 00 F0 40 */	cmplw r0, r30
/* 800A6C78 000A3BB8  41 80 00 18 */	blt lbl_800A6C90
/* 800A6C7C 000A3BBC  7C 00 50 40 */	cmplw r0, r10
/* 800A6C80 000A3BC0  40 80 00 10 */	bge lbl_800A6C90
/* 800A6C84 000A3BC4  7C 9F 23 78 */	mr r31, r4
/* 800A6C88 000A3BC8  38 A0 00 00 */	li r5, 0
/* 800A6C8C 000A3BCC  39 60 00 01 */	li r11, 1
lbl_800A6C90:
/* 800A6C90 000A3BD0  55 60 06 3F */	clrlwi. r0, r11, 0x18
/* 800A6C94 000A3BD4  40 82 00 14 */	bne lbl_800A6CA8
/* 800A6C98 000A3BD8  80 61 00 08 */	lwz r3, 8(r1)
/* 800A6C9C 000A3BDC  48 04 8F A9 */	bl OSUnlockMutex
/* 800A6CA0 000A3BE0  38 60 00 00 */	li r3, 0
/* 800A6CA4 000A3BE4  48 00 00 28 */	b lbl_800A6CCC
lbl_800A6CA8:
/* 800A6CA8 000A3BE8  7F A3 EB 78 */	mr r3, r29
/* 800A6CAC 000A3BEC  7F 84 E3 78 */	mr r4, r28
/* 800A6CB0 000A3BF0  7F E6 FB 78 */	mr r6, r31
/* 800A6CB4 000A3BF4  7F C7 F3 78 */	mr r7, r30
/* 800A6CB8 000A3BF8  39 00 00 00 */	li r8, 0
/* 800A6CBC 000A3BFC  48 00 02 31 */	bl insertChild__7JASHeapFP7JASHeapP7JASHeapPvUlb
/* 800A6CC0 000A3C00  80 61 00 08 */	lwz r3, 8(r1)
/* 800A6CC4 000A3C04  48 04 8F 81 */	bl OSUnlockMutex
/* 800A6CC8 000A3C08  38 60 00 01 */	li r3, 1
lbl_800A6CCC:
/* 800A6CCC 000A3C0C  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 800A6CD0 000A3C10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A6CD4 000A3C14  7C 08 03 A6 */	mtlr r0
/* 800A6CD8 000A3C18  38 21 00 30 */	addi r1, r1, 0x30
/* 800A6CDC 000A3C1C  4E 80 00 20 */	blr 

.global allocTail__7JASHeapFP7JASHeapUl
allocTail__7JASHeapFP7JASHeapUl:
/* 800A6CE0 000A3C20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800A6CE4 000A3C24  7C 08 02 A6 */	mflr r0
/* 800A6CE8 000A3C28  90 01 00 34 */	stw r0, 0x34(r1)
/* 800A6CEC 000A3C2C  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 800A6CF0 000A3C30  7C 7B 1B 78 */	mr r27, r3
/* 800A6CF4 000A3C34  38 7B 00 1C */	addi r3, r27, 0x1c
/* 800A6CF8 000A3C38  7C 9C 23 78 */	mr r28, r4
/* 800A6CFC 000A3C3C  90 61 00 08 */	stw r3, 8(r1)
/* 800A6D00 000A3C40  7C BD 2B 78 */	mr r29, r5
/* 800A6D04 000A3C44  48 04 8E 65 */	bl OSLockMutex
/* 800A6D08 000A3C48  80 1B 00 38 */	lwz r0, 0x38(r27)
/* 800A6D0C 000A3C4C  28 00 00 00 */	cmplwi r0, 0
/* 800A6D10 000A3C50  41 82 00 14 */	beq lbl_800A6D24
/* 800A6D14 000A3C54  80 61 00 08 */	lwz r3, 8(r1)
/* 800A6D18 000A3C58  48 04 8F 2D */	bl OSUnlockMutex
/* 800A6D1C 000A3C5C  38 60 00 00 */	li r3, 0
/* 800A6D20 000A3C60  48 00 00 94 */	b lbl_800A6DB4
lbl_800A6D24:
/* 800A6D24 000A3C64  80 1C 00 38 */	lwz r0, 0x38(r28)
/* 800A6D28 000A3C68  28 00 00 00 */	cmplwi r0, 0
/* 800A6D2C 000A3C6C  40 82 00 14 */	bne lbl_800A6D40
/* 800A6D30 000A3C70  80 61 00 08 */	lwz r3, 8(r1)
/* 800A6D34 000A3C74  48 04 8F 11 */	bl OSUnlockMutex
/* 800A6D38 000A3C78  38 60 00 00 */	li r3, 0
/* 800A6D3C 000A3C7C  48 00 00 78 */	b lbl_800A6DB4
lbl_800A6D40:
/* 800A6D40 000A3C80  38 1D 00 1F */	addi r0, r29, 0x1f
/* 800A6D44 000A3C84  7F 83 E3 78 */	mr r3, r28
/* 800A6D48 000A3C88  54 1D 00 34 */	rlwinm r29, r0, 0, 0, 0x1a
/* 800A6D4C 000A3C8C  48 00 03 D1 */	bl getCurOffset__7JASHeapFv
/* 800A6D50 000A3C90  7C 7E 1B 78 */	mr r30, r3
/* 800A6D54 000A3C94  7F 83 E3 78 */	mr r3, r28
/* 800A6D58 000A3C98  48 00 03 01 */	bl getTailOffset__7JASHeapFv
/* 800A6D5C 000A3C9C  7C 7F 1B 78 */	mr r31, r3
/* 800A6D60 000A3CA0  7C 1E EA 14 */	add r0, r30, r29
/* 800A6D64 000A3CA4  7C 00 F8 40 */	cmplw r0, r31
/* 800A6D68 000A3CA8  40 81 00 14 */	ble lbl_800A6D7C
/* 800A6D6C 000A3CAC  80 61 00 08 */	lwz r3, 8(r1)
/* 800A6D70 000A3CB0  48 04 8E D5 */	bl OSUnlockMutex
/* 800A6D74 000A3CB4  38 60 00 00 */	li r3, 0
/* 800A6D78 000A3CB8  48 00 00 3C */	b lbl_800A6DB4
lbl_800A6D7C:
/* 800A6D7C 000A3CBC  7F 83 E3 78 */	mr r3, r28
/* 800A6D80 000A3CC0  48 00 02 4D */	bl getTailHeap__7JASHeapFv
/* 800A6D84 000A3CC4  80 1C 00 38 */	lwz r0, 0x38(r28)
/* 800A6D88 000A3CC8  7C 65 1B 78 */	mr r5, r3
/* 800A6D8C 000A3CCC  7F 83 E3 78 */	mr r3, r28
/* 800A6D90 000A3CD0  7F 64 DB 78 */	mr r4, r27
/* 800A6D94 000A3CD4  7C 00 FA 14 */	add r0, r0, r31
/* 800A6D98 000A3CD8  7F A7 EB 78 */	mr r7, r29
/* 800A6D9C 000A3CDC  39 00 00 01 */	li r8, 1
/* 800A6DA0 000A3CE0  7C DD 00 50 */	subf r6, r29, r0
/* 800A6DA4 000A3CE4  48 00 01 49 */	bl insertChild__7JASHeapFP7JASHeapP7JASHeapPvUlb
/* 800A6DA8 000A3CE8  80 61 00 08 */	lwz r3, 8(r1)
/* 800A6DAC 000A3CEC  48 04 8E 99 */	bl OSUnlockMutex
/* 800A6DB0 000A3CF0  38 60 00 01 */	li r3, 1
lbl_800A6DB4:
/* 800A6DB4 000A3CF4  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 800A6DB8 000A3CF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A6DBC 000A3CFC  7C 08 03 A6 */	mtlr r0
/* 800A6DC0 000A3D00  38 21 00 30 */	addi r1, r1, 0x30
/* 800A6DC4 000A3D04  4E 80 00 20 */	blr 

.global free__7JASHeapFv
free__7JASHeapFv:
/* 800A6DC8 000A3D08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A6DCC 000A3D0C  7C 08 02 A6 */	mflr r0
/* 800A6DD0 000A3D10  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A6DD4 000A3D14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A6DD8 000A3D18  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A6DDC 000A3D1C  7C 7E 1B 78 */	mr r30, r3
/* 800A6DE0 000A3D20  38 7E 00 1C */	addi r3, r30, 0x1c
/* 800A6DE4 000A3D24  90 61 00 08 */	stw r3, 8(r1)
/* 800A6DE8 000A3D28  48 04 8D 81 */	bl OSLockMutex
/* 800A6DEC 000A3D2C  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 800A6DF0 000A3D30  28 00 00 00 */	cmplwi r0, 0
/* 800A6DF4 000A3D34  40 82 00 14 */	bne lbl_800A6E08
/* 800A6DF8 000A3D38  80 61 00 08 */	lwz r3, 8(r1)
/* 800A6DFC 000A3D3C  48 04 8E 49 */	bl OSUnlockMutex
/* 800A6E00 000A3D40  38 60 00 00 */	li r3, 0
/* 800A6E04 000A3D44  48 00 00 D0 */	b lbl_800A6ED4
lbl_800A6E08:
/* 800A6E08 000A3D48  80 7E 00 00 */	lwz r3, 0(r30)
/* 800A6E0C 000A3D4C  28 03 00 00 */	cmplwi r3, 0
/* 800A6E10 000A3D50  41 82 00 28 */	beq lbl_800A6E38
/* 800A6E14 000A3D54  38 63 FF F4 */	addi r3, r3, -12
/* 800A6E18 000A3D58  48 00 00 20 */	b lbl_800A6E38
lbl_800A6E1C:
/* 800A6E1C 000A3D5C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 800A6E20 000A3D60  28 1F 00 00 */	cmplwi r31, 0
/* 800A6E24 000A3D64  41 82 00 08 */	beq lbl_800A6E2C
/* 800A6E28 000A3D68  3B FF FF F4 */	addi r31, r31, -12
lbl_800A6E2C:
/* 800A6E2C 000A3D6C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A6E30 000A3D70  4B FF FF 99 */	bl free__7JASHeapFv
/* 800A6E34 000A3D74  7F E3 FB 78 */	mr r3, r31
lbl_800A6E38:
/* 800A6E38 000A3D78  28 03 00 00 */	cmplwi r3, 0
/* 800A6E3C 000A3D7C  40 82 FF E0 */	bne lbl_800A6E1C
/* 800A6E40 000A3D80  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 800A6E44 000A3D84  28 03 00 00 */	cmplwi r3, 0
/* 800A6E48 000A3D88  41 82 00 54 */	beq lbl_800A6E9C
/* 800A6E4C 000A3D8C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 800A6E50 000A3D90  80 04 00 40 */	lwz r0, 0x40(r4)
/* 800A6E54 000A3D94  7C 00 F0 40 */	cmplw r0, r30
/* 800A6E58 000A3D98  40 82 00 30 */	bne lbl_800A6E88
/* 800A6E5C 000A3D9C  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 800A6E60 000A3DA0  28 05 00 00 */	cmplwi r5, 0
/* 800A6E64 000A3DA4  41 82 00 08 */	beq lbl_800A6E6C
/* 800A6E68 000A3DA8  38 A5 FF F4 */	addi r5, r5, -12
lbl_800A6E6C:
/* 800A6E6C 000A3DAC  28 05 00 00 */	cmplwi r5, 0
/* 800A6E70 000A3DB0  41 82 00 10 */	beq lbl_800A6E80
/* 800A6E74 000A3DB4  80 05 00 0C */	lwz r0, 0xc(r5)
/* 800A6E78 000A3DB8  90 04 00 40 */	stw r0, 0x40(r4)
/* 800A6E7C 000A3DBC  48 00 00 0C */	b lbl_800A6E88
lbl_800A6E80:
/* 800A6E80 000A3DC0  38 00 00 00 */	li r0, 0
/* 800A6E84 000A3DC4  90 04 00 40 */	stw r0, 0x40(r4)
lbl_800A6E88:
/* 800A6E88 000A3DC8  28 1E 00 00 */	cmplwi r30, 0
/* 800A6E8C 000A3DCC  7F C4 F3 78 */	mr r4, r30
/* 800A6E90 000A3DD0  41 82 00 08 */	beq lbl_800A6E98
/* 800A6E94 000A3DD4  38 9E 00 0C */	addi r4, r30, 0xc
lbl_800A6E98:
/* 800A6E98 000A3DD8  4B F7 FD 8D */	bl remove__10JSUPtrListFP10JSUPtrLink
lbl_800A6E9C:
/* 800A6E9C 000A3DDC  38 00 00 00 */	li r0, 0
/* 800A6EA0 000A3DE0  90 1E 00 38 */	stw r0, 0x38(r30)
/* 800A6EA4 000A3DE4  90 1E 00 40 */	stw r0, 0x40(r30)
/* 800A6EA8 000A3DE8  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 800A6EAC 000A3DEC  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 800A6EB0 000A3DF0  28 03 00 00 */	cmplwi r3, 0
/* 800A6EB4 000A3DF4  41 82 00 14 */	beq lbl_800A6EC8
/* 800A6EB8 000A3DF8  81 83 00 00 */	lwz r12, 0(r3)
/* 800A6EBC 000A3DFC  81 8C 00 08 */	lwz r12, 8(r12)
/* 800A6EC0 000A3E00  7D 89 03 A6 */	mtctr r12
/* 800A6EC4 000A3E04  4E 80 04 21 */	bctrl 
lbl_800A6EC8:
/* 800A6EC8 000A3E08  80 61 00 08 */	lwz r3, 8(r1)
/* 800A6ECC 000A3E0C  48 04 8D 79 */	bl OSUnlockMutex
/* 800A6ED0 000A3E10  38 60 00 01 */	li r3, 1
lbl_800A6ED4:
/* 800A6ED4 000A3E14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A6ED8 000A3E18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A6EDC 000A3E1C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A6EE0 000A3E20  7C 08 03 A6 */	mtlr r0
/* 800A6EE4 000A3E24  38 21 00 20 */	addi r1, r1, 0x20
/* 800A6EE8 000A3E28  4E 80 00 20 */	blr 

.global insertChild__7JASHeapFP7JASHeapP7JASHeapPvUlb
insertChild__7JASHeapFP7JASHeapP7JASHeapPvUlb:
/* 800A6EEC 000A3E2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800A6EF0 000A3E30  7C 08 02 A6 */	mflr r0
/* 800A6EF4 000A3E34  90 01 00 34 */	stw r0, 0x34(r1)
/* 800A6EF8 000A3E38  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 800A6EFC 000A3E3C  7C 7F 1B 78 */	mr r31, r3
/* 800A6F00 000A3E40  38 7F 00 1C */	addi r3, r31, 0x1c
/* 800A6F04 000A3E44  7C 9A 23 78 */	mr r26, r4
/* 800A6F08 000A3E48  90 61 00 08 */	stw r3, 8(r1)
/* 800A6F0C 000A3E4C  7C BB 2B 78 */	mr r27, r5
/* 800A6F10 000A3E50  7C DC 33 78 */	mr r28, r6
/* 800A6F14 000A3E54  7C FD 3B 78 */	mr r29, r7
/* 800A6F18 000A3E58  7D 1E 43 78 */	mr r30, r8
/* 800A6F1C 000A3E5C  48 04 8C 4D */	bl OSLockMutex
/* 800A6F20 000A3E60  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800A6F24 000A3E64  40 82 00 54 */	bne lbl_800A6F78
/* 800A6F28 000A3E68  28 1B 00 00 */	cmplwi r27, 0
/* 800A6F2C 000A3E6C  40 82 00 18 */	bne lbl_800A6F44
/* 800A6F30 000A3E70  80 9F 00 04 */	lwz r4, 4(r31)
/* 800A6F34 000A3E74  28 04 00 00 */	cmplwi r4, 0
/* 800A6F38 000A3E78  41 82 00 1C */	beq lbl_800A6F54
/* 800A6F3C 000A3E7C  38 84 FF F4 */	addi r4, r4, -12
/* 800A6F40 000A3E80  48 00 00 14 */	b lbl_800A6F54
lbl_800A6F44:
/* 800A6F44 000A3E84  80 9B 00 14 */	lwz r4, 0x14(r27)
/* 800A6F48 000A3E88  28 04 00 00 */	cmplwi r4, 0
/* 800A6F4C 000A3E8C  41 82 00 08 */	beq lbl_800A6F54
/* 800A6F50 000A3E90  38 84 FF F4 */	addi r4, r4, -12
lbl_800A6F54:
/* 800A6F54 000A3E94  28 04 00 00 */	cmplwi r4, 0
/* 800A6F58 000A3E98  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 800A6F5C 000A3E9C  41 82 00 0C */	beq lbl_800A6F68
/* 800A6F60 000A3EA0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800A6F64 000A3EA4  48 00 00 08 */	b lbl_800A6F6C
lbl_800A6F68:
/* 800A6F68 000A3EA8  38 00 00 00 */	li r0, 0
lbl_800A6F6C:
/* 800A6F6C 000A3EAC  7C 03 00 40 */	cmplw r3, r0
/* 800A6F70 000A3EB0  40 82 00 08 */	bne lbl_800A6F78
/* 800A6F74 000A3EB4  93 5F 00 40 */	stw r26, 0x40(r31)
lbl_800A6F78:
/* 800A6F78 000A3EB8  93 9A 00 38 */	stw r28, 0x38(r26)
/* 800A6F7C 000A3EBC  28 1A 00 00 */	cmplwi r26, 0
/* 800A6F80 000A3EC0  38 00 00 00 */	li r0, 0
/* 800A6F84 000A3EC4  7F 45 D3 78 */	mr r5, r26
/* 800A6F88 000A3EC8  93 BA 00 3C */	stw r29, 0x3c(r26)
/* 800A6F8C 000A3ECC  90 1A 00 40 */	stw r0, 0x40(r26)
/* 800A6F90 000A3ED0  41 82 00 08 */	beq lbl_800A6F98
/* 800A6F94 000A3ED4  38 BA 00 0C */	addi r5, r26, 0xc
lbl_800A6F98:
/* 800A6F98 000A3ED8  28 1B 00 00 */	cmplwi r27, 0
/* 800A6F9C 000A3EDC  7F 64 DB 78 */	mr r4, r27
/* 800A6FA0 000A3EE0  41 82 00 08 */	beq lbl_800A6FA8
/* 800A6FA4 000A3EE4  38 9B 00 0C */	addi r4, r27, 0xc
lbl_800A6FA8:
/* 800A6FA8 000A3EE8  7F E3 FB 78 */	mr r3, r31
/* 800A6FAC 000A3EEC  4B F7 FA A9 */	bl insert__10JSUPtrListFP10JSUPtrLinkP10JSUPtrLink
/* 800A6FB0 000A3EF0  80 61 00 08 */	lwz r3, 8(r1)
/* 800A6FB4 000A3EF4  48 04 8C 91 */	bl OSUnlockMutex
/* 800A6FB8 000A3EF8  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 800A6FBC 000A3EFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A6FC0 000A3F00  7C 08 03 A6 */	mtlr r0
/* 800A6FC4 000A3F04  38 21 00 30 */	addi r1, r1, 0x30
/* 800A6FC8 000A3F08  4E 80 00 20 */	blr 

.global getTailHeap__7JASHeapFv
getTailHeap__7JASHeapFv:
/* 800A6FCC 000A3F0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A6FD0 000A3F10  7C 08 02 A6 */	mflr r0
/* 800A6FD4 000A3F14  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A6FD8 000A3F18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A6FDC 000A3F1C  7C 7F 1B 78 */	mr r31, r3
/* 800A6FE0 000A3F20  38 7F 00 1C */	addi r3, r31, 0x1c
/* 800A6FE4 000A3F24  90 61 00 08 */	stw r3, 8(r1)
/* 800A6FE8 000A3F28  48 04 8B 81 */	bl OSLockMutex
/* 800A6FEC 000A3F2C  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 800A6FF0 000A3F30  28 03 00 00 */	cmplwi r3, 0
/* 800A6FF4 000A3F34  40 82 00 18 */	bne lbl_800A700C
/* 800A6FF8 000A3F38  80 7F 00 00 */	lwz r3, 0(r31)
/* 800A6FFC 000A3F3C  28 03 00 00 */	cmplwi r3, 0
/* 800A7000 000A3F40  41 82 00 1C */	beq lbl_800A701C
/* 800A7004 000A3F44  38 63 FF F4 */	addi r3, r3, -12
/* 800A7008 000A3F48  48 00 00 14 */	b lbl_800A701C
lbl_800A700C:
/* 800A700C 000A3F4C  80 63 00 18 */	lwz r3, 0x18(r3)
/* 800A7010 000A3F50  28 03 00 00 */	cmplwi r3, 0
/* 800A7014 000A3F54  41 82 00 08 */	beq lbl_800A701C
/* 800A7018 000A3F58  38 63 FF F4 */	addi r3, r3, -12
lbl_800A701C:
/* 800A701C 000A3F5C  28 03 00 00 */	cmplwi r3, 0
/* 800A7020 000A3F60  40 82 00 14 */	bne lbl_800A7034
/* 800A7024 000A3F64  80 61 00 08 */	lwz r3, 8(r1)
/* 800A7028 000A3F68  48 04 8C 1D */	bl OSUnlockMutex
/* 800A702C 000A3F6C  38 60 00 00 */	li r3, 0
/* 800A7030 000A3F70  48 00 00 14 */	b lbl_800A7044
lbl_800A7034:
/* 800A7034 000A3F74  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 800A7038 000A3F78  80 61 00 08 */	lwz r3, 8(r1)
/* 800A703C 000A3F7C  48 04 8C 09 */	bl OSUnlockMutex
/* 800A7040 000A3F80  7F E3 FB 78 */	mr r3, r31
lbl_800A7044:
/* 800A7044 000A3F84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A7048 000A3F88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A704C 000A3F8C  7C 08 03 A6 */	mtlr r0
/* 800A7050 000A3F90  38 21 00 20 */	addi r1, r1, 0x20
/* 800A7054 000A3F94  4E 80 00 20 */	blr 

.global getTailOffset__7JASHeapFv
getTailOffset__7JASHeapFv:
/* 800A7058 000A3F98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A705C 000A3F9C  7C 08 02 A6 */	mflr r0
/* 800A7060 000A3FA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A7064 000A3FA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A7068 000A3FA8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A706C 000A3FAC  7C 7E 1B 78 */	mr r30, r3
/* 800A7070 000A3FB0  38 7E 00 1C */	addi r3, r30, 0x1c
/* 800A7074 000A3FB4  90 61 00 0C */	stw r3, 0xc(r1)
/* 800A7078 000A3FB8  48 04 8A F1 */	bl OSLockMutex
/* 800A707C 000A3FBC  38 7E 00 1C */	addi r3, r30, 0x1c
/* 800A7080 000A3FC0  90 61 00 08 */	stw r3, 8(r1)
/* 800A7084 000A3FC4  48 04 8A E5 */	bl OSLockMutex
/* 800A7088 000A3FC8  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 800A708C 000A3FCC  28 03 00 00 */	cmplwi r3, 0
/* 800A7090 000A3FD0  40 82 00 18 */	bne lbl_800A70A8
/* 800A7094 000A3FD4  80 7E 00 00 */	lwz r3, 0(r30)
/* 800A7098 000A3FD8  28 03 00 00 */	cmplwi r3, 0
/* 800A709C 000A3FDC  41 82 00 1C */	beq lbl_800A70B8
/* 800A70A0 000A3FE0  38 63 FF F4 */	addi r3, r3, -12
/* 800A70A4 000A3FE4  48 00 00 14 */	b lbl_800A70B8
lbl_800A70A8:
/* 800A70A8 000A3FE8  80 63 00 18 */	lwz r3, 0x18(r3)
/* 800A70AC 000A3FEC  28 03 00 00 */	cmplwi r3, 0
/* 800A70B0 000A3FF0  41 82 00 08 */	beq lbl_800A70B8
/* 800A70B4 000A3FF4  38 63 FF F4 */	addi r3, r3, -12
lbl_800A70B8:
/* 800A70B8 000A3FF8  28 03 00 00 */	cmplwi r3, 0
/* 800A70BC 000A3FFC  40 82 00 14 */	bne lbl_800A70D0
/* 800A70C0 000A4000  80 61 00 08 */	lwz r3, 8(r1)
/* 800A70C4 000A4004  48 04 8B 81 */	bl OSUnlockMutex
/* 800A70C8 000A4008  3B E0 00 00 */	li r31, 0
/* 800A70CC 000A400C  48 00 00 10 */	b lbl_800A70DC
lbl_800A70D0:
/* 800A70D0 000A4010  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 800A70D4 000A4014  80 61 00 08 */	lwz r3, 8(r1)
/* 800A70D8 000A4018  48 04 8B 6D */	bl OSUnlockMutex
lbl_800A70DC:
/* 800A70DC 000A401C  28 1F 00 00 */	cmplwi r31, 0
/* 800A70E0 000A4020  40 82 00 0C */	bne lbl_800A70EC
/* 800A70E4 000A4024  83 FE 00 3C */	lwz r31, 0x3c(r30)
/* 800A70E8 000A4028  48 00 00 10 */	b lbl_800A70F8
lbl_800A70EC:
/* 800A70EC 000A402C  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 800A70F0 000A4030  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 800A70F4 000A4034  7F E3 00 50 */	subf r31, r3, r0
lbl_800A70F8:
/* 800A70F8 000A4038  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800A70FC 000A403C  48 04 8B 49 */	bl OSUnlockMutex
/* 800A7100 000A4040  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A7104 000A4044  7F E3 FB 78 */	mr r3, r31
/* 800A7108 000A4048  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A710C 000A404C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A7110 000A4050  7C 08 03 A6 */	mtlr r0
/* 800A7114 000A4054  38 21 00 20 */	addi r1, r1, 0x20
/* 800A7118 000A4058  4E 80 00 20 */	blr 

.global getCurOffset__7JASHeapFv
getCurOffset__7JASHeapFv:
/* 800A711C 000A405C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A7120 000A4060  7C 08 02 A6 */	mflr r0
/* 800A7124 000A4064  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A7128 000A4068  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A712C 000A406C  7C 7F 1B 78 */	mr r31, r3
/* 800A7130 000A4070  38 7F 00 1C */	addi r3, r31, 0x1c
/* 800A7134 000A4074  90 61 00 08 */	stw r3, 8(r1)
/* 800A7138 000A4078  48 04 8A 31 */	bl OSLockMutex
/* 800A713C 000A407C  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 800A7140 000A4080  28 04 00 00 */	cmplwi r4, 0
/* 800A7144 000A4084  40 82 00 0C */	bne lbl_800A7150
/* 800A7148 000A4088  3B E0 00 00 */	li r31, 0
/* 800A714C 000A408C  48 00 00 18 */	b lbl_800A7164
lbl_800A7150:
/* 800A7150 000A4090  80 64 00 38 */	lwz r3, 0x38(r4)
/* 800A7154 000A4094  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 800A7158 000A4098  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 800A715C 000A409C  7C 03 02 14 */	add r0, r3, r0
/* 800A7160 000A40A0  7F E4 00 50 */	subf r31, r4, r0
lbl_800A7164:
/* 800A7164 000A40A4  80 61 00 08 */	lwz r3, 8(r1)
/* 800A7168 000A40A8  48 04 8A DD */	bl OSUnlockMutex
/* 800A716C 000A40AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A7170 000A40B0  7F E3 FB 78 */	mr r3, r31
/* 800A7174 000A40B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A7178 000A40B8  7C 08 03 A6 */	mtlr r0
/* 800A717C 000A40BC  38 21 00 20 */	addi r1, r1, 0x20
/* 800A7180 000A40C0  4E 80 00 20 */	blr 

.global __ct__17JASGenericMemPoolFv
__ct__17JASGenericMemPoolFv:
/* 800A7184 000A40C4  38 00 00 00 */	li r0, 0
/* 800A7188 000A40C8  90 03 00 00 */	stw r0, 0(r3)
/* 800A718C 000A40CC  90 03 00 04 */	stw r0, 4(r3)
/* 800A7190 000A40D0  90 03 00 08 */	stw r0, 8(r3)
/* 800A7194 000A40D4  4E 80 00 20 */	blr 

.global newMemPool__17JASGenericMemPoolFUli
newMemPool__17JASGenericMemPoolFUli:
/* 800A7198 000A40D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A719C 000A40DC  7C 08 02 A6 */	mflr r0
/* 800A71A0 000A40E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A71A4 000A40E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A71A8 000A40E8  7C 9F 23 78 */	mr r31, r4
/* 800A71AC 000A40EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A71B0 000A40F0  3B C0 00 00 */	li r30, 0
/* 800A71B4 000A40F4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800A71B8 000A40F8  7C BD 2B 78 */	mr r29, r5
/* 800A71BC 000A40FC  93 81 00 10 */	stw r28, 0x10(r1)
/* 800A71C0 000A4100  7C 7C 1B 78 */	mr r28, r3
/* 800A71C4 000A4104  48 00 00 34 */	b lbl_800A71F8
lbl_800A71C8:
/* 800A71C8 000A4108  80 8D 8A B8 */	lwz r4, JASDram@sda21(r13)
/* 800A71CC 000A410C  7F E3 FB 78 */	mr r3, r31
/* 800A71D0 000A4110  38 A0 00 00 */	li r5, 0
/* 800A71D4 000A4114  4B F7 CE 75 */	bl __nwa__FUlP7JKRHeapi
/* 800A71D8 000A4118  80 1C 00 00 */	lwz r0, 0(r28)
/* 800A71DC 000A411C  90 03 00 00 */	stw r0, 0(r3)
/* 800A71E0 000A4120  90 7C 00 00 */	stw r3, 0(r28)
/* 800A71E4 000A4124  80 1C 00 04 */	lwz r0, 4(r28)
/* 800A71E8 000A4128  28 00 00 00 */	cmplwi r0, 0
/* 800A71EC 000A412C  40 82 00 08 */	bne lbl_800A71F4
/* 800A71F0 000A4130  90 7C 00 04 */	stw r3, 4(r28)
lbl_800A71F4:
/* 800A71F4 000A4134  3B DE 00 01 */	addi r30, r30, 1
lbl_800A71F8:
/* 800A71F8 000A4138  7C 1E E8 00 */	cmpw r30, r29
/* 800A71FC 000A413C  41 80 FF CC */	blt lbl_800A71C8
/* 800A7200 000A4140  80 1C 00 08 */	lwz r0, 8(r28)
/* 800A7204 000A4144  7C 00 EA 14 */	add r0, r0, r29
/* 800A7208 000A4148  90 1C 00 08 */	stw r0, 8(r28)
/* 800A720C 000A414C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A7210 000A4150  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A7214 000A4154  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800A7218 000A4158  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800A721C 000A415C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A7220 000A4160  7C 08 03 A6 */	mtlr r0
/* 800A7224 000A4164  38 21 00 20 */	addi r1, r1, 0x20
/* 800A7228 000A4168  4E 80 00 20 */	blr 

.global alloc__17JASGenericMemPoolFUl
alloc__17JASGenericMemPoolFUl:
/* 800A722C 000A416C  80 A3 00 00 */	lwz r5, 0(r3)
/* 800A7230 000A4170  28 05 00 00 */	cmplwi r5, 0
/* 800A7234 000A4174  40 82 00 0C */	bne lbl_800A7240
/* 800A7238 000A4178  38 60 00 00 */	li r3, 0
/* 800A723C 000A417C  4E 80 00 20 */	blr 
lbl_800A7240:
/* 800A7240 000A4180  80 05 00 00 */	lwz r0, 0(r5)
/* 800A7244 000A4184  90 03 00 00 */	stw r0, 0(r3)
/* 800A7248 000A4188  80 83 00 08 */	lwz r4, 8(r3)
/* 800A724C 000A418C  38 04 FF FF */	addi r0, r4, -1
/* 800A7250 000A4190  90 03 00 08 */	stw r0, 8(r3)
/* 800A7254 000A4194  80 03 00 00 */	lwz r0, 0(r3)
/* 800A7258 000A4198  28 00 00 00 */	cmplwi r0, 0
/* 800A725C 000A419C  40 82 00 0C */	bne lbl_800A7268
/* 800A7260 000A41A0  38 00 00 00 */	li r0, 0
/* 800A7264 000A41A4  90 03 00 04 */	stw r0, 4(r3)
lbl_800A7268:
/* 800A7268 000A41A8  7C A3 2B 78 */	mr r3, r5
/* 800A726C 000A41AC  4E 80 00 20 */	blr 

.global free__17JASGenericMemPoolFPvUl
free__17JASGenericMemPoolFPvUl:
/* 800A7270 000A41B0  38 00 00 00 */	li r0, 0
/* 800A7274 000A41B4  90 04 00 00 */	stw r0, 0(r4)
/* 800A7278 000A41B8  80 A3 00 04 */	lwz r5, 4(r3)
/* 800A727C 000A41BC  28 05 00 00 */	cmplwi r5, 0
/* 800A7280 000A41C0  41 82 00 0C */	beq lbl_800A728C
/* 800A7284 000A41C4  90 85 00 00 */	stw r4, 0(r5)
/* 800A7288 000A41C8  48 00 00 08 */	b lbl_800A7290
lbl_800A728C:
/* 800A728C 000A41CC  90 83 00 00 */	stw r4, 0(r3)
lbl_800A7290:
/* 800A7290 000A41D0  90 83 00 04 */	stw r4, 4(r3)
/* 800A7294 000A41D4  80 83 00 08 */	lwz r4, 8(r3)
/* 800A7298 000A41D8  38 04 00 01 */	addi r0, r4, 1
/* 800A729C 000A41DC  90 03 00 08 */	stw r0, 8(r3)
/* 800A72A0 000A41E0  4E 80 00 20 */	blr 

.global setupRootHeap__9JASKernelFP12JKRSolidHeapUl
setupRootHeap__9JASKernelFP12JKRSolidHeapUl:
/* 800A72A4 000A41E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A72A8 000A41E8  7C 08 02 A6 */	mflr r0
/* 800A72AC 000A41EC  38 A0 00 00 */	li r5, 0
/* 800A72B0 000A41F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A72B4 000A41F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A72B8 000A41F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A72BC 000A41FC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800A72C0 000A4200  7C 7D 1B 78 */	mr r29, r3
/* 800A72C4 000A4204  7C 83 23 78 */	mr r3, r4
/* 800A72C8 000A4208  7F A4 EB 78 */	mr r4, r29
/* 800A72CC 000A420C  4B F7 8B FD */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 800A72D0 000A4210  90 6D 8A C0 */	stw r3, sSystemHeap__9JASKernel@sda21(r13)
/* 800A72D4 000A4214  7F A4 EB 78 */	mr r4, r29
/* 800A72D8 000A4218  38 60 00 1C */	li r3, 0x1c
/* 800A72DC 000A421C  38 A0 00 00 */	li r5, 0
/* 800A72E0 000A4220  4B F7 CC 61 */	bl __nw__FUlP7JKRHeapi
/* 800A72E4 000A4224  7C 7F 1B 79 */	or. r31, r3, r3
/* 800A72E8 000A4228  41 82 00 B0 */	beq lbl_800A7398
/* 800A72EC 000A422C  38 00 00 00 */	li r0, 0
/* 800A72F0 000A4230  38 7F 00 04 */	addi r3, r31, 4
/* 800A72F4 000A4234  90 1F 00 00 */	stw r0, 0(r31)
/* 800A72F8 000A4238  48 04 88 39 */	bl OSInitMutex
/* 800A72FC 000A423C  83 DF 00 00 */	lwz r30, 0(r31)
/* 800A7300 000A4240  28 1E 00 00 */	cmplwi r30, 0
/* 800A7304 000A4244  41 82 00 1C */	beq lbl_800A7320
/* 800A7308 000A4248  80 1E 00 08 */	lwz r0, 8(r30)
/* 800A730C 000A424C  28 00 00 00 */	cmplwi r0, 0
/* 800A7310 000A4250  40 82 00 10 */	bne lbl_800A7320
/* 800A7314 000A4254  38 00 00 00 */	li r0, 0
/* 800A7318 000A4258  90 1E 00 04 */	stw r0, 4(r30)
/* 800A731C 000A425C  48 00 00 7C */	b lbl_800A7398
lbl_800A7320:
/* 800A7320 000A4260  48 00 00 9D */	bl getSystemHeap__9JASKernelFv
/* 800A7324 000A4264  7C 64 1B 78 */	mr r4, r3
/* 800A7328 000A4268  38 60 04 0C */	li r3, 0x40c
/* 800A732C 000A426C  38 A0 00 00 */	li r5, 0
/* 800A7330 000A4270  4B F7 CC 11 */	bl __nw__FUlP7JKRHeapi
/* 800A7334 000A4274  28 03 00 00 */	cmplwi r3, 0
/* 800A7338 000A4278  41 82 00 14 */	beq lbl_800A734C
/* 800A733C 000A427C  93 C3 00 00 */	stw r30, 0(r3)
/* 800A7340 000A4280  38 00 00 00 */	li r0, 0
/* 800A7344 000A4284  90 03 00 04 */	stw r0, 4(r3)
/* 800A7348 000A4288  90 03 00 08 */	stw r0, 8(r3)
lbl_800A734C:
/* 800A734C 000A428C  90 7F 00 00 */	stw r3, 0(r31)
/* 800A7350 000A4290  80 1F 00 00 */	lwz r0, 0(r31)
/* 800A7354 000A4294  28 00 00 00 */	cmplwi r0, 0
/* 800A7358 000A4298  40 82 00 40 */	bne lbl_800A7398
/* 800A735C 000A429C  80 8D 88 28 */	lwz r4, sSystemHeap__7JKRHeap@sda21(r13)
/* 800A7360 000A42A0  38 60 04 0C */	li r3, 0x40c
/* 800A7364 000A42A4  38 A0 00 00 */	li r5, 0
/* 800A7368 000A42A8  4B F7 CB D9 */	bl __nw__FUlP7JKRHeapi
/* 800A736C 000A42AC  28 03 00 00 */	cmplwi r3, 0
/* 800A7370 000A42B0  41 82 00 14 */	beq lbl_800A7384
/* 800A7374 000A42B4  93 C3 00 00 */	stw r30, 0(r3)
/* 800A7378 000A42B8  38 00 00 00 */	li r0, 0
/* 800A737C 000A42BC  90 03 00 04 */	stw r0, 4(r3)
/* 800A7380 000A42C0  90 03 00 08 */	stw r0, 8(r3)
lbl_800A7384:
/* 800A7384 000A42C4  90 7F 00 00 */	stw r3, 0(r31)
/* 800A7388 000A42C8  80 1F 00 00 */	lwz r0, 0(r31)
/* 800A738C 000A42CC  28 00 00 00 */	cmplwi r0, 0
/* 800A7390 000A42D0  40 82 00 08 */	bne lbl_800A7398
/* 800A7394 000A42D4  93 DF 00 00 */	stw r30, 0(r31)
lbl_800A7398:
/* 800A7398 000A42D8  93 ED 8A C4 */	stw r31, sCommandHeap__9JASKernel@sda21(r13)
/* 800A739C 000A42DC  93 AD 8A B8 */	stw r29, JASDram@sda21(r13)
/* 800A73A0 000A42E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A73A4 000A42E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A73A8 000A42E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A73AC 000A42EC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800A73B0 000A42F0  7C 08 03 A6 */	mtlr r0
/* 800A73B4 000A42F4  38 21 00 20 */	addi r1, r1, 0x20
/* 800A73B8 000A42F8  4E 80 00 20 */	blr 

.global getSystemHeap__9JASKernelFv
getSystemHeap__9JASKernelFv:
/* 800A73BC 000A42FC  80 6D 8A C0 */	lwz r3, sSystemHeap__9JASKernel@sda21(r13)
/* 800A73C0 000A4300  4E 80 00 20 */	blr 

.global getCommandHeap__9JASKernelFv
getCommandHeap__9JASKernelFv:
/* 800A73C4 000A4304  80 6D 8A C4 */	lwz r3, sCommandHeap__9JASKernel@sda21(r13)
/* 800A73C8 000A4308  4E 80 00 20 */	blr 

.global setupAramHeap__9JASKernelFUlUl
setupAramHeap__9JASKernelFUlUl:
/* 800A73CC 000A430C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A73D0 000A4310  7C 08 02 A6 */	mflr r0
/* 800A73D4 000A4314  3C A0 80 4F */	lis r5, audioAramHeap__9JASKernel@ha
/* 800A73D8 000A4318  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A73DC 000A431C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A73E0 000A4320  7C 9F 23 78 */	mr r31, r4
/* 800A73E4 000A4324  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A73E8 000A4328  7C 7E 1B 78 */	mr r30, r3
/* 800A73EC 000A432C  38 65 07 0C */	addi r3, r5, audioAramHeap__9JASKernel@l
/* 800A73F0 000A4330  38 63 00 1C */	addi r3, r3, 0x1c
/* 800A73F4 000A4334  93 CD 8A BC */	stw r30, sAramBase__9JASKernel@sda21(r13)
/* 800A73F8 000A4338  90 61 00 08 */	stw r3, 8(r1)
/* 800A73FC 000A433C  48 04 87 6D */	bl OSLockMutex
/* 800A7400 000A4340  38 1E 00 1F */	addi r0, r30, 0x1f
/* 800A7404 000A4344  3C 60 80 4F */	lis r3, audioAramHeap__9JASKernel@ha
/* 800A7408 000A4348  54 06 00 34 */	rlwinm r6, r0, 0, 0, 0x1a
/* 800A740C 000A434C  38 80 00 00 */	li r4, 0
/* 800A7410 000A4350  7C 1E 30 50 */	subf r0, r30, r6
/* 800A7414 000A4354  38 A3 07 0C */	addi r5, r3, audioAramHeap__9JASKernel@l
/* 800A7418 000A4358  7C 00 F8 50 */	subf r0, r0, r31
/* 800A741C 000A435C  90 C5 00 38 */	stw r6, 0x38(r5)
/* 800A7420 000A4360  80 61 00 08 */	lwz r3, 8(r1)
/* 800A7424 000A4364  90 85 00 40 */	stw r4, 0x40(r5)
/* 800A7428 000A4368  90 05 00 3C */	stw r0, 0x3c(r5)
/* 800A742C 000A436C  48 04 88 19 */	bl OSUnlockMutex
/* 800A7430 000A4370  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A7434 000A4374  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A7438 000A4378  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A743C 000A437C  7C 08 03 A6 */	mtlr r0
/* 800A7440 000A4380  38 21 00 20 */	addi r1, r1, 0x20
/* 800A7444 000A4384  4E 80 00 20 */	blr 

.global getAramHeap__9JASKernelFv
getAramHeap__9JASKernelFv:
/* 800A7448 000A4388  3C 60 80 4F */	lis r3, audioAramHeap__9JASKernel@ha
/* 800A744C 000A438C  38 63 07 0C */	addi r3, r3, audioAramHeap__9JASKernel@l
/* 800A7450 000A4390  4E 80 00 20 */	blr 

.global __sinit_JASHeapCtrl_cpp
__sinit_JASHeapCtrl_cpp:
/* 800A7454 000A4394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A7458 000A4398  7C 08 02 A6 */	mflr r0
/* 800A745C 000A439C  3C 60 80 4F */	lis r3, audioAramHeap__9JASKernel@ha
/* 800A7460 000A43A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A7464 000A43A4  38 63 07 0C */	addi r3, r3, audioAramHeap__9JASKernel@l
/* 800A7468 000A43A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A746C 000A43AC  7C 7F 1B 78 */	mr r31, r3
/* 800A7470 000A43B0  93 C1 00 08 */	stw r30, 8(r1)
/* 800A7474 000A43B4  7C 7E 1B 78 */	mr r30, r3
/* 800A7478 000A43B8  4B F7 F4 59 */	bl initiate__10JSUPtrListFv
/* 800A747C 000A43BC  7F C4 F3 78 */	mr r4, r30
/* 800A7480 000A43C0  38 7F 00 0C */	addi r3, r31, 0xc
/* 800A7484 000A43C4  4B F7 F3 35 */	bl __ct__10JSUPtrLinkFPv
/* 800A7488 000A43C8  38 00 00 00 */	li r0, 0
/* 800A748C 000A43CC  38 7E 00 1C */	addi r3, r30, 0x1c
/* 800A7490 000A43D0  90 1E 00 34 */	stw r0, 0x34(r30)
/* 800A7494 000A43D4  90 1E 00 38 */	stw r0, 0x38(r30)
/* 800A7498 000A43D8  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 800A749C 000A43DC  90 1E 00 40 */	stw r0, 0x40(r30)
/* 800A74A0 000A43E0  48 04 86 91 */	bl OSInitMutex
/* 800A74A4 000A43E4  3C 60 80 0A */	lis r3, __dt__7JASHeapFv@ha
/* 800A74A8 000A43E8  3C A0 80 4F */	lis r5, lbl_804F0700@ha
/* 800A74AC 000A43EC  38 83 BB 00 */	addi r4, r3, __dt__7JASHeapFv@l
/* 800A74B0 000A43F0  7F C3 F3 78 */	mr r3, r30
/* 800A74B4 000A43F4  38 A5 07 00 */	addi r5, r5, lbl_804F0700@l
/* 800A74B8 000A43F8  48 01 A2 49 */	bl __register_global_object
/* 800A74BC 000A43FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A74C0 000A4400  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A74C4 000A4404  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A74C8 000A4408  7C 08 03 A6 */	mtlr r0
/* 800A74CC 000A440C  38 21 00 10 */	addi r1, r1, 0x10
/* 800A74D0 000A4410  4E 80 00 20 */	blr 
