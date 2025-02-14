.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
lbl_80496908:
	.asciz "ebiScreenPushStart"
.balign 4
lbl_8049691C:
	.asciz "TScreenPushStart::setArchive--set_blo_a"
.balign 4
lbl_80496944:
	.asciz "push_start_a.blo"
.balign 4
lbl_80496958:
	.asciz "TScreenPushStart::setArchive--set_blo_b"
.balign 4
lbl_80496980:
	.asciz "push_start_b.blo"
.balign 4
lbl_80496994:
	.asciz "TScreenPushStart::setArchive--set_blo_c"
.balign 4
lbl_804969BC:
	.asciz "push_start_c.blo"
.balign 4
lbl_804969D0:
	.asciz "TScreenPushStart::setArchive--set_blo_d"
.balign 4
lbl_804969F8:
	.asciz "push_start_d.blo"
.balign 4
lbl_80496A0C:
	.asciz "TScreenPushStart::setArchive--makeAnmPointer"
.balign 4
lbl_80496A3C:
	.asciz "push_start_a.bck"
.balign 4
lbl_80496A50:
	.asciz "push_start_a.bpk"
.balign 4
lbl_80496A64:
	.asciz "push_start_b.bck"
.balign 4
lbl_80496A78:
	.asciz "push_start_b.bpk"
.balign 4
lbl_80496A8C:
	.asciz "push_start_c.bck"
.balign 4
lbl_80496AA0:
	.asciz "push_start_c.bpk"
.balign 4
lbl_80496AB4:
	.asciz "push_start_d.bck"
.balign 4
lbl_80496AC8:
	.asciz "push_start_d.bpk"
.balign 4
lbl_80496ADC:
	.asciz "TPressStart"

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global __vt__Q33ebi6Screen11TPressStart
__vt__Q33ebi6Screen11TPressStart:
	.4byte 0
	.4byte 0
	.4byte setArchive__Q33ebi6Screen11TScreenBaseFP10JKRArchive
	.4byte openScreen__Q33ebi6Screen11TScreenBaseFPQ33ebi6Screen7ArgOpen
	.4byte closeScreen__Q33ebi6Screen11TScreenBaseFPQ33ebi6Screen8ArgClose
	.4byte killScreen__Q33ebi6Screen11TScreenBaseFv
	.4byte update__Q33ebi6Screen11TScreenBaseFv
	.4byte draw__Q33ebi6Screen11TScreenBaseFv
	.4byte isFinishScreen__Q33ebi6Screen11TScreenBaseFv
	.4byte doSetArchive__Q33ebi6Screen11TPressStartFP10JKRArchive
	.4byte doOpenScreen__Q33ebi6Screen11TPressStartFPQ33ebi6Screen7ArgOpen
	.4byte doCloseScreen__Q33ebi6Screen11TPressStartFPQ33ebi6Screen8ArgClose
	.4byte doKillScreen__Q33ebi6Screen11TScreenBaseFv
	.4byte doInitWaitState__Q33ebi6Screen11TScreenBaseFv
	.4byte doUpdateStateOpen__Q33ebi6Screen11TScreenBaseFv
	.4byte doUpdateStateWait__Q33ebi6Screen11TPressStartFv
	.4byte doUpdateStateClose__Q33ebi6Screen11TPressStartFv
	.4byte doDraw__Q33ebi6Screen11TPressStartFv
	.4byte getName__Q33ebi6Screen11TPressStartFv

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
lbl_8051FAE0:
	.float 0.2
lbl_8051FAE4:
	.float 0.0
lbl_8051FAE8:
	.float 255.0
.balign 8
lbl_8051FAF0:
	.4byte 0x43300000
	.4byte 0x00000000
lbl_8051FAF8:
	.float 32767.0
lbl_8051FAFC:
	.float 0.25
lbl_8051FB00:
	.float 0.5
lbl_8051FB04:
	.float 0.75
lbl_8051FB08:
	.float 60.0
.balign 8
lbl_8051FB10:
	.4byte 0x43300000
	.4byte 0x80000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global doSetArchive__Q33ebi6Screen11TPressStartFP10JKRArchive
doSetArchive__Q33ebi6Screen11TPressStartFP10JKRArchive:
/* 803D3B10 003D0A50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D3B14 003D0A54  7C 08 02 A6 */	mflr r0
/* 803D3B18 003D0A58  3C A0 80 49 */	lis r5, lbl_80496908@ha
/* 803D3B1C 003D0A5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D3B20 003D0A60  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 803D3B24 003D0A64  7C 7D 1B 78 */	mr r29, r3
/* 803D3B28 003D0A68  3B E5 69 08 */	addi r31, r5, lbl_80496908@l
/* 803D3B2C 003D0A6C  7C 9E 23 78 */	mr r30, r4
/* 803D3B30 003D0A70  38 A0 00 00 */	li r5, 0
/* 803D3B34 003D0A74  38 9F 00 14 */	addi r4, r31, 0x14
/* 803D3B38 003D0A78  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 803D3B3C 003D0A7C  48 04 F8 21 */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 803D3B40 003D0A80  38 60 01 48 */	li r3, 0x148
/* 803D3B44 003D0A84  4B C5 03 61 */	bl __nw__FUl
/* 803D3B48 003D0A88  7C 60 1B 79 */	or. r0, r3, r3
/* 803D3B4C 003D0A8C  41 82 00 0C */	beq lbl_803D3B58
/* 803D3B50 003D0A90  48 06 12 5D */	bl __ct__Q29P2DScreen10Mgr_tuningFv
/* 803D3B54 003D0A94  7C 60 1B 78 */	mr r0, r3
lbl_803D3B58:
/* 803D3B58 003D0A98  90 1D 00 18 */	stw r0, 0x18(r29)
/* 803D3B5C 003D0A9C  7F C6 F3 78 */	mr r6, r30
/* 803D3B60 003D0AA0  38 9F 00 3C */	addi r4, r31, 0x3c
/* 803D3B64 003D0AA4  3C A0 01 10 */	lis r5, 0x110
/* 803D3B68 003D0AA8  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 803D3B6C 003D0AAC  4B C6 BA B9 */	bl set__9J2DScreenFPCcUlP10JKRArchive
/* 803D3B70 003D0AB0  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 803D3B74 003D0AB4  38 9F 00 14 */	addi r4, r31, 0x14
/* 803D3B78 003D0AB8  48 04 F7 ED */	bl heapStatusEnd__6SystemFPc
/* 803D3B7C 003D0ABC  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 803D3B80 003D0AC0  38 9F 00 50 */	addi r4, r31, 0x50
/* 803D3B84 003D0AC4  38 A0 00 00 */	li r5, 0
/* 803D3B88 003D0AC8  48 04 F7 D5 */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 803D3B8C 003D0ACC  38 60 01 48 */	li r3, 0x148
/* 803D3B90 003D0AD0  4B C5 03 15 */	bl __nw__FUl
/* 803D3B94 003D0AD4  7C 60 1B 79 */	or. r0, r3, r3
/* 803D3B98 003D0AD8  41 82 00 0C */	beq lbl_803D3BA4
/* 803D3B9C 003D0ADC  48 06 12 11 */	bl __ct__Q29P2DScreen10Mgr_tuningFv
/* 803D3BA0 003D0AE0  7C 60 1B 78 */	mr r0, r3
lbl_803D3BA4:
/* 803D3BA4 003D0AE4  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 803D3BA8 003D0AE8  7F C6 F3 78 */	mr r6, r30
/* 803D3BAC 003D0AEC  38 9F 00 78 */	addi r4, r31, 0x78
/* 803D3BB0 003D0AF0  3C A0 01 10 */	lis r5, 0x110
/* 803D3BB4 003D0AF4  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 803D3BB8 003D0AF8  4B C6 BA 6D */	bl set__9J2DScreenFPCcUlP10JKRArchive
/* 803D3BBC 003D0AFC  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 803D3BC0 003D0B00  38 9F 00 50 */	addi r4, r31, 0x50
/* 803D3BC4 003D0B04  48 04 F7 A1 */	bl heapStatusEnd__6SystemFPc
/* 803D3BC8 003D0B08  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 803D3BCC 003D0B0C  38 9F 00 8C */	addi r4, r31, 0x8c
/* 803D3BD0 003D0B10  38 A0 00 00 */	li r5, 0
/* 803D3BD4 003D0B14  48 04 F7 89 */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 803D3BD8 003D0B18  38 60 01 48 */	li r3, 0x148
/* 803D3BDC 003D0B1C  4B C5 02 C9 */	bl __nw__FUl
/* 803D3BE0 003D0B20  7C 60 1B 79 */	or. r0, r3, r3
/* 803D3BE4 003D0B24  41 82 00 0C */	beq lbl_803D3BF0
/* 803D3BE8 003D0B28  48 06 11 C5 */	bl __ct__Q29P2DScreen10Mgr_tuningFv
/* 803D3BEC 003D0B2C  7C 60 1B 78 */	mr r0, r3
lbl_803D3BF0:
/* 803D3BF0 003D0B30  90 1D 00 20 */	stw r0, 0x20(r29)
/* 803D3BF4 003D0B34  7F C6 F3 78 */	mr r6, r30
/* 803D3BF8 003D0B38  38 9F 00 B4 */	addi r4, r31, 0xb4
/* 803D3BFC 003D0B3C  3C A0 01 10 */	lis r5, 0x110
/* 803D3C00 003D0B40  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 803D3C04 003D0B44  4B C6 BA 21 */	bl set__9J2DScreenFPCcUlP10JKRArchive
/* 803D3C08 003D0B48  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 803D3C0C 003D0B4C  38 9F 00 8C */	addi r4, r31, 0x8c
/* 803D3C10 003D0B50  48 04 F7 55 */	bl heapStatusEnd__6SystemFPc
/* 803D3C14 003D0B54  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 803D3C18 003D0B58  38 9F 00 C8 */	addi r4, r31, 0xc8
/* 803D3C1C 003D0B5C  38 A0 00 00 */	li r5, 0
/* 803D3C20 003D0B60  48 04 F7 3D */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 803D3C24 003D0B64  38 60 01 48 */	li r3, 0x148
/* 803D3C28 003D0B68  4B C5 02 7D */	bl __nw__FUl
/* 803D3C2C 003D0B6C  7C 60 1B 79 */	or. r0, r3, r3
/* 803D3C30 003D0B70  41 82 00 0C */	beq lbl_803D3C3C
/* 803D3C34 003D0B74  48 06 11 79 */	bl __ct__Q29P2DScreen10Mgr_tuningFv
/* 803D3C38 003D0B78  7C 60 1B 78 */	mr r0, r3
lbl_803D3C3C:
/* 803D3C3C 003D0B7C  90 1D 00 24 */	stw r0, 0x24(r29)
/* 803D3C40 003D0B80  7F C6 F3 78 */	mr r6, r30
/* 803D3C44 003D0B84  38 9F 00 F0 */	addi r4, r31, 0xf0
/* 803D3C48 003D0B88  3C A0 01 10 */	lis r5, 0x110
/* 803D3C4C 003D0B8C  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 803D3C50 003D0B90  4B C6 B9 D5 */	bl set__9J2DScreenFPCcUlP10JKRArchive
/* 803D3C54 003D0B94  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 803D3C58 003D0B98  38 9F 00 C8 */	addi r4, r31, 0xc8
/* 803D3C5C 003D0B9C  48 04 F7 09 */	bl heapStatusEnd__6SystemFPc
/* 803D3C60 003D0BA0  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 803D3C64 003D0BA4  38 9F 01 04 */	addi r4, r31, 0x104
/* 803D3C68 003D0BA8  38 A0 00 00 */	li r5, 0
/* 803D3C6C 003D0BAC  48 04 F6 F1 */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 803D3C70 003D0BB0  3B 00 00 00 */	li r24, 0
/* 803D3C74 003D0BB4  7F B9 EB 78 */	mr r25, r29
lbl_803D3C78:
/* 803D3C78 003D0BB8  83 79 00 18 */	lwz r27, 0x18(r25)
/* 803D3C7C 003D0BBC  3B 80 00 00 */	li r28, 0
/* 803D3C80 003D0BC0  A3 5B 01 02 */	lhz r26, 0x102(r27)
/* 803D3C84 003D0BC4  48 00 00 18 */	b lbl_803D3C9C
lbl_803D3C88:
/* 803D3C88 003D0BC8  7F 63 DB 78 */	mr r3, r27
/* 803D3C8C 003D0BCC  7F 84 E3 78 */	mr r4, r28
/* 803D3C90 003D0BD0  4B C6 CD D5 */	bl getMaterial__9J2DScreenFUs
/* 803D3C94 003D0BD4  4B C7 EA 35 */	bl makeAnmPointer__11J2DMaterialFv
/* 803D3C98 003D0BD8  3B 9C 00 01 */	addi r28, r28, 1
lbl_803D3C9C:
/* 803D3C9C 003D0BDC  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 803D3CA0 003D0BE0  7C 00 D0 40 */	cmplw r0, r26
/* 803D3CA4 003D0BE4  41 80 FF E4 */	blt lbl_803D3C88
/* 803D3CA8 003D0BE8  3B 18 00 01 */	addi r24, r24, 1
/* 803D3CAC 003D0BEC  3B 39 00 04 */	addi r25, r25, 4
/* 803D3CB0 003D0BF0  2C 18 00 04 */	cmpwi r24, 4
/* 803D3CB4 003D0BF4  41 80 FF C4 */	blt lbl_803D3C78
/* 803D3CB8 003D0BF8  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 803D3CBC 003D0BFC  38 9F 01 04 */	addi r4, r31, 0x104
/* 803D3CC0 003D0C00  48 04 F6 A5 */	bl heapStatusEnd__6SystemFPc
/* 803D3CC4 003D0C04  7F B9 EB 78 */	mr r25, r29
/* 803D3CC8 003D0C08  7F BA EB 78 */	mr r26, r29
/* 803D3CCC 003D0C0C  7F BB EB 78 */	mr r27, r29
/* 803D3CD0 003D0C10  3B 00 00 00 */	li r24, 0
lbl_803D3CD4:
/* 803D3CD4 003D0C14  80 7A 00 18 */	lwz r3, 0x18(r26)
/* 803D3CD8 003D0C18  38 B9 00 30 */	addi r5, r25, 0x30
/* 803D3CDC 003D0C1C  7C 64 1B 78 */	mr r4, r3
/* 803D3CE0 003D0C20  48 06 0F 7D */	bl addCallBackPane__Q29P2DScreen3MgrFP7J2DPanePQ29P2DScreen4Node
/* 803D3CE4 003D0C24  80 7A 00 18 */	lwz r3, 0x18(r26)
/* 803D3CE8 003D0C28  38 B9 01 20 */	addi r5, r25, 0x120
/* 803D3CEC 003D0C2C  7C 64 1B 78 */	mr r4, r3
/* 803D3CF0 003D0C30  48 06 0F 6D */	bl addCallBackPane__Q29P2DScreen3MgrFP7J2DPanePQ29P2DScreen4Node
/* 803D3CF4 003D0C34  80 7A 00 18 */	lwz r3, 0x18(r26)
/* 803D3CF8 003D0C38  38 BB 02 10 */	addi r5, r27, 0x210
/* 803D3CFC 003D0C3C  7C 64 1B 78 */	mr r4, r3
/* 803D3D00 003D0C40  48 06 0F 5D */	bl addCallBackPane__Q29P2DScreen3MgrFP7J2DPanePQ29P2DScreen4Node
/* 803D3D04 003D0C44  80 7A 00 18 */	lwz r3, 0x18(r26)
/* 803D3D08 003D0C48  38 80 00 01 */	li r4, 1
/* 803D3D0C 003D0C4C  4B FF 66 D9 */	bl E2DPane_setTreeInfluencedAlpha__3ebiFP7J2DPaneb
/* 803D3D10 003D0C50  80 7A 00 18 */	lwz r3, 0x18(r26)
/* 803D3D14 003D0C54  38 80 00 FF */	li r4, 0xff
/* 803D3D18 003D0C58  81 83 00 00 */	lwz r12, 0(r3)
/* 803D3D1C 003D0C5C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 803D3D20 003D0C60  7D 89 03 A6 */	mtctr r12
/* 803D3D24 003D0C64  4E 80 04 21 */	bctrl 
/* 803D3D28 003D0C68  3B 18 00 01 */	addi r24, r24, 1
/* 803D3D2C 003D0C6C  3B 5A 00 04 */	addi r26, r26, 4
/* 803D3D30 003D0C70  2C 18 00 04 */	cmpwi r24, 4
/* 803D3D34 003D0C74  3B 7B 00 20 */	addi r27, r27, 0x20
/* 803D3D38 003D0C78  3B 39 00 3C */	addi r25, r25, 0x3c
/* 803D3D3C 003D0C7C  41 80 FF 98 */	blt lbl_803D3CD4
/* 803D3D40 003D0C80  3C C0 00 02 */	lis r6, 0x0001869F@ha
/* 803D3D44 003D0C84  7F C5 F3 78 */	mr r5, r30
/* 803D3D48 003D0C88  38 7D 00 30 */	addi r3, r29, 0x30
/* 803D3D4C 003D0C8C  38 9F 01 34 */	addi r4, r31, 0x134
/* 803D3D50 003D0C90  38 E6 86 9F */	addi r7, r6, 0x0001869F@l
/* 803D3D54 003D0C94  38 C0 00 00 */	li r6, 0
/* 803D3D58 003D0C98  4B FF CD 79 */	bl loadAnm__Q23ebi19E2DCallBack_AnmBaseFPcP10JKRArchivell
/* 803D3D5C 003D0C9C  3C C0 00 02 */	lis r6, 0x0001869F@ha
/* 803D3D60 003D0CA0  7F C5 F3 78 */	mr r5, r30
/* 803D3D64 003D0CA4  38 7D 01 20 */	addi r3, r29, 0x120
/* 803D3D68 003D0CA8  38 9F 01 48 */	addi r4, r31, 0x148
/* 803D3D6C 003D0CAC  38 E6 86 9F */	addi r7, r6, 0x0001869F@l
/* 803D3D70 003D0CB0  38 C0 00 00 */	li r6, 0
/* 803D3D74 003D0CB4  4B FF CD 5D */	bl loadAnm__Q23ebi19E2DCallBack_AnmBaseFPcP10JKRArchivell
/* 803D3D78 003D0CB8  3C C0 00 02 */	lis r6, 0x0001869F@ha
/* 803D3D7C 003D0CBC  7F C5 F3 78 */	mr r5, r30
/* 803D3D80 003D0CC0  38 7D 00 6C */	addi r3, r29, 0x6c
/* 803D3D84 003D0CC4  38 9F 01 5C */	addi r4, r31, 0x15c
/* 803D3D88 003D0CC8  38 E6 86 9F */	addi r7, r6, 0x0001869F@l
/* 803D3D8C 003D0CCC  38 C0 00 00 */	li r6, 0
/* 803D3D90 003D0CD0  4B FF CD 41 */	bl loadAnm__Q23ebi19E2DCallBack_AnmBaseFPcP10JKRArchivell
/* 803D3D94 003D0CD4  3C C0 00 02 */	lis r6, 0x0001869F@ha
/* 803D3D98 003D0CD8  7F C5 F3 78 */	mr r5, r30
/* 803D3D9C 003D0CDC  38 7D 01 5C */	addi r3, r29, 0x15c
/* 803D3DA0 003D0CE0  38 9F 01 70 */	addi r4, r31, 0x170
/* 803D3DA4 003D0CE4  38 E6 86 9F */	addi r7, r6, 0x0001869F@l
/* 803D3DA8 003D0CE8  38 C0 00 00 */	li r6, 0
/* 803D3DAC 003D0CEC  4B FF CD 25 */	bl loadAnm__Q23ebi19E2DCallBack_AnmBaseFPcP10JKRArchivell
/* 803D3DB0 003D0CF0  3C C0 00 02 */	lis r6, 0x0001869F@ha
/* 803D3DB4 003D0CF4  7F C5 F3 78 */	mr r5, r30
/* 803D3DB8 003D0CF8  38 7D 00 A8 */	addi r3, r29, 0xa8
/* 803D3DBC 003D0CFC  38 9F 01 84 */	addi r4, r31, 0x184
/* 803D3DC0 003D0D00  38 E6 86 9F */	addi r7, r6, 0x0001869F@l
/* 803D3DC4 003D0D04  38 C0 00 00 */	li r6, 0
/* 803D3DC8 003D0D08  4B FF CD 09 */	bl loadAnm__Q23ebi19E2DCallBack_AnmBaseFPcP10JKRArchivell
/* 803D3DCC 003D0D0C  3C C0 00 02 */	lis r6, 0x0001869F@ha
/* 803D3DD0 003D0D10  7F C5 F3 78 */	mr r5, r30
/* 803D3DD4 003D0D14  38 7D 01 98 */	addi r3, r29, 0x198
/* 803D3DD8 003D0D18  38 9F 01 98 */	addi r4, r31, 0x198
/* 803D3DDC 003D0D1C  38 E6 86 9F */	addi r7, r6, 0x0001869F@l
/* 803D3DE0 003D0D20  38 C0 00 00 */	li r6, 0
/* 803D3DE4 003D0D24  4B FF CC ED */	bl loadAnm__Q23ebi19E2DCallBack_AnmBaseFPcP10JKRArchivell
/* 803D3DE8 003D0D28  3C C0 00 02 */	lis r6, 0x0001869F@ha
/* 803D3DEC 003D0D2C  7F C5 F3 78 */	mr r5, r30
/* 803D3DF0 003D0D30  38 7D 00 E4 */	addi r3, r29, 0xe4
/* 803D3DF4 003D0D34  38 9F 01 AC */	addi r4, r31, 0x1ac
/* 803D3DF8 003D0D38  38 E6 86 9F */	addi r7, r6, 0x0001869F@l
/* 803D3DFC 003D0D3C  38 C0 00 00 */	li r6, 0
/* 803D3E00 003D0D40  4B FF CC D1 */	bl loadAnm__Q23ebi19E2DCallBack_AnmBaseFPcP10JKRArchivell
/* 803D3E04 003D0D44  3C C0 00 02 */	lis r6, 0x0001869F@ha
/* 803D3E08 003D0D48  7F C5 F3 78 */	mr r5, r30
/* 803D3E0C 003D0D4C  38 7D 01 D4 */	addi r3, r29, 0x1d4
/* 803D3E10 003D0D50  38 9F 01 C0 */	addi r4, r31, 0x1c0
/* 803D3E14 003D0D54  38 E6 86 9F */	addi r7, r6, 0x0001869F@l
/* 803D3E18 003D0D58  38 C0 00 00 */	li r6, 0
/* 803D3E1C 003D0D5C  4B FF CC B5 */	bl loadAnm__Q23ebi19E2DCallBack_AnmBaseFPcP10JKRArchivell
/* 803D3E20 003D0D60  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 803D3E24 003D0D64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D3E28 003D0D68  7C 08 03 A6 */	mtlr r0
/* 803D3E2C 003D0D6C  38 21 00 30 */	addi r1, r1, 0x30
/* 803D3E30 003D0D70  4E 80 00 20 */	blr 

.global doOpenScreen__Q33ebi6Screen11TPressStartFPQ33ebi6Screen7ArgOpen
doOpenScreen__Q33ebi6Screen11TPressStartFPQ33ebi6Screen7ArgOpen:
/* 803D3E34 003D0D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D3E38 003D0D78  7C 08 02 A6 */	mflr r0
/* 803D3E3C 003D0D7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D3E40 003D0D80  38 00 00 01 */	li r0, 1
/* 803D3E44 003D0D84  98 03 00 10 */	stb r0, 0x10(r3)
/* 803D3E48 003D0D88  48 00 02 85 */	bl startLoop___Q33ebi6Screen11TPressStartFv
/* 803D3E4C 003D0D8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D3E50 003D0D90  7C 08 03 A6 */	mtlr r0
/* 803D3E54 003D0D94  38 21 00 10 */	addi r1, r1, 0x10
/* 803D3E58 003D0D98  4E 80 00 20 */	blr 

.global doCloseScreen__Q33ebi6Screen11TPressStartFPQ33ebi6Screen8ArgClose
doCloseScreen__Q33ebi6Screen11TPressStartFPQ33ebi6Screen8ArgClose:
/* 803D3E5C 003D0D9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D3E60 003D0DA0  7C 08 02 A6 */	mflr r0
/* 803D3E64 003D0DA4  C0 22 17 80 */	lfs f1, lbl_8051FAE0@sda21(r2)
/* 803D3E68 003D0DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D3E6C 003D0DAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D3E70 003D0DB0  7C 7F 1B 78 */	mr r31, r3
/* 803D3E74 003D0DB4  80 8D 9A EC */	lwz r4, sys@sda21(r13)
/* 803D3E78 003D0DB8  C0 04 00 54 */	lfs f0, 0x54(r4)
/* 803D3E7C 003D0DBC  EC 21 00 24 */	fdivs f1, f1, f0
/* 803D3E80 003D0DC0  4B CE DC CD */	bl __cvt_fp2unsigned
/* 803D3E84 003D0DC4  90 7F 00 28 */	stw r3, 0x28(r31)
/* 803D3E88 003D0DC8  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 803D3E8C 003D0DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D3E90 003D0DD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D3E94 003D0DD4  7C 08 03 A6 */	mtlr r0
/* 803D3E98 003D0DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 803D3E9C 003D0DDC  4E 80 00 20 */	blr 

.global doUpdateStateWait__Q33ebi6Screen11TPressStartFv
doUpdateStateWait__Q33ebi6Screen11TPressStartFv:
/* 803D3EA0 003D0DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D3EA4 003D0DE4  7C 08 02 A6 */	mflr r0
/* 803D3EA8 003D0DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D3EAC 003D0DEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D3EB0 003D0DF0  7C 7F 1B 78 */	mr r31, r3
/* 803D3EB4 003D0DF4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803D3EB8 003D0DF8  54 00 10 3A */	slwi r0, r0, 2
/* 803D3EBC 003D0DFC  7C 7F 02 14 */	add r3, r31, r0
/* 803D3EC0 003D0E00  80 63 00 18 */	lwz r3, 0x18(r3)
/* 803D3EC4 003D0E04  81 83 00 00 */	lwz r12, 0(r3)
/* 803D3EC8 003D0E08  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 803D3ECC 003D0E0C  7D 89 03 A6 */	mtctr r12
/* 803D3ED0 003D0E10  4E 80 04 21 */	bctrl 
/* 803D3ED4 003D0E14  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 803D3ED8 003D0E18  28 00 00 00 */	cmplwi r0, 0
/* 803D3EDC 003D0E1C  41 82 00 2C */	beq lbl_803D3F08
/* 803D3EE0 003D0E20  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 803D3EE4 003D0E24  80 03 00 18 */	lwz r0, 0x18(r3)
/* 803D3EE8 003D0E28  70 00 11 00 */	andi. r0, r0, 0x1100
/* 803D3EEC 003D0E2C  41 82 00 1C */	beq lbl_803D3F08
/* 803D3EF0 003D0E30  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 803D3EF4 003D0E34  38 80 18 00 */	li r4, 0x1800
/* 803D3EF8 003D0E38  38 A0 00 00 */	li r5, 0
/* 803D3EFC 003D0E3C  4B F6 47 35 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 803D3F00 003D0E40  38 60 00 01 */	li r3, 1
/* 803D3F04 003D0E44  48 00 00 2C */	b lbl_803D3F30
lbl_803D3F08:
/* 803D3F08 003D0E48  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 803D3F0C 003D0E4C  1C 60 00 3C */	mulli r3, r0, 0x3c
/* 803D3F10 003D0E50  38 63 00 30 */	addi r3, r3, 0x30
/* 803D3F14 003D0E54  7C 7F 1A 14 */	add r3, r31, r3
/* 803D3F18 003D0E58  4B FF D0 99 */	bl isFinish__Q23ebi19E2DCallBack_AnmBaseFv
/* 803D3F1C 003D0E5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803D3F20 003D0E60  41 82 00 0C */	beq lbl_803D3F2C
/* 803D3F24 003D0E64  7F E3 FB 78 */	mr r3, r31
/* 803D3F28 003D0E68  48 00 01 A5 */	bl startLoop___Q33ebi6Screen11TPressStartFv
lbl_803D3F2C:
/* 803D3F2C 003D0E6C  38 60 00 00 */	li r3, 0
lbl_803D3F30:
/* 803D3F30 003D0E70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D3F34 003D0E74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D3F38 003D0E78  7C 08 03 A6 */	mtlr r0
/* 803D3F3C 003D0E7C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D3F40 003D0E80  4E 80 00 20 */	blr 

.global doUpdateStateClose__Q33ebi6Screen11TPressStartFv
doUpdateStateClose__Q33ebi6Screen11TPressStartFv:
/* 803D3F44 003D0E84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D3F48 003D0E88  7C 08 02 A6 */	mflr r0
/* 803D3F4C 003D0E8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D3F50 003D0E90  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803D3F54 003D0E94  7C 7F 1B 78 */	mr r31, r3
/* 803D3F58 003D0E98  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803D3F5C 003D0E9C  54 00 10 3A */	slwi r0, r0, 2
/* 803D3F60 003D0EA0  7C 7F 02 14 */	add r3, r31, r0
/* 803D3F64 003D0EA4  80 63 00 18 */	lwz r3, 0x18(r3)
/* 803D3F68 003D0EA8  81 83 00 00 */	lwz r12, 0(r3)
/* 803D3F6C 003D0EAC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 803D3F70 003D0EB0  7D 89 03 A6 */	mtctr r12
/* 803D3F74 003D0EB4  4E 80 04 21 */	bctrl 
/* 803D3F78 003D0EB8  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 803D3F7C 003D0EBC  28 03 00 00 */	cmplwi r3, 0
/* 803D3F80 003D0EC0  41 82 00 0C */	beq lbl_803D3F8C
/* 803D3F84 003D0EC4  38 03 FF FF */	addi r0, r3, -1
/* 803D3F88 003D0EC8  90 1F 00 28 */	stw r0, 0x28(r31)
lbl_803D3F8C:
/* 803D3F8C 003D0ECC  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 803D3F90 003D0ED0  28 04 00 00 */	cmplwi r4, 0
/* 803D3F94 003D0ED4  41 82 00 38 */	beq lbl_803D3FCC
/* 803D3F98 003D0ED8  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 803D3F9C 003D0EDC  3C 00 43 30 */	lis r0, 0x4330
/* 803D3FA0 003D0EE0  90 01 00 08 */	stw r0, 8(r1)
/* 803D3FA4 003D0EE4  C8 42 17 90 */	lfd f2, lbl_8051FAF0@sda21(r2)
/* 803D3FA8 003D0EE8  90 61 00 0C */	stw r3, 0xc(r1)
/* 803D3FAC 003D0EEC  C8 01 00 08 */	lfd f0, 8(r1)
/* 803D3FB0 003D0EF0  90 81 00 14 */	stw r4, 0x14(r1)
/* 803D3FB4 003D0EF4  EC 20 10 28 */	fsubs f1, f0, f2
/* 803D3FB8 003D0EF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 803D3FBC 003D0EFC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803D3FC0 003D0F00  EC 00 10 28 */	fsubs f0, f0, f2
/* 803D3FC4 003D0F04  EC 21 00 24 */	fdivs f1, f1, f0
/* 803D3FC8 003D0F08  48 00 00 08 */	b lbl_803D3FD0
lbl_803D3FCC:
/* 803D3FCC 003D0F0C  C0 22 17 84 */	lfs f1, lbl_8051FAE4@sda21(r2)
lbl_803D3FD0:
/* 803D3FD0 003D0F10  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 803D3FD4 003D0F14  C0 02 17 88 */	lfs f0, lbl_8051FAE8@sda21(r2)
/* 803D3FD8 003D0F18  54 00 10 3A */	slwi r0, r0, 2
/* 803D3FDC 003D0F1C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D3FE0 003D0F20  7C 7F 02 14 */	add r3, r31, r0
/* 803D3FE4 003D0F24  80 63 00 18 */	lwz r3, 0x18(r3)
/* 803D3FE8 003D0F28  FC 00 00 1E */	fctiwz f0, f0
/* 803D3FEC 003D0F2C  81 83 00 00 */	lwz r12, 0(r3)
/* 803D3FF0 003D0F30  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 803D3FF4 003D0F34  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803D3FF8 003D0F38  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 803D3FFC 003D0F3C  7D 89 03 A6 */	mtctr r12
/* 803D4000 003D0F40  4E 80 04 21 */	bctrl 
/* 803D4004 003D0F44  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 803D4008 003D0F48  28 00 00 00 */	cmplwi r0, 0
/* 803D400C 003D0F4C  41 82 00 20 */	beq lbl_803D402C
/* 803D4010 003D0F50  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 803D4014 003D0F54  1C 60 00 3C */	mulli r3, r0, 0x3c
/* 803D4018 003D0F58  38 63 00 30 */	addi r3, r3, 0x30
/* 803D401C 003D0F5C  7C 7F 1A 14 */	add r3, r31, r3
/* 803D4020 003D0F60  4B FF CF 91 */	bl isFinish__Q23ebi19E2DCallBack_AnmBaseFv
/* 803D4024 003D0F64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803D4028 003D0F68  41 82 00 0C */	beq lbl_803D4034
lbl_803D402C:
/* 803D402C 003D0F6C  38 60 00 01 */	li r3, 1
/* 803D4030 003D0F70  48 00 00 08 */	b lbl_803D4038
lbl_803D4034:
/* 803D4034 003D0F74  38 60 00 00 */	li r3, 0
lbl_803D4038:
/* 803D4038 003D0F78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D403C 003D0F7C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803D4040 003D0F80  7C 08 03 A6 */	mtlr r0
/* 803D4044 003D0F84  38 21 00 30 */	addi r1, r1, 0x30
/* 803D4048 003D0F88  4E 80 00 20 */	blr 

.global doDraw__Q33ebi6Screen11TPressStartFv
doDraw__Q33ebi6Screen11TPressStartFv:
/* 803D404C 003D0F8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D4050 003D0F90  7C 08 02 A6 */	mflr r0
/* 803D4054 003D0F94  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D4058 003D0F98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803D405C 003D0F9C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803D4060 003D0FA0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803D4064 003D0FA4  7C 7D 1B 78 */	mr r29, r3
/* 803D4068 003D0FA8  80 8D 9A EC */	lwz r4, sys@sda21(r13)
/* 803D406C 003D0FAC  83 E4 00 24 */	lwz r31, 0x24(r4)
/* 803D4070 003D0FB0  3B DF 01 90 */	addi r30, r31, 0x190
/* 803D4074 003D0FB4  81 9E 00 00 */	lwz r12, 0(r30)
/* 803D4078 003D0FB8  7F C3 F3 78 */	mr r3, r30
/* 803D407C 003D0FBC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 803D4080 003D0FC0  7D 89 03 A6 */	mtctr r12
/* 803D4084 003D0FC4  4E 80 04 21 */	bctrl 
/* 803D4088 003D0FC8  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 803D408C 003D0FCC  7F E4 FB 78 */	mr r4, r31
/* 803D4090 003D0FD0  7F C5 F3 78 */	mr r5, r30
/* 803D4094 003D0FD4  54 00 10 3A */	slwi r0, r0, 2
/* 803D4098 003D0FD8  7C 7D 02 14 */	add r3, r29, r0
/* 803D409C 003D0FDC  80 63 00 18 */	lwz r3, 0x18(r3)
/* 803D40A0 003D0FE0  81 83 00 00 */	lwz r12, 0(r3)
/* 803D40A4 003D0FE4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 803D40A8 003D0FE8  7D 89 03 A6 */	mtctr r12
/* 803D40AC 003D0FEC  4E 80 04 21 */	bctrl 
/* 803D40B0 003D0FF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D40B4 003D0FF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803D40B8 003D0FF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803D40BC 003D0FFC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803D40C0 003D1000  7C 08 03 A6 */	mtlr r0
/* 803D40C4 003D1004  38 21 00 20 */	addi r1, r1, 0x20
/* 803D40C8 003D1008  4E 80 00 20 */	blr 

.global startLoop___Q33ebi6Screen11TPressStartFv
startLoop___Q33ebi6Screen11TPressStartFv:
/* 803D40CC 003D100C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D40D0 003D1010  7C 08 02 A6 */	mflr r0
/* 803D40D4 003D1014  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D40D8 003D1018  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803D40DC 003D101C  7C 7F 1B 78 */	mr r31, r3
/* 803D40E0 003D1020  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803D40E4 003D1024  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803D40E8 003D1028  93 81 00 10 */	stw r28, 0x10(r1)
/* 803D40EC 003D102C  4B CF 54 B5 */	bl rand
/* 803D40F0 003D1030  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803D40F4 003D1034  3C 00 43 30 */	lis r0, 0x4330
/* 803D40F8 003D1038  90 61 00 0C */	stw r3, 0xc(r1)
/* 803D40FC 003D103C  C8 62 17 B0 */	lfd f3, lbl_8051FB10@sda21(r2)
/* 803D4100 003D1040  90 01 00 08 */	stw r0, 8(r1)
/* 803D4104 003D1044  C0 22 17 98 */	lfs f1, lbl_8051FAF8@sda21(r2)
/* 803D4108 003D1048  C8 41 00 08 */	lfd f2, 8(r1)
/* 803D410C 003D104C  C0 02 17 9C */	lfs f0, lbl_8051FAFC@sda21(r2)
/* 803D4110 003D1050  EC 42 18 28 */	fsubs f2, f2, f3
/* 803D4114 003D1054  EC 22 08 24 */	fdivs f1, f2, f1
/* 803D4118 003D1058  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803D411C 003D105C  40 80 00 10 */	bge lbl_803D412C
/* 803D4120 003D1060  38 00 00 00 */	li r0, 0
/* 803D4124 003D1064  90 1F 00 14 */	stw r0, 0x14(r31)
/* 803D4128 003D1068  48 00 00 3C */	b lbl_803D4164
lbl_803D412C:
/* 803D412C 003D106C  C0 02 17 A0 */	lfs f0, lbl_8051FB00@sda21(r2)
/* 803D4130 003D1070  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803D4134 003D1074  40 80 00 10 */	bge lbl_803D4144
/* 803D4138 003D1078  38 00 00 01 */	li r0, 1
/* 803D413C 003D107C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 803D4140 003D1080  48 00 00 24 */	b lbl_803D4164
lbl_803D4144:
/* 803D4144 003D1084  C0 02 17 A4 */	lfs f0, lbl_8051FB04@sda21(r2)
/* 803D4148 003D1088  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803D414C 003D108C  40 80 00 10 */	bge lbl_803D415C
/* 803D4150 003D1090  38 00 00 02 */	li r0, 2
/* 803D4154 003D1094  90 1F 00 14 */	stw r0, 0x14(r31)
/* 803D4158 003D1098  48 00 00 0C */	b lbl_803D4164
lbl_803D415C:
/* 803D415C 003D109C  38 00 00 03 */	li r0, 3
/* 803D4160 003D10A0  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_803D4164:
/* 803D4164 003D10A4  7F FE FB 78 */	mr r30, r31
/* 803D4168 003D10A8  7F FD FB 78 */	mr r29, r31
/* 803D416C 003D10AC  3B 80 00 00 */	li r28, 0
lbl_803D4170:
/* 803D4170 003D10B0  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 803D4174 003D10B4  38 80 00 FF */	li r4, 0xff
/* 803D4178 003D10B8  81 83 00 00 */	lwz r12, 0(r3)
/* 803D417C 003D10BC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 803D4180 003D10C0  7D 89 03 A6 */	mtctr r12
/* 803D4184 003D10C4  4E 80 04 21 */	bctrl 
/* 803D4188 003D10C8  38 7D 00 30 */	addi r3, r29, 0x30
/* 803D418C 003D10CC  4B FF CC 29 */	bl stop__Q23ebi19E2DCallBack_AnmBaseFv
/* 803D4190 003D10D0  38 7D 01 20 */	addi r3, r29, 0x120
/* 803D4194 003D10D4  4B FF CC 21 */	bl stop__Q23ebi19E2DCallBack_AnmBaseFv
/* 803D4198 003D10D8  3B 9C 00 01 */	addi r28, r28, 1
/* 803D419C 003D10DC  3B BD 00 3C */	addi r29, r29, 0x3c
/* 803D41A0 003D10E0  2C 1C 00 04 */	cmpwi r28, 4
/* 803D41A4 003D10E4  3B DE 00 04 */	addi r30, r30, 4
/* 803D41A8 003D10E8  41 80 FF C8 */	blt lbl_803D4170
/* 803D41AC 003D10EC  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 803D41B0 003D10F0  38 80 00 00 */	li r4, 0
/* 803D41B4 003D10F4  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 803D41B8 003D10F8  38 A0 00 01 */	li r5, 1
/* 803D41BC 003D10FC  1C C0 00 3C */	mulli r6, r0, 0x3c
/* 803D41C0 003D1100  C0 22 17 A8 */	lfs f1, lbl_8051FB08@sda21(r2)
/* 803D41C4 003D1104  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 803D41C8 003D1108  38 66 00 30 */	addi r3, r6, 0x30
/* 803D41CC 003D110C  EC 21 00 32 */	fmuls f1, f1, f0
/* 803D41D0 003D1110  7C 7F 1A 14 */	add r3, r31, r3
/* 803D41D4 003D1114  4B FF C9 C5 */	bl play__Q23ebi19E2DCallBack_AnmBaseFf10J3DAnmAttrb
/* 803D41D8 003D1118  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 803D41DC 003D111C  38 80 00 00 */	li r4, 0
/* 803D41E0 003D1120  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 803D41E4 003D1124  38 A0 00 01 */	li r5, 1
/* 803D41E8 003D1128  1C C0 00 3C */	mulli r6, r0, 0x3c
/* 803D41EC 003D112C  C0 22 17 A8 */	lfs f1, lbl_8051FB08@sda21(r2)
/* 803D41F0 003D1130  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 803D41F4 003D1134  38 66 01 20 */	addi r3, r6, 0x120
/* 803D41F8 003D1138  EC 21 00 32 */	fmuls f1, f1, f0
/* 803D41FC 003D113C  7C 7F 1A 14 */	add r3, r31, r3
/* 803D4200 003D1140  4B FF C9 99 */	bl play__Q23ebi19E2DCallBack_AnmBaseFf10J3DAnmAttrb
/* 803D4204 003D1144  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 803D4208 003D1148  54 00 10 3A */	slwi r0, r0, 2
/* 803D420C 003D114C  7C 7F 02 14 */	add r3, r31, r0
/* 803D4210 003D1150  80 63 00 18 */	lwz r3, 0x18(r3)
/* 803D4214 003D1154  4B C6 C9 19 */	bl animation__9J2DScreenFv
/* 803D4218 003D1158  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D421C 003D115C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803D4220 003D1160  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803D4224 003D1164  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803D4228 003D1168  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803D422C 003D116C  7C 08 03 A6 */	mtlr r0
/* 803D4230 003D1170  38 21 00 20 */	addi r1, r1, 0x20
/* 803D4234 003D1174  4E 80 00 20 */	blr 

.global getName__Q33ebi6Screen11TPressStartFv
getName__Q33ebi6Screen11TPressStartFv:
/* 803D4238 003D1178  3C 60 80 49 */	lis r3, lbl_80496ADC@ha
/* 803D423C 003D117C  38 63 6A DC */	addi r3, r3, lbl_80496ADC@l
/* 803D4240 003D1180  4E 80 00 20 */	blr 
