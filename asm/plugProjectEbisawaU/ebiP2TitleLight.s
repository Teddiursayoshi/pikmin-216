.include "macros.inc"
.section .ctors, "wa"  # 0x80472F00 - 0x804732C0
lbl_constructor:
	.4byte __sinit_ebiP2TitleLight_cpp

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
govNAN___Q24Game5P2JST:
	.float 0.0
	.float 0.0
	.float 0.0
.global __vt__Q33ebi5title14TTitleLightMgr
__vt__Q33ebi5title14TTitleLightMgr:
	.4byte 0
	.4byte 0
	.4byte __dt__Q33ebi5title14TTitleLightMgrFv
	.4byte getChildCount__5CNodeFv
	.4byte update__Q33ebi5title14TTitleLightMgrFv
	.4byte set__8LightMgrFR8Graphics
	.4byte set__8LightMgrFR7Matrixf
	.4byte drawDebugInfo__8LightMgrFR8Graphics

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
gu32NAN___Q24Game5P2JST:
	.skip 0x4
gfNAN___Q24Game5P2JST:
	.skip 0x4

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
lbl_8051F8A0:
	.float 0.0
lbl_8051F8A4:
	.float 1.0

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global loadSettingFile__Q33ebi5title14TTitleLightMgrFP10JKRArchivePc
loadSettingFile__Q33ebi5title14TTitleLightMgrFP10JKRArchivePc:
/* 803C1F58 003BEE98  94 21 FB D0 */	stwu r1, -0x430(r1)
/* 803C1F5C 003BEE9C  7C 08 02 A6 */	mflr r0
/* 803C1F60 003BEEA0  90 01 04 34 */	stw r0, 0x434(r1)
/* 803C1F64 003BEEA4  93 E1 04 2C */	stw r31, 0x42c(r1)
/* 803C1F68 003BEEA8  7C 7F 1B 78 */	mr r31, r3
/* 803C1F6C 003BEEAC  7C 83 23 78 */	mr r3, r4
/* 803C1F70 003BEEB0  81 84 00 00 */	lwz r12, 0(r4)
/* 803C1F74 003BEEB4  7C A4 2B 78 */	mr r4, r5
/* 803C1F78 003BEEB8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 803C1F7C 003BEEBC  7D 89 03 A6 */	mtctr r12
/* 803C1F80 003BEEC0  4E 80 04 21 */	bctrl 
/* 803C1F84 003BEEC4  28 03 00 00 */	cmplwi r3, 0
/* 803C1F88 003BEEC8  41 82 00 50 */	beq lbl_803C1FD8
/* 803C1F8C 003BEECC  7C 64 1B 78 */	mr r4, r3
/* 803C1F90 003BEED0  38 61 00 08 */	addi r3, r1, 8
/* 803C1F94 003BEED4  38 A0 FF FF */	li r5, -1
/* 803C1F98 003BEED8  48 05 39 61 */	bl __ct__9RamStreamFPvi
/* 803C1F9C 003BEEDC  38 00 00 01 */	li r0, 1
/* 803C1FA0 003BEEE0  2C 00 00 01 */	cmpwi r0, 1
/* 803C1FA4 003BEEE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C1FA8 003BEEE8  40 82 00 0C */	bne lbl_803C1FB4
/* 803C1FAC 003BEEEC  38 00 00 00 */	li r0, 0
/* 803C1FB0 003BEEF0  90 01 04 1C */	stw r0, 0x41c(r1)
lbl_803C1FB4:
/* 803C1FB4 003BEEF4  38 7F 01 00 */	addi r3, r31, 0x100
/* 803C1FB8 003BEEF8  38 81 00 08 */	addi r4, r1, 8
/* 803C1FBC 003BEEFC  48 05 18 39 */	bl read__10ParametersFR6Stream
/* 803C1FC0 003BEF00  38 7F 01 B0 */	addi r3, r31, 0x1b0
/* 803C1FC4 003BEF04  38 81 00 08 */	addi r4, r1, 8
/* 803C1FC8 003BEF08  48 05 18 2D */	bl read__10ParametersFR6Stream
/* 803C1FCC 003BEF0C  38 7F 03 C8 */	addi r3, r31, 0x3c8
/* 803C1FD0 003BEF10  38 81 00 08 */	addi r4, r1, 8
/* 803C1FD4 003BEF14  48 05 18 21 */	bl read__10ParametersFR6Stream
lbl_803C1FD8:
/* 803C1FD8 003BEF18  80 01 04 34 */	lwz r0, 0x434(r1)
/* 803C1FDC 003BEF1C  83 E1 04 2C */	lwz r31, 0x42c(r1)
/* 803C1FE0 003BEF20  7C 08 03 A6 */	mtlr r0
/* 803C1FE4 003BEF24  38 21 04 30 */	addi r1, r1, 0x430
/* 803C1FE8 003BEF28  4E 80 00 20 */	blr 

.global setParam___Q33ebi5title14TTitleLightMgrFv
setParam___Q33ebi5title14TTitleLightMgrFv:
/* 803C1FEC 003BEF2C  80 C3 01 9C */	lwz r6, 0x19c(r3)
/* 803C1FF0 003BEF30  80 A3 01 74 */	lwz r5, 0x174(r3)
/* 803C1FF4 003BEF34  80 83 01 4C */	lwz r4, 0x14c(r3)
/* 803C1FF8 003BEF38  80 03 01 24 */	lwz r0, 0x124(r3)
/* 803C1FFC 003BEF3C  C0 02 15 40 */	lfs f0, lbl_8051F8A0@sda21(r2)
/* 803C2000 003BEF40  98 03 00 30 */	stb r0, 0x30(r3)
/* 803C2004 003BEF44  98 83 00 31 */	stb r4, 0x31(r3)
/* 803C2008 003BEF48  98 A3 00 32 */	stb r5, 0x32(r3)
/* 803C200C 003BEF4C  98 C3 00 33 */	stb r6, 0x33(r3)
/* 803C2010 003BEF50  80 C3 02 4C */	lwz r6, 0x24c(r3)
/* 803C2014 003BEF54  80 A3 02 24 */	lwz r5, 0x224(r3)
/* 803C2018 003BEF58  80 83 01 FC */	lwz r4, 0x1fc(r3)
/* 803C201C 003BEF5C  80 03 01 D4 */	lwz r0, 0x1d4(r3)
/* 803C2020 003BEF60  98 03 00 84 */	stb r0, 0x84(r3)
/* 803C2024 003BEF64  98 83 00 85 */	stb r4, 0x85(r3)
/* 803C2028 003BEF68  98 A3 00 86 */	stb r5, 0x86(r3)
/* 803C202C 003BEF6C  98 C3 00 87 */	stb r6, 0x87(r3)
/* 803C2030 003BEF70  C0 63 02 C4 */	lfs f3, 0x2c4(r3)
/* 803C2034 003BEF74  C0 43 02 9C */	lfs f2, 0x29c(r3)
/* 803C2038 003BEF78  C0 23 02 74 */	lfs f1, 0x274(r3)
/* 803C203C 003BEF7C  D0 23 00 6C */	stfs f1, 0x6c(r3)
/* 803C2040 003BEF80  D0 43 00 70 */	stfs f2, 0x70(r3)
/* 803C2044 003BEF84  D0 63 00 74 */	stfs f3, 0x74(r3)
/* 803C2048 003BEF88  C0 63 03 14 */	lfs f3, 0x314(r3)
/* 803C204C 003BEF8C  C0 83 03 3C */	lfs f4, 0x33c(r3)
/* 803C2050 003BEF90  EC 23 00 F2 */	fmuls f1, f3, f3
/* 803C2054 003BEF94  C0 43 02 EC */	lfs f2, 0x2ec(r3)
/* 803C2058 003BEF98  EC A4 01 32 */	fmuls f5, f4, f4
/* 803C205C 003BEF9C  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 803C2060 003BEFA0  EC 25 08 2A */	fadds f1, f5, f1
/* 803C2064 003BEFA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803C2068 003BEFA8  40 81 00 14 */	ble lbl_803C207C
/* 803C206C 003BEFAC  40 81 00 14 */	ble lbl_803C2080
/* 803C2070 003BEFB0  FC 00 08 34 */	frsqrte f0, f1
/* 803C2074 003BEFB4  EC 20 00 72 */	fmuls f1, f0, f1
/* 803C2078 003BEFB8  48 00 00 08 */	b lbl_803C2080
lbl_803C207C:
/* 803C207C 003BEFBC  FC 20 00 90 */	fmr f1, f0
lbl_803C2080:
/* 803C2080 003BEFC0  C0 02 15 40 */	lfs f0, lbl_8051F8A0@sda21(r2)
/* 803C2084 003BEFC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803C2088 003BEFC8  40 81 00 18 */	ble lbl_803C20A0
/* 803C208C 003BEFCC  C0 02 15 44 */	lfs f0, lbl_8051F8A4@sda21(r2)
/* 803C2090 003BEFD0  EC 00 08 24 */	fdivs f0, f0, f1
/* 803C2094 003BEFD4  EC 42 00 32 */	fmuls f2, f2, f0
/* 803C2098 003BEFD8  EC 63 00 32 */	fmuls f3, f3, f0
/* 803C209C 003BEFDC  EC 84 00 32 */	fmuls f4, f4, f0
lbl_803C20A0:
/* 803C20A0 003BEFE0  D0 43 00 78 */	stfs f2, 0x78(r3)
/* 803C20A4 003BEFE4  38 80 00 01 */	li r4, 1
/* 803C20A8 003BEFE8  38 00 00 03 */	li r0, 3
/* 803C20AC 003BEFEC  C0 02 15 40 */	lfs f0, lbl_8051F8A0@sda21(r2)
/* 803C20B0 003BEFF0  D0 63 00 7C */	stfs f3, 0x7c(r3)
/* 803C20B4 003BEFF4  D0 83 00 80 */	stfs f4, 0x80(r3)
/* 803C20B8 003BEFF8  C0 43 03 B4 */	lfs f2, 0x3b4(r3)
/* 803C20BC 003BEFFC  C0 63 03 8C */	lfs f3, 0x38c(r3)
/* 803C20C0 003BF000  C0 23 03 64 */	lfs f1, 0x364(r3)
/* 803C20C4 003BF004  D0 23 00 8C */	stfs f1, 0x8c(r3)
/* 803C20C8 003BF008  D0 63 00 90 */	stfs f3, 0x90(r3)
/* 803C20CC 003BF00C  D0 43 00 94 */	stfs f2, 0x94(r3)
/* 803C20D0 003BF010  98 83 00 98 */	stb r4, 0x98(r3)
/* 803C20D4 003BF014  98 03 00 99 */	stb r0, 0x99(r3)
/* 803C20D8 003BF018  80 C3 04 64 */	lwz r6, 0x464(r3)
/* 803C20DC 003BF01C  80 A3 04 3C */	lwz r5, 0x43c(r3)
/* 803C20E0 003BF020  80 83 04 14 */	lwz r4, 0x414(r3)
/* 803C20E4 003BF024  80 03 03 EC */	lwz r0, 0x3ec(r3)
/* 803C20E8 003BF028  98 03 00 DC */	stb r0, 0xdc(r3)
/* 803C20EC 003BF02C  98 83 00 DD */	stb r4, 0xdd(r3)
/* 803C20F0 003BF030  98 A3 00 DE */	stb r5, 0xde(r3)
/* 803C20F4 003BF034  98 C3 00 DF */	stb r6, 0xdf(r3)
/* 803C20F8 003BF038  C0 83 04 B4 */	lfs f4, 0x4b4(r3)
/* 803C20FC 003BF03C  C0 A3 04 DC */	lfs f5, 0x4dc(r3)
/* 803C2100 003BF040  EC 24 01 32 */	fmuls f1, f4, f4
/* 803C2104 003BF044  C0 63 04 8C */	lfs f3, 0x48c(r3)
/* 803C2108 003BF048  EC 45 01 72 */	fmuls f2, f5, f5
/* 803C210C 003BF04C  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 803C2110 003BF050  EC 22 08 2A */	fadds f1, f2, f1
/* 803C2114 003BF054  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803C2118 003BF058  40 81 00 14 */	ble lbl_803C212C
/* 803C211C 003BF05C  40 81 00 14 */	ble lbl_803C2130
/* 803C2120 003BF060  FC 00 08 34 */	frsqrte f0, f1
/* 803C2124 003BF064  EC 20 00 72 */	fmuls f1, f0, f1
/* 803C2128 003BF068  48 00 00 08 */	b lbl_803C2130
lbl_803C212C:
/* 803C212C 003BF06C  FC 20 00 90 */	fmr f1, f0
lbl_803C2130:
/* 803C2130 003BF070  C0 02 15 40 */	lfs f0, lbl_8051F8A0@sda21(r2)
/* 803C2134 003BF074  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803C2138 003BF078  40 81 00 18 */	ble lbl_803C2150
/* 803C213C 003BF07C  C0 02 15 44 */	lfs f0, lbl_8051F8A4@sda21(r2)
/* 803C2140 003BF080  EC 00 08 24 */	fdivs f0, f0, f1
/* 803C2144 003BF084  EC 63 00 32 */	fmuls f3, f3, f0
/* 803C2148 003BF088  EC 84 00 32 */	fmuls f4, f4, f0
/* 803C214C 003BF08C  EC A5 00 32 */	fmuls f5, f5, f0
lbl_803C2150:
/* 803C2150 003BF090  D0 63 00 D0 */	stfs f3, 0xd0(r3)
/* 803C2154 003BF094  D0 83 00 D4 */	stfs f4, 0xd4(r3)
/* 803C2158 003BF098  D0 A3 00 D8 */	stfs f5, 0xd8(r3)
/* 803C215C 003BF09C  C0 03 05 04 */	lfs f0, 0x504(r3)
/* 803C2160 003BF0A0  D0 03 00 F4 */	stfs f0, 0xf4(r3)
/* 803C2164 003BF0A4  4E 80 00 20 */	blr 

.global update__Q33ebi5title14TTitleLightMgrFv
update__Q33ebi5title14TTitleLightMgrFv:
/* 803C2168 003BF0A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C216C 003BF0AC  7C 08 02 A6 */	mflr r0
/* 803C2170 003BF0B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2174 003BF0B4  4B FF FE 79 */	bl setParam___Q33ebi5title14TTitleLightMgrFv
/* 803C2178 003BF0B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C217C 003BF0BC  7C 08 03 A6 */	mtlr r0
/* 803C2180 003BF0C0  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2184 003BF0C4  4E 80 00 20 */	blr 

.global setCameraMtx__Q33ebi5title14TTitleLightMgrFPA4_f
setCameraMtx__Q33ebi5title14TTitleLightMgrFPA4_f:
/* 803C2188 003BF0C8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803C218C 003BF0CC  7C 08 02 A6 */	mflr r0
/* 803C2190 003BF0D0  90 01 00 54 */	stw r0, 0x54(r1)
/* 803C2194 003BF0D4  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 803C2198 003BF0D8  7C 7F 1B 78 */	mr r31, r3
/* 803C219C 003BF0DC  7C 83 23 78 */	mr r3, r4
/* 803C21A0 003BF0E0  38 81 00 10 */	addi r4, r1, 0x10
/* 803C21A4 003BF0E4  4B D2 81 29 */	bl PSMTXCopy
/* 803C21A8 003BF0E8  88 FF 00 30 */	lbz r7, 0x30(r31)
/* 803C21AC 003BF0EC  38 81 00 0C */	addi r4, r1, 0xc
/* 803C21B0 003BF0F0  88 DF 00 31 */	lbz r6, 0x31(r31)
/* 803C21B4 003BF0F4  38 60 00 04 */	li r3, 4
/* 803C21B8 003BF0F8  88 BF 00 32 */	lbz r5, 0x32(r31)
/* 803C21BC 003BF0FC  88 1F 00 33 */	lbz r0, 0x33(r31)
/* 803C21C0 003BF100  98 E1 00 08 */	stb r7, 8(r1)
/* 803C21C4 003BF104  98 C1 00 09 */	stb r6, 9(r1)
/* 803C21C8 003BF108  98 A1 00 0A */	stb r5, 0xa(r1)
/* 803C21CC 003BF10C  98 01 00 0B */	stb r0, 0xb(r1)
/* 803C21D0 003BF110  80 01 00 08 */	lwz r0, 8(r1)
/* 803C21D4 003BF114  90 01 00 0C */	stw r0, 0xc(r1)
/* 803C21D8 003BF118  4B D2 4A AD */	bl GXSetChanAmbColor
/* 803C21DC 003BF11C  83 FF 00 44 */	lwz r31, 0x44(r31)
/* 803C21E0 003BF120  48 00 00 20 */	b lbl_803C2200
lbl_803C21E4:
/* 803C21E4 003BF124  7F E3 FB 78 */	mr r3, r31
/* 803C21E8 003BF128  38 81 00 10 */	addi r4, r1, 0x10
/* 803C21EC 003BF12C  81 9F 00 00 */	lwz r12, 0(r31)
/* 803C21F0 003BF130  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 803C21F4 003BF134  7D 89 03 A6 */	mtctr r12
/* 803C21F8 003BF138  4E 80 04 21 */	bctrl 
/* 803C21FC 003BF13C  83 FF 00 04 */	lwz r31, 4(r31)
lbl_803C2200:
/* 803C2200 003BF140  28 1F 00 00 */	cmplwi r31, 0
/* 803C2204 003BF144  40 82 FF E0 */	bne lbl_803C21E4
/* 803C2208 003BF148  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803C220C 003BF14C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 803C2210 003BF150  7C 08 03 A6 */	mtlr r0
/* 803C2214 003BF154  38 21 00 50 */	addi r1, r1, 0x50
/* 803C2218 003BF158  4E 80 00 20 */	blr 

__sinit_ebiP2TitleLight_cpp: # static initializer
/* 803C221C 003BF15C  3C 80 80 51 */	lis r4, __float_nan@ha
/* 803C2220 003BF160  38 00 FF FF */	li r0, -1
/* 803C2224 003BF164  C0 04 48 B0 */	lfs f0, __float_nan@l(r4)
/* 803C2228 003BF168  3C 60 80 4E */	lis r3, govNAN___Q24Game5P2JST@ha
/* 803C222C 003BF16C  90 0D 9A 48 */	stw r0, gu32NAN___Q24Game5P2JST@sda21(r13)
/* 803C2230 003BF170  D4 03 79 D8 */	stfsu f0, govNAN___Q24Game5P2JST@l(r3)
/* 803C2234 003BF174  D0 0D 9A 4C */	stfs f0, gfNAN___Q24Game5P2JST@sda21(r13)
/* 803C2238 003BF178  D0 03 00 04 */	stfs f0, 4(r3)
/* 803C223C 003BF17C  D0 03 00 08 */	stfs f0, 8(r3)
/* 803C2240 003BF180  4E 80 00 20 */	blr 
