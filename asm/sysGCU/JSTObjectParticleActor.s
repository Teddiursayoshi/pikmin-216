.include "macros.inc"
.section .ctors, "wa"  # 0x80472F00 - 0x804732C0
lbl_constructor:
	.4byte __sinit_JSTObjectParticleActor_cpp

.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
lbl_8049BA78:
	.asciz "tutorial"
.balign 4
lbl_8049BA84:
	.asciz "yakushima"
.balign 4
lbl_8049BA90:
	.asciz "string:%u,%s\n"

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
govNAN___Q24Game5P2JST:
	.float 0.0
	.float 0.0
	.float 0.0
.global __vt__Q34Game5P2JST19ObjectParticleActor
__vt__Q34Game5P2JST19ObjectParticleActor:
	.4byte 0
	.4byte 0
	.4byte __dt__Q34Game5P2JST19ObjectParticleActorFv
	.4byte JSGFGetType__Q26JStage6TActorCFv
	.4byte JSGGetName__Q34Game5P2JST11ObjectActorCFv
	.4byte JSGUpdate__Q26JStage7TObjectFv
	.4byte JSGGetFlag__Q34Game5P2JST11ObjectActorCFv
	.4byte JSGSetFlag__Q34Game5P2JST11ObjectActorFUl
	.4byte JSGGetData__Q26JStage7TObjectCFUlPvUl
	.4byte JSGSetData__Q34Game5P2JST11ObjectActorFUlPCvUl
	.4byte JSGGetParent__Q26JStage7TObjectCFPPQ26JStage7TObjectPUl
	.4byte JSGSetParent__Q26JStage7TObjectFPQ26JStage7TObjectUl
	.4byte JSGSetRelation__Q26JStage7TObjectFbPQ26JStage7TObjectUl
	.4byte JSGFindNodeID__Q34Game5P2JST11ObjectActorCFPCc
	.4byte JSGGetNodeTransformation__Q34Game5P2JST11ObjectActorCFUlPA4_f
	.4byte JSGGetTranslation__Q34Game5P2JST19ObjectParticleActorCFP3Vec
	.4byte JSGSetTranslation__Q34Game5P2JST19ObjectParticleActorFRC3Vec
	.4byte JSGGetScaling__Q34Game5P2JST11ObjectActorCFP3Vec
	.4byte JSGSetScaling__Q34Game5P2JST11ObjectActorFRC3Vec
	.4byte JSGGetRotation__Q34Game5P2JST11ObjectActorCFP3Vec
	.4byte JSGSetRotation__Q34Game5P2JST11ObjectActorFRC3Vec
	.4byte JSGGetShape__Q34Game5P2JST11ObjectActorCFv
	.4byte JSGSetShape__Q34Game5P2JST19ObjectParticleActorFUl
	.4byte JSGGetAnimation__Q34Game5P2JST11ObjectActorCFv
	.4byte JSGSetAnimation__Q34Game5P2JST11ObjectActorFUl
	.4byte JSGGetAnimationFrame__Q34Game5P2JST11ObjectActorCFv
	.4byte JSGSetAnimationFrame__Q34Game5P2JST11ObjectActorFf
	.4byte JSGGetAnimationFrameMax__Q34Game5P2JST11ObjectActorCFv
	.4byte JSGGetAnimationTransition__Q26JStage6TActorCFv
	.4byte JSGSetAnimationTransition__Q26JStage6TActorFf
	.4byte JSGGetTextureAnimation__Q26JStage6TActorCFv
	.4byte JSGSetTextureAnimation__Q26JStage6TActorFUl
	.4byte JSGGetTextureAnimationFrame__Q26JStage6TActorCFv
	.4byte JSGSetTextureAnimationFrame__Q26JStage6TActorFf
	.4byte JSGGetTextureAnimationFrameMax__Q26JStage6TActorCFv
	.4byte 0
	.4byte 0
	.4byte "@4@reset__Q34Game5P2JST19ObjectParticleActorFv"
	.4byte "@4@update__Q34Game5P2JST19ObjectParticleActorFv"
	.4byte "@4@start__Q34Game5P2JST11ObjectActorFv"
	.4byte "@4@stop__Q34Game5P2JST19ObjectParticleActorFv"
	.4byte "@4@parseUserData___Q34Game5P2JST19ObjectParticleActorFUlPCv"
	.4byte reset__Q34Game5P2JST19ObjectParticleActorFv
	.4byte update__Q34Game5P2JST19ObjectParticleActorFv
	.4byte entry__Q34Game5P2JST11ObjectActorFv
	.4byte start__Q34Game5P2JST11ObjectActorFv
	.4byte stop__Q34Game5P2JST19ObjectParticleActorFv
	.4byte setShape__Q34Game5P2JST11ObjectActorFv
	.4byte setAnim__Q34Game5P2JST11ObjectActorFv
	.4byte mountArchive__Q34Game5P2JST11ObjectActorFv
	.4byte parseUserData___Q34Game5P2JST19ObjectParticleActorFUlPCv
	.4byte 0
	.4byte 0
	.4byte "@112@__dt__Q34Game5P2JST19ObjectParticleActorFv"
	.4byte execute__18JPAEmitterCallBackFP14JPABaseEmitter
	.4byte "@112@executeAfter__Q34Game5P2JST19ObjectParticleActorFP14JPABaseEmitter"
	.4byte draw__18JPAEmitterCallBackFP14JPABaseEmitter
	.4byte drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter
	.4byte executeAfter__Q34Game5P2JST19ObjectParticleActorFP14JPABaseEmitter

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
gu32NAN___Q24Game5P2JST:
	.skip 0x4
gfNAN___Q24Game5P2JST:
	.skip 0x4

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
lbl_80520B98:
	.asciz "forest"
.balign 4
lbl_80520BA0:
	.asciz "last"
.balign 4
lbl_80520BA8:
	.float 0.0
.balign 4
lbl_80520BAC:
	.asciz "kill"
.balign 4
lbl_80520BB4:
	.asciz "@ground"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q34Game5P2JST19ObjectParticleActorFPCcPQ24Game11MoviePlayerPQ24Game8Creature
__ct__Q34Game5P2JST19ObjectParticleActorFPCcPQ24Game11MoviePlayerPQ24Game8Creature:
/* 804544D4 00451414  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804544D8 00451418  7C 08 02 A6 */	mflr r0
/* 804544DC 0045141C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804544E0 00451420  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804544E4 00451424  7C 7F 1B 78 */	mr r31, r3
/* 804544E8 00451428  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804544EC 0045142C  7C DE 33 78 */	mr r30, r6
/* 804544F0 00451430  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804544F4 00451434  7C 9D 23 78 */	mr r29, r4
/* 804544F8 00451438  4B FD A4 69 */	bl __ct__Q34Game5P2JST11ObjectActorFPCcPQ24Game11MoviePlayer
/* 804544FC 0045143C  3C 80 80 4A */	lis r4, __vt__18JPAEmitterCallBack@ha
/* 80454500 00451440  3C 60 80 4F */	lis r3, __vt__Q34Game5P2JST19ObjectParticleActor@ha
/* 80454504 00451444  38 84 E2 7C */	addi r4, r4, __vt__18JPAEmitterCallBack@l
/* 80454508 00451448  38 00 00 00 */	li r0, 0
/* 8045450C 0045144C  90 9F 00 70 */	stw r4, 0x70(r31)
/* 80454510 00451450  38 83 D7 DC */	addi r4, r3, __vt__Q34Game5P2JST19ObjectParticleActor@l
/* 80454514 00451454  38 A4 00 8C */	addi r5, r4, 0x8c
/* 80454518 00451458  7F E3 FB 78 */	mr r3, r31
/* 8045451C 0045145C  90 9F 00 00 */	stw r4, 0(r31)
/* 80454520 00451460  38 84 00 CC */	addi r4, r4, 0xcc
/* 80454524 00451464  90 BF 00 04 */	stw r5, 4(r31)
/* 80454528 00451468  90 9F 00 70 */	stw r4, 0x70(r31)
/* 8045452C 0045146C  98 1F 00 B8 */	stb r0, 0xb8(r31)
/* 80454530 00451470  98 1F 00 B9 */	stb r0, 0xb9(r31)
/* 80454534 00451474  93 DF 00 80 */	stw r30, 0x80(r31)
/* 80454538 00451478  81 9F 00 00 */	lwz r12, 0(r31)
/* 8045453C 0045147C  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 80454540 00451480  7D 89 03 A6 */	mtctr r12
/* 80454544 00451484  4E 80 04 21 */	bctrl 
/* 80454548 00451488  38 00 00 00 */	li r0, 0
/* 8045454C 0045148C  7F A3 EB 78 */	mr r3, r29
/* 80454550 00451490  98 1F 00 B9 */	stb r0, 0xb9(r31)
/* 80454554 00451494  4B C7 63 BD */	bl strlen
/* 80454558 00451498  34 03 FF FF */	addic. r0, r3, -1
/* 8045455C 0045149C  7F C3 EA 14 */	add r30, r3, r29
/* 80454560 004514A0  7C 09 03 A6 */	mtctr r0
/* 80454564 004514A4  3B DE FF FF */	addi r30, r30, -1
/* 80454568 004514A8  40 81 00 20 */	ble lbl_80454588
lbl_8045456C:
/* 8045456C 004514AC  88 1E 00 00 */	lbz r0, 0(r30)
/* 80454570 004514B0  2C 00 00 40 */	cmpwi r0, 0x40
/* 80454574 004514B4  40 82 00 0C */	bne lbl_80454580
/* 80454578 004514B8  3B DE 00 01 */	addi r30, r30, 1
/* 8045457C 004514BC  48 00 00 0C */	b lbl_80454588
lbl_80454580:
/* 80454580 004514C0  3B DE FF FF */	addi r30, r30, -1
/* 80454584 004514C4  42 00 FF E8 */	bdnz lbl_8045456C
lbl_80454588:
/* 80454588 004514C8  3C 60 80 4A */	lis r3, lbl_8049BA78@ha
/* 8045458C 004514CC  7F C4 F3 78 */	mr r4, r30
/* 80454590 004514D0  38 63 BA 78 */	addi r3, r3, lbl_8049BA78@l
/* 80454594 004514D4  4B C7 61 2D */	bl strcmp
/* 80454598 004514D8  2C 03 00 00 */	cmpwi r3, 0
/* 8045459C 004514DC  40 82 00 14 */	bne lbl_804545B0
/* 804545A0 004514E0  88 1F 00 B9 */	lbz r0, 0xb9(r31)
/* 804545A4 004514E4  60 00 00 0E */	ori r0, r0, 0xe
/* 804545A8 004514E8  98 1F 00 B9 */	stb r0, 0xb9(r31)
/* 804545AC 004514EC  48 00 00 70 */	b lbl_8045461C
lbl_804545B0:
/* 804545B0 004514F0  7F C4 F3 78 */	mr r4, r30
/* 804545B4 004514F4  38 62 28 38 */	addi r3, r2, lbl_80520B98@sda21
/* 804545B8 004514F8  4B C7 61 09 */	bl strcmp
/* 804545BC 004514FC  2C 03 00 00 */	cmpwi r3, 0
/* 804545C0 00451500  40 82 00 14 */	bne lbl_804545D4
/* 804545C4 00451504  88 1F 00 B9 */	lbz r0, 0xb9(r31)
/* 804545C8 00451508  60 00 00 0D */	ori r0, r0, 0xd
/* 804545CC 0045150C  98 1F 00 B9 */	stb r0, 0xb9(r31)
/* 804545D0 00451510  48 00 00 4C */	b lbl_8045461C
lbl_804545D4:
/* 804545D4 00451514  3C 60 80 4A */	lis r3, lbl_8049BA84@ha
/* 804545D8 00451518  7F C4 F3 78 */	mr r4, r30
/* 804545DC 0045151C  38 63 BA 84 */	addi r3, r3, lbl_8049BA84@l
/* 804545E0 00451520  4B C7 60 E1 */	bl strcmp
/* 804545E4 00451524  2C 03 00 00 */	cmpwi r3, 0
/* 804545E8 00451528  40 82 00 14 */	bne lbl_804545FC
/* 804545EC 0045152C  88 1F 00 B9 */	lbz r0, 0xb9(r31)
/* 804545F0 00451530  60 00 00 0B */	ori r0, r0, 0xb
/* 804545F4 00451534  98 1F 00 B9 */	stb r0, 0xb9(r31)
/* 804545F8 00451538  48 00 00 24 */	b lbl_8045461C
lbl_804545FC:
/* 804545FC 0045153C  7F C4 F3 78 */	mr r4, r30
/* 80454600 00451540  38 62 28 40 */	addi r3, r2, lbl_80520BA0@sda21
/* 80454604 00451544  4B C7 60 BD */	bl strcmp
/* 80454608 00451548  2C 03 00 00 */	cmpwi r3, 0
/* 8045460C 0045154C  40 82 00 10 */	bne lbl_8045461C
/* 80454610 00451550  88 1F 00 B9 */	lbz r0, 0xb9(r31)
/* 80454614 00451554  60 00 00 07 */	ori r0, r0, 7
/* 80454618 00451558  98 1F 00 B9 */	stb r0, 0xb9(r31)
lbl_8045461C:
/* 8045461C 0045155C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80454620 00451560  7F E3 FB 78 */	mr r3, r31
/* 80454624 00451564  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80454628 00451568  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8045462C 0045156C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80454630 00451570  7C 08 03 A6 */	mtlr r0
/* 80454634 00451574  38 21 00 20 */	addi r1, r1, 0x20
/* 80454638 00451578  4E 80 00 20 */	blr 

.global reset__Q34Game5P2JST19ObjectParticleActorFv
reset__Q34Game5P2JST19ObjectParticleActorFv:
/* 8045463C 0045157C  38 80 00 00 */	li r4, 0
/* 80454640 00451580  38 00 FF FF */	li r0, -1
/* 80454644 00451584  90 83 00 7C */	stw r4, 0x7c(r3)
/* 80454648 00451588  C0 02 28 48 */	lfs f0, lbl_80520BA8@sda21(r2)
/* 8045464C 0045158C  90 83 00 74 */	stw r4, 0x74(r3)
/* 80454650 00451590  B0 03 00 84 */	sth r0, 0x84(r3)
/* 80454654 00451594  D0 03 00 BC */	stfs f0, 0xbc(r3)
/* 80454658 00451598  D0 03 00 C0 */	stfs f0, 0xc0(r3)
/* 8045465C 0045159C  D0 03 00 C4 */	stfs f0, 0xc4(r3)
/* 80454660 004515A0  4E 80 00 20 */	blr 

.global stop__Q34Game5P2JST19ObjectParticleActorFv
stop__Q34Game5P2JST19ObjectParticleActorFv:
/* 80454664 004515A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80454668 004515A8  7C 08 02 A6 */	mflr r0
/* 8045466C 004515AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80454670 004515B0  48 00 05 A5 */	bl killEmitter__Q34Game5P2JST19ObjectParticleActorFv
/* 80454674 004515B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80454678 004515B8  7C 08 03 A6 */	mtlr r0
/* 8045467C 004515BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80454680 004515C0  4E 80 00 20 */	blr 

.global update__Q34Game5P2JST19ObjectParticleActorFv
update__Q34Game5P2JST19ObjectParticleActorFv:
/* 80454684 004515C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80454688 004515C8  7C 08 02 A6 */	mflr r0
/* 8045468C 004515CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80454690 004515D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80454694 004515D4  7C 7F 1B 78 */	mr r31, r3
/* 80454698 004515D8  88 03 00 B9 */	lbz r0, 0xb9(r3)
/* 8045469C 004515DC  28 00 00 00 */	cmplwi r0, 0
/* 804546A0 004515E0  41 82 00 54 */	beq lbl_804546F4
/* 804546A4 004515E4  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 804546A8 004515E8  28 03 00 00 */	cmplwi r3, 0
/* 804546AC 004515EC  41 82 00 48 */	beq lbl_804546F4
/* 804546B0 004515F0  80 63 00 58 */	lwz r3, 0x58(r3)
/* 804546B4 004515F4  81 83 00 00 */	lwz r12, 0(r3)
/* 804546B8 004515F8  81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 804546BC 004515FC  7D 89 03 A6 */	mtctr r12
/* 804546C0 00451600  4E 80 04 21 */	bctrl 
/* 804546C4 00451604  28 03 00 00 */	cmplwi r3, 0
/* 804546C8 00451608  41 82 00 2C */	beq lbl_804546F4
/* 804546CC 0045160C  80 03 00 48 */	lwz r0, 0x48(r3)
/* 804546D0 00451610  38 60 00 01 */	li r3, 1
/* 804546D4 00451614  88 9F 00 B9 */	lbz r4, 0xb9(r31)
/* 804546D8 00451618  7C 60 00 30 */	slw r0, r3, r0
/* 804546DC 0045161C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804546E0 00451620  7C 80 00 39 */	and. r0, r4, r0
/* 804546E4 00451624  41 82 00 10 */	beq lbl_804546F4
/* 804546E8 00451628  38 00 00 00 */	li r0, 0
/* 804546EC 0045162C  98 1F 00 B8 */	stb r0, 0xb8(r31)
/* 804546F0 00451630  48 00 00 40 */	b lbl_80454730
lbl_804546F4:
/* 804546F4 00451634  88 1F 00 B8 */	lbz r0, 0xb8(r31)
/* 804546F8 00451638  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804546FC 0045163C  41 82 00 18 */	beq lbl_80454714
/* 80454700 00451640  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 80454704 00451644  28 00 00 00 */	cmplwi r0, 0
/* 80454708 00451648  40 82 00 0C */	bne lbl_80454714
/* 8045470C 0045164C  7F E3 FB 78 */	mr r3, r31
/* 80454710 00451650  48 00 02 21 */	bl emit__Q34Game5P2JST19ObjectParticleActorFv
lbl_80454714:
/* 80454714 00451654  88 1F 00 B8 */	lbz r0, 0xb8(r31)
/* 80454718 00451658  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8045471C 0045165C  41 82 00 0C */	beq lbl_80454728
/* 80454720 00451660  7F E3 FB 78 */	mr r3, r31
/* 80454724 00451664  48 00 04 F1 */	bl killEmitter__Q34Game5P2JST19ObjectParticleActorFv
lbl_80454728:
/* 80454728 00451668  38 00 00 00 */	li r0, 0
/* 8045472C 0045166C  98 1F 00 B8 */	stb r0, 0xb8(r31)
lbl_80454730:
/* 80454730 00451670  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80454734 00451674  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80454738 00451678  7C 08 03 A6 */	mtlr r0
/* 8045473C 0045167C  38 21 00 10 */	addi r1, r1, 0x10
/* 80454740 00451680  4E 80 00 20 */	blr 

.global JSGSetShape__Q34Game5P2JST19ObjectParticleActorFUl
JSGSetShape__Q34Game5P2JST19ObjectParticleActorFUl:
/* 80454744 00451684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80454748 00451688  7C 08 02 A6 */	mflr r0
/* 8045474C 0045168C  54 85 04 3E */	clrlwi r5, r4, 0x10
/* 80454750 00451690  90 01 00 14 */	stw r0, 0x14(r1)
/* 80454754 00451694  54 80 46 3E */	srwi r0, r4, 0x18
/* 80454758 00451698  90 A3 00 74 */	stw r5, 0x74(r3)
/* 8045475C 0045169C  98 03 00 78 */	stb r0, 0x78(r3)
/* 80454760 004516A0  88 03 00 B8 */	lbz r0, 0xb8(r3)
/* 80454764 004516A4  60 00 00 01 */	ori r0, r0, 1
/* 80454768 004516A8  98 03 00 B8 */	stb r0, 0xb8(r3)
/* 8045476C 004516AC  48 00 04 A9 */	bl killEmitter__Q34Game5P2JST19ObjectParticleActorFv
/* 80454770 004516B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80454774 004516B4  7C 08 03 A6 */	mtlr r0
/* 80454778 004516B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8045477C 004516BC  4E 80 00 20 */	blr 

.global parseUserData___Q34Game5P2JST19ObjectParticleActorFUlPCv
parseUserData___Q34Game5P2JST19ObjectParticleActorFUlPCv:
/* 80454780 004516C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80454784 004516C4  7C 08 02 A6 */	mflr r0
/* 80454788 004516C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8045478C 004516CC  38 81 00 0C */	addi r4, r1, 0xc
/* 80454790 004516D0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80454794 004516D4  7C 7F 1B 78 */	mr r31, r3
/* 80454798 004516D8  38 61 00 08 */	addi r3, r1, 8
/* 8045479C 004516DC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804547A0 004516E0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 804547A4 004516E4  93 81 00 20 */	stw r28, 0x20(r1)
/* 804547A8 004516E8  90 A1 00 08 */	stw r5, 8(r1)
/* 804547AC 004516EC  4B BB 42 55 */	bl getData__Q47JStudio3stb4data22TParse_TParagraph_dataCFPQ57JStudio3stb4data22TParse_TParagraph_data5TData
/* 804547B0 004516F0  88 61 00 0C */	lbz r3, 0xc(r1)
/* 804547B4 004516F4  28 03 00 00 */	cmplwi r3, 0
/* 804547B8 004516F8  41 82 01 20 */	beq lbl_804548D8
/* 804547BC 004516FC  80 81 00 18 */	lwz r4, 0x18(r1)
/* 804547C0 00451700  38 00 00 00 */	li r0, 0
/* 804547C4 00451704  28 04 00 00 */	cmplwi r4, 0
/* 804547C8 00451708  41 82 00 10 */	beq lbl_804547D8
/* 804547CC 0045170C  28 03 00 60 */	cmplwi r3, 0x60
/* 804547D0 00451710  40 82 00 08 */	bne lbl_804547D8
/* 804547D4 00451714  38 00 00 01 */	li r0, 1
lbl_804547D8:
/* 804547D8 00451718  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 804547DC 0045171C  41 82 00 FC */	beq lbl_804548D8
/* 804547E0 00451720  38 00 FF FF */	li r0, -1
/* 804547E4 00451724  3C 60 80 4A */	lis r3, lbl_8049BA90@ha
/* 804547E8 00451728  B0 1F 00 84 */	sth r0, 0x84(r31)
/* 804547EC 0045172C  7C 9D 23 78 */	mr r29, r4
/* 804547F0 00451730  3B C3 BA 90 */	addi r30, r3, lbl_8049BA90@l
/* 804547F4 00451734  3B 80 00 00 */	li r28, 0
/* 804547F8 00451738  48 00 00 D4 */	b lbl_804548CC
lbl_804547FC:
/* 804547FC 0045173C  7F C3 F3 78 */	mr r3, r30
/* 80454800 00451740  7F 84 E3 78 */	mr r4, r28
/* 80454804 00451744  7F A5 EB 78 */	mr r5, r29
/* 80454808 00451748  4C C6 31 82 */	crclr 6
/* 8045480C 0045174C  4B C9 8E E1 */	bl OSReport
/* 80454810 00451750  28 1C 00 00 */	cmplwi r28, 0
/* 80454814 00451754  40 82 00 40 */	bne lbl_80454854
/* 80454818 00451758  7F A3 EB 78 */	mr r3, r29
/* 8045481C 0045175C  38 82 28 4C */	addi r4, r2, lbl_80520BAC@sda21
/* 80454820 00451760  4B C7 5E A1 */	bl strcmp
/* 80454824 00451764  2C 03 00 00 */	cmpwi r3, 0
/* 80454828 00451768  40 82 00 14 */	bne lbl_8045483C
/* 8045482C 0045176C  88 1F 00 B8 */	lbz r0, 0xb8(r31)
/* 80454830 00451770  60 00 00 02 */	ori r0, r0, 2
/* 80454834 00451774  98 1F 00 B8 */	stb r0, 0xb8(r31)
/* 80454838 00451778  48 00 00 80 */	b lbl_804548B8
lbl_8045483C:
/* 8045483C 0045177C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80454840 00451780  7F A4 EB 78 */	mr r4, r29
/* 80454844 00451784  80 63 01 CC */	lwz r3, 0x1cc(r3)
/* 80454848 00451788  4B FD CB 71 */	bl findCreature__Q34Game5P2JST12ObjectSystemCFPCc
/* 8045484C 0045178C  90 7F 00 80 */	stw r3, 0x80(r31)
/* 80454850 00451790  48 00 00 68 */	b lbl_804548B8
lbl_80454854:
/* 80454854 00451794  28 1C 00 01 */	cmplwi r28, 1
/* 80454858 00451798  40 82 00 60 */	bne lbl_804548B8
/* 8045485C 0045179C  7F A3 EB 78 */	mr r3, r29
/* 80454860 004517A0  38 82 28 54 */	addi r4, r2, lbl_80520BB4@sda21
/* 80454864 004517A4  4B C7 5E 5D */	bl strcmp
/* 80454868 004517A8  2C 03 00 00 */	cmpwi r3, 0
/* 8045486C 004517AC  40 82 00 10 */	bne lbl_8045487C
/* 80454870 004517B0  38 00 FF FE */	li r0, -2
/* 80454874 004517B4  B0 1F 00 84 */	sth r0, 0x84(r31)
/* 80454878 004517B8  48 00 00 40 */	b lbl_804548B8
lbl_8045487C:
/* 8045487C 004517BC  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 80454880 004517C0  28 03 00 00 */	cmplwi r3, 0
/* 80454884 004517C4  41 82 00 34 */	beq lbl_804548B8
/* 80454888 004517C8  80 63 01 74 */	lwz r3, 0x174(r3)
/* 8045488C 004517CC  28 03 00 00 */	cmplwi r3, 0
/* 80454890 004517D0  41 82 00 28 */	beq lbl_804548B8
/* 80454894 004517D4  7F A4 EB 78 */	mr r4, r29
/* 80454898 004517D8  4B FE A7 4D */	bl getJoint__Q28SysShape5ModelFPc
/* 8045489C 004517DC  28 03 00 00 */	cmplwi r3, 0
/* 804548A0 004517E0  41 82 00 10 */	beq lbl_804548B0
/* 804548A4 004517E4  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 804548A8 004517E8  B0 1F 00 84 */	sth r0, 0x84(r31)
/* 804548AC 004517EC  48 00 00 0C */	b lbl_804548B8
lbl_804548B0:
/* 804548B0 004517F0  38 00 FF FF */	li r0, -1
/* 804548B4 004517F4  B0 1F 00 84 */	sth r0, 0x84(r31)
lbl_804548B8:
/* 804548B8 004517F8  7F A3 EB 78 */	mr r3, r29
/* 804548BC 004517FC  38 80 00 00 */	li r4, 0
/* 804548C0 00451800  3B 9C 00 01 */	addi r28, r28, 1
/* 804548C4 00451804  4B C7 5D 8D */	bl strchr
/* 804548C8 00451808  3B A3 00 01 */	addi r29, r3, 1
lbl_804548CC:
/* 804548CC 0045180C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804548D0 00451810  7C 1C 00 40 */	cmplw r28, r0
/* 804548D4 00451814  41 80 FF 28 */	blt lbl_804547FC
lbl_804548D8:
/* 804548D8 00451818  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804548DC 0045181C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804548E0 00451820  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804548E4 00451824  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 804548E8 00451828  83 81 00 20 */	lwz r28, 0x20(r1)
/* 804548EC 0045182C  7C 08 03 A6 */	mtlr r0
/* 804548F0 00451830  38 21 00 30 */	addi r1, r1, 0x30
/* 804548F4 00451834  4E 80 00 20 */	blr 

.global JSGSetTranslation__Q34Game5P2JST19ObjectParticleActorFRC3Vec
JSGSetTranslation__Q34Game5P2JST19ObjectParticleActorFRC3Vec:
/* 804548F8 00451838  C0 04 00 00 */	lfs f0, 0(r4)
/* 804548FC 0045183C  C0 24 00 04 */	lfs f1, 4(r4)
/* 80454900 00451840  D0 03 00 BC */	stfs f0, 0xbc(r3)
/* 80454904 00451844  C0 04 00 08 */	lfs f0, 8(r4)
/* 80454908 00451848  D0 23 00 C0 */	stfs f1, 0xc0(r3)
/* 8045490C 0045184C  D0 03 00 C4 */	stfs f0, 0xc4(r3)
/* 80454910 00451850  4E 80 00 20 */	blr 

.global JSGGetTranslation__Q34Game5P2JST19ObjectParticleActorCFP3Vec
JSGGetTranslation__Q34Game5P2JST19ObjectParticleActorCFP3Vec:
/* 80454914 00451854  C0 03 00 BC */	lfs f0, 0xbc(r3)
/* 80454918 00451858  C0 23 00 C0 */	lfs f1, 0xc0(r3)
/* 8045491C 0045185C  D0 04 00 00 */	stfs f0, 0(r4)
/* 80454920 00451860  C0 03 00 C4 */	lfs f0, 0xc4(r3)
/* 80454924 00451864  D0 24 00 04 */	stfs f1, 4(r4)
/* 80454928 00451868  D0 04 00 08 */	stfs f0, 8(r4)
/* 8045492C 0045186C  4E 80 00 20 */	blr 

.global emit__Q34Game5P2JST19ObjectParticleActorFv
emit__Q34Game5P2JST19ObjectParticleActorFv:
/* 80454930 00451870  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80454934 00451874  7C 08 02 A6 */	mflr r0
/* 80454938 00451878  90 01 00 44 */	stw r0, 0x44(r1)
/* 8045493C 0045187C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80454940 00451880  7C 7F 1B 78 */	mr r31, r3
/* 80454944 00451884  80 03 00 7C */	lwz r0, 0x7c(r3)
/* 80454948 00451888  28 00 00 00 */	cmplwi r0, 0
/* 8045494C 0045188C  40 82 01 C0 */	bne lbl_80454B0C
/* 80454950 00451890  C0 22 28 48 */	lfs f1, lbl_80520BA8@sda21(r2)
/* 80454954 00451894  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80454958 00451898  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8045495C 0045189C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80454960 004518A0  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 80454964 004518A4  28 04 00 00 */	cmplwi r4, 0
/* 80454968 004518A8  41 82 00 F8 */	beq lbl_80454A60
/* 8045496C 004518AC  81 84 00 00 */	lwz r12, 0(r4)
/* 80454970 004518B0  38 61 00 08 */	addi r3, r1, 8
/* 80454974 004518B4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80454978 004518B8  7D 89 03 A6 */	mtctr r12
/* 8045497C 004518BC  4E 80 04 21 */	bctrl 
/* 80454980 004518C0  C0 41 00 08 */	lfs f2, 8(r1)
/* 80454984 004518C4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80454988 004518C8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8045498C 004518CC  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80454990 004518D0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80454994 004518D4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80454998 004518D8  80 BF 00 80 */	lwz r5, 0x80(r31)
/* 8045499C 004518DC  80 85 01 74 */	lwz r4, 0x174(r5)
/* 804549A0 004518E0  28 04 00 00 */	cmplwi r4, 0
/* 804549A4 004518E4  41 82 00 44 */	beq lbl_804549E8
/* 804549A8 004518E8  A8 7F 00 84 */	lha r3, 0x84(r31)
/* 804549AC 004518EC  7C 60 07 35 */	extsh. r0, r3
/* 804549B0 004518F0  41 80 00 38 */	blt lbl_804549E8
/* 804549B4 004518F4  1C 03 00 3C */	mulli r0, r3, 0x3c
/* 804549B8 004518F8  80 64 00 10 */	lwz r3, 0x10(r4)
/* 804549BC 004518FC  7C 63 02 14 */	add r3, r3, r0
/* 804549C0 00451900  4B FD 4E E1 */	bl getWorldMatrix__Q28SysShape5JointFv
/* 804549C4 00451904  38 9F 00 88 */	addi r4, r31, 0x88
/* 804549C8 00451908  4B C9 59 05 */	bl PSMTXCopy
/* 804549CC 0045190C  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 804549D0 00451910  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804549D4 00451914  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 804549D8 00451918  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804549DC 0045191C  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 804549E0 00451920  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804549E4 00451924  48 00 00 C4 */	b lbl_80454AA8
lbl_804549E8:
/* 804549E8 00451928  A8 1F 00 84 */	lha r0, 0x84(r31)
/* 804549EC 0045192C  2C 00 FF FF */	cmpwi r0, -1
/* 804549F0 00451930  40 82 00 2C */	bne lbl_80454A1C
/* 804549F4 00451934  38 65 01 38 */	addi r3, r5, 0x138
/* 804549F8 00451938  38 9F 00 88 */	addi r4, r31, 0x88
/* 804549FC 0045193C  4B C9 58 D1 */	bl PSMTXCopy
/* 80454A00 00451940  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80454A04 00451944  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80454A08 00451948  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80454A0C 0045194C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80454A10 00451950  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80454A14 00451954  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80454A18 00451958  48 00 00 90 */	b lbl_80454AA8
lbl_80454A1C:
/* 80454A1C 0045195C  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80454A20 00451960  38 7F 00 88 */	addi r3, r31, 0x88
/* 80454A24 00451964  80 CD 9B 54 */	lwz r6, moviePlayer__4Game@sda21(r13)
/* 80454A28 00451968  38 81 00 2C */	addi r4, r1, 0x2c
/* 80454A2C 0045196C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80454A30 00451970  38 A1 00 20 */	addi r5, r1, 0x20
/* 80454A34 00451974  C0 02 28 48 */	lfs f0, lbl_80520BA8@sda21(r2)
/* 80454A38 00451978  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80454A3C 0045197C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80454A40 00451980  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80454A44 00451984  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80454A48 00451988  C0 26 01 C8 */	lfs f1, 0x1c8(r6)
/* 80454A4C 0045198C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80454A50 00451990  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80454A54 00451994  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80454A58 00451998  4B FD 3E 31 */	bl "makeTR__7MatrixfFR10Vector3<f>R10Vector3<f>"
/* 80454A5C 0045199C  48 00 00 4C */	b lbl_80454AA8
lbl_80454A60:
/* 80454A60 004519A0  A8 1F 00 84 */	lha r0, 0x84(r31)
/* 80454A64 004519A4  2C 00 FF FE */	cmpwi r0, -2
/* 80454A68 004519A8  41 82 00 A4 */	beq lbl_80454B0C
/* 80454A6C 004519AC  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80454A70 004519B0  38 7F 00 88 */	addi r3, r31, 0x88
/* 80454A74 004519B4  80 CD 9B 54 */	lwz r6, moviePlayer__4Game@sda21(r13)
/* 80454A78 004519B8  38 81 00 2C */	addi r4, r1, 0x2c
/* 80454A7C 004519BC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80454A80 004519C0  38 A1 00 14 */	addi r5, r1, 0x14
/* 80454A84 004519C4  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80454A88 004519C8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80454A8C 004519CC  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80454A90 004519D0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80454A94 004519D4  C0 06 01 C8 */	lfs f0, 0x1c8(r6)
/* 80454A98 004519D8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80454A9C 004519DC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80454AA0 004519E0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80454AA4 004519E4  4B FD 3D E5 */	bl "makeTR__7MatrixfFR10Vector3<f>R10Vector3<f>"
lbl_80454AA8:
/* 80454AA8 004519E8  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 80454AAC 004519EC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80454AB0 004519F0  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 80454AB4 004519F4  38 E0 00 07 */	li r7, 7
/* 80454AB8 004519F8  88 DF 00 78 */	lbz r6, 0x78(r31)
/* 80454ABC 004519FC  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80454AC0 00451A00  4B F6 6E BD */	bl "createDemo__11ParticleMgrFUsR10Vector3<f>UcUc"
/* 80454AC4 00451A04  90 7F 00 7C */	stw r3, 0x7c(r31)
/* 80454AC8 00451A08  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 80454ACC 00451A0C  28 03 00 00 */	cmplwi r3, 0
/* 80454AD0 00451A10  41 82 00 3C */	beq lbl_80454B0C
/* 80454AD4 00451A14  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80454AD8 00451A18  28 1F 00 00 */	cmplwi r31, 0
/* 80454ADC 00451A1C  7F E5 FB 78 */	mr r5, r31
/* 80454AE0 00451A20  60 00 00 40 */	ori r0, r0, 0x40
/* 80454AE4 00451A24  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80454AE8 00451A28  41 82 00 08 */	beq lbl_80454AF0
/* 80454AEC 00451A2C  38 BF 00 70 */	addi r5, r31, 0x70
lbl_80454AF0:
/* 80454AF0 00451A30  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 80454AF4 00451A34  38 7F 00 88 */	addi r3, r31, 0x88
/* 80454AF8 00451A38  90 A4 00 EC */	stw r5, 0xec(r4)
/* 80454AFC 00451A3C  80 BF 00 7C */	lwz r5, 0x7c(r31)
/* 80454B00 00451A40  38 85 00 68 */	addi r4, r5, 0x68
/* 80454B04 00451A44  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80454B08 00451A48  4B C3 F2 15 */	bl "JPASetRMtxTVecfromMtx__FPA4_CfPA4_fPQ29JGeometry8TVec3<f>"
lbl_80454B0C:
/* 80454B0C 00451A4C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80454B10 00451A50  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80454B14 00451A54  7C 08 03 A6 */	mtlr r0
/* 80454B18 00451A58  38 21 00 40 */	addi r1, r1, 0x40
/* 80454B1C 00451A5C  4E 80 00 20 */	blr 

.global executeAfter__Q34Game5P2JST19ObjectParticleActorFP14JPABaseEmitter
executeAfter__Q34Game5P2JST19ObjectParticleActorFP14JPABaseEmitter:
/* 80454B20 00451A60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80454B24 00451A64  7C 08 02 A6 */	mflr r0
/* 80454B28 00451A68  90 01 00 34 */	stw r0, 0x34(r1)
/* 80454B2C 00451A6C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80454B30 00451A70  7C 9F 23 78 */	mr r31, r4
/* 80454B34 00451A74  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80454B38 00451A78  7C 7E 1B 78 */	mr r30, r3
/* 80454B3C 00451A7C  80 63 00 80 */	lwz r3, 0x80(r3)
/* 80454B40 00451A80  28 03 00 00 */	cmplwi r3, 0
/* 80454B44 00451A84  41 82 00 80 */	beq lbl_80454BC4
/* 80454B48 00451A88  80 A3 01 74 */	lwz r5, 0x174(r3)
/* 80454B4C 00451A8C  28 05 00 00 */	cmplwi r5, 0
/* 80454B50 00451A90  41 82 00 2C */	beq lbl_80454B7C
/* 80454B54 00451A94  A8 9E 00 84 */	lha r4, 0x84(r30)
/* 80454B58 00451A98  7C 80 07 35 */	extsh. r0, r4
/* 80454B5C 00451A9C  41 80 00 20 */	blt lbl_80454B7C
/* 80454B60 00451AA0  1C 04 00 3C */	mulli r0, r4, 0x3c
/* 80454B64 00451AA4  80 65 00 10 */	lwz r3, 0x10(r5)
/* 80454B68 00451AA8  7C 63 02 14 */	add r3, r3, r0
/* 80454B6C 00451AAC  4B FD 4D 35 */	bl getWorldMatrix__Q28SysShape5JointFv
/* 80454B70 00451AB0  38 9E 00 88 */	addi r4, r30, 0x88
/* 80454B74 00451AB4  4B C9 57 59 */	bl PSMTXCopy
/* 80454B78 00451AB8  48 00 00 74 */	b lbl_80454BEC
lbl_80454B7C:
/* 80454B7C 00451ABC  A8 1E 00 84 */	lha r0, 0x84(r30)
/* 80454B80 00451AC0  2C 00 FF FF */	cmpwi r0, -1
/* 80454B84 00451AC4  40 82 00 14 */	bne lbl_80454B98
/* 80454B88 00451AC8  38 63 01 38 */	addi r3, r3, 0x138
/* 80454B8C 00451ACC  38 9E 00 88 */	addi r4, r30, 0x88
/* 80454B90 00451AD0  4B C9 57 3D */	bl PSMTXCopy
/* 80454B94 00451AD4  48 00 00 58 */	b lbl_80454BEC
lbl_80454B98:
/* 80454B98 00451AD8  80 AD 9B 54 */	lwz r5, moviePlayer__4Game@sda21(r13)
/* 80454B9C 00451ADC  38 7E 00 88 */	addi r3, r30, 0x88
/* 80454BA0 00451AE0  C0 02 28 48 */	lfs f0, lbl_80520BA8@sda21(r2)
/* 80454BA4 00451AE4  38 9E 00 BC */	addi r4, r30, 0xbc
/* 80454BA8 00451AE8  C0 25 01 C8 */	lfs f1, 0x1c8(r5)
/* 80454BAC 00451AEC  38 A1 00 14 */	addi r5, r1, 0x14
/* 80454BB0 00451AF0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80454BB4 00451AF4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80454BB8 00451AF8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80454BBC 00451AFC  4B FD 3C CD */	bl "makeTR__7MatrixfFR10Vector3<f>R10Vector3<f>"
/* 80454BC0 00451B00  48 00 00 2C */	b lbl_80454BEC
lbl_80454BC4:
/* 80454BC4 00451B04  80 AD 9B 54 */	lwz r5, moviePlayer__4Game@sda21(r13)
/* 80454BC8 00451B08  38 7E 00 88 */	addi r3, r30, 0x88
/* 80454BCC 00451B0C  C0 02 28 48 */	lfs f0, lbl_80520BA8@sda21(r2)
/* 80454BD0 00451B10  38 9E 00 BC */	addi r4, r30, 0xbc
/* 80454BD4 00451B14  C0 25 01 C8 */	lfs f1, 0x1c8(r5)
/* 80454BD8 00451B18  38 A1 00 08 */	addi r5, r1, 8
/* 80454BDC 00451B1C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80454BE0 00451B20  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80454BE4 00451B24  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80454BE8 00451B28  4B FD 3C A1 */	bl "makeTR__7MatrixfFR10Vector3<f>R10Vector3<f>"
lbl_80454BEC:
/* 80454BEC 00451B2C  38 7E 00 88 */	addi r3, r30, 0x88
/* 80454BF0 00451B30  38 9F 00 68 */	addi r4, r31, 0x68
/* 80454BF4 00451B34  38 BF 00 A4 */	addi r5, r31, 0xa4
/* 80454BF8 00451B38  4B C3 F1 25 */	bl "JPASetRMtxTVecfromMtx__FPA4_CfPA4_fPQ29JGeometry8TVec3<f>"
/* 80454BFC 00451B3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80454C00 00451B40  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80454C04 00451B44  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80454C08 00451B48  7C 08 03 A6 */	mtlr r0
/* 80454C0C 00451B4C  38 21 00 30 */	addi r1, r1, 0x30
/* 80454C10 00451B50  4E 80 00 20 */	blr 

.global killEmitter__Q34Game5P2JST19ObjectParticleActorFv
killEmitter__Q34Game5P2JST19ObjectParticleActorFv:
/* 80454C14 00451B54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80454C18 00451B58  7C 08 02 A6 */	mflr r0
/* 80454C1C 00451B5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80454C20 00451B60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80454C24 00451B64  7C 7F 1B 78 */	mr r31, r3
/* 80454C28 00451B68  80 83 00 7C */	lwz r4, 0x7c(r3)
/* 80454C2C 00451B6C  28 04 00 00 */	cmplwi r4, 0
/* 80454C30 00451B70  41 82 00 14 */	beq lbl_80454C44
/* 80454C34 00451B74  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 80454C38 00451B78  4B F6 6E 75 */	bl fade__11ParticleMgrFP14JPABaseEmitter
/* 80454C3C 00451B7C  38 00 00 00 */	li r0, 0
/* 80454C40 00451B80  90 1F 00 7C */	stw r0, 0x7c(r31)
lbl_80454C44:
/* 80454C44 00451B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80454C48 00451B88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80454C4C 00451B8C  7C 08 03 A6 */	mtlr r0
/* 80454C50 00451B90  38 21 00 10 */	addi r1, r1, 0x10
/* 80454C54 00451B94  4E 80 00 20 */	blr 

.global __dt__Q34Game5P2JST19ObjectParticleActorFv
__dt__Q34Game5P2JST19ObjectParticleActorFv:
/* 80454C58 00451B98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80454C5C 00451B9C  7C 08 02 A6 */	mflr r0
/* 80454C60 00451BA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80454C64 00451BA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80454C68 00451BA8  7C 9F 23 78 */	mr r31, r4
/* 80454C6C 00451BAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80454C70 00451BB0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80454C74 00451BB4  41 82 00 48 */	beq lbl_80454CBC
/* 80454C78 00451BB8  3C 80 80 4F */	lis r4, __vt__Q34Game5P2JST19ObjectParticleActor@ha
/* 80454C7C 00451BBC  38 7E 00 70 */	addi r3, r30, 0x70
/* 80454C80 00451BC0  38 C4 D7 DC */	addi r6, r4, __vt__Q34Game5P2JST19ObjectParticleActor@l
/* 80454C84 00451BC4  38 80 00 00 */	li r4, 0
/* 80454C88 00451BC8  90 DE 00 00 */	stw r6, 0(r30)
/* 80454C8C 00451BCC  38 A6 00 8C */	addi r5, r6, 0x8c
/* 80454C90 00451BD0  38 06 00 CC */	addi r0, r6, 0xcc
/* 80454C94 00451BD4  90 BE 00 04 */	stw r5, 4(r30)
/* 80454C98 00451BD8  90 1E 00 70 */	stw r0, 0x70(r30)
/* 80454C9C 00451BDC  4B C3 B0 01 */	bl __dt__18JPAEmitterCallBackFv
/* 80454CA0 00451BE0  7F C3 F3 78 */	mr r3, r30
/* 80454CA4 00451BE4  38 80 00 00 */	li r4, 0
/* 80454CA8 00451BE8  4B FD 9D 89 */	bl __dt__Q34Game5P2JST11ObjectActorFv
/* 80454CAC 00451BEC  7F E0 07 35 */	extsh. r0, r31
/* 80454CB0 00451BF0  40 81 00 0C */	ble lbl_80454CBC
/* 80454CB4 00451BF4  7F C3 F3 78 */	mr r3, r30
/* 80454CB8 00451BF8  4B BC F3 FD */	bl __dl__FPv
lbl_80454CBC:
/* 80454CBC 00451BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80454CC0 00451C00  7F C3 F3 78 */	mr r3, r30
/* 80454CC4 00451C04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80454CC8 00451C08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80454CCC 00451C0C  7C 08 03 A6 */	mtlr r0
/* 80454CD0 00451C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80454CD4 00451C14  4E 80 00 20 */	blr 

__sinit_JSTObjectParticleActor_cpp: # static initializer
/* 80454CD8 00451C18  3C 80 80 51 */	lis r4, __float_nan@ha
/* 80454CDC 00451C1C  38 00 FF FF */	li r0, -1
/* 80454CE0 00451C20  C0 04 48 B0 */	lfs f0, __float_nan@l(r4)
/* 80454CE4 00451C24  3C 60 80 4F */	lis r3, govNAN___Q24Game5P2JST@ha
/* 80454CE8 00451C28  90 0D 9C 70 */	stw r0, gu32NAN___Q24Game5P2JST@sda21(r13)
/* 80454CEC 00451C2C  D4 03 D7 D0 */	stfsu f0, govNAN___Q24Game5P2JST@l(r3)
/* 80454CF0 00451C30  D0 0D 9C 74 */	stfs f0, gfNAN___Q24Game5P2JST@sda21(r13)
/* 80454CF4 00451C34  D0 03 00 04 */	stfs f0, 4(r3)
/* 80454CF8 00451C38  D0 03 00 08 */	stfs f0, 8(r3)
/* 80454CFC 00451C3C  4E 80 00 20 */	blr 

.global "@4@parseUserData___Q34Game5P2JST19ObjectParticleActorFUlPCv"
"@4@parseUserData___Q34Game5P2JST19ObjectParticleActorFUlPCv":
/* 80454D00 00451C40  38 63 FF FC */	addi r3, r3, -4
/* 80454D04 00451C44  4B FF FA 7C */	b parseUserData___Q34Game5P2JST19ObjectParticleActorFUlPCv

.global "@4@stop__Q34Game5P2JST19ObjectParticleActorFv"
"@4@stop__Q34Game5P2JST19ObjectParticleActorFv":
/* 80454D08 00451C48  38 63 FF FC */	addi r3, r3, -4
/* 80454D0C 00451C4C  4B FF F9 58 */	b stop__Q34Game5P2JST19ObjectParticleActorFv

.global "@4@update__Q34Game5P2JST19ObjectParticleActorFv"
"@4@update__Q34Game5P2JST19ObjectParticleActorFv":
/* 80454D10 00451C50  38 63 FF FC */	addi r3, r3, -4
/* 80454D14 00451C54  4B FF F9 70 */	b update__Q34Game5P2JST19ObjectParticleActorFv

.global "@4@reset__Q34Game5P2JST19ObjectParticleActorFv"
"@4@reset__Q34Game5P2JST19ObjectParticleActorFv":
/* 80454D18 00451C58  38 63 FF FC */	addi r3, r3, -4
/* 80454D1C 00451C5C  4B FF F9 20 */	b reset__Q34Game5P2JST19ObjectParticleActorFv

.global "@112@executeAfter__Q34Game5P2JST19ObjectParticleActorFP14JPABaseEmitter"
"@112@executeAfter__Q34Game5P2JST19ObjectParticleActorFP14JPABaseEmitter":
/* 80454D20 00451C60  38 63 FF 90 */	addi r3, r3, -112
/* 80454D24 00451C64  4B FF FD FC */	b executeAfter__Q34Game5P2JST19ObjectParticleActorFP14JPABaseEmitter

.global "@112@__dt__Q34Game5P2JST19ObjectParticleActorFv"
"@112@__dt__Q34Game5P2JST19ObjectParticleActorFv":
/* 80454D28 00451C68  38 63 FF 90 */	addi r3, r3, -112
/* 80454D2C 00451C6C  4B FF FF 2C */	b __dt__Q34Game5P2JST19ObjectParticleActorFv
