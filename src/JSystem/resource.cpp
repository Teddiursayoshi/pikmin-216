

/*
 * --INFO--
 * Address:	........
 * Size:	0000C8
 */
void toMessageID_messageIndex__Q28JMessage9TResourceCFUsPUlPUl(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	800063C4
 * Size:	0001E4
 */
void toMessageIndex_messageID__Q28JMessage9TResourceCFUlUlPb(void)
{
/*
.loc_0x0:
  stwu      r1, -0x20(r1)
  mflr      r0
  lwz       r7, 0x18(r3)
  stw       r0, 0x24(r1)
  cmplwi    r7, 0
  stw       r31, 0x1C(r1)
  stw       r30, 0x18(r1)
  bne-      .loc_0x2C
  lis       r3, 0x1
  subi      r3, r3, 0x1
  b         .loc_0x1CC

.loc_0x2C:
  li        r0, -0x1
  li        r8, 0x1
  stw       r0, 0x8(r1)
  lbz       r0, 0xB(r7)
  cmpwi     r0, 0x2
  beq-      .loc_0xA4
  bge-      .loc_0x58
  cmpwi     r0, 0
  beq-      .loc_0x68
  bge-      .loc_0x7C
  b         .loc_0x100

.loc_0x58:
  cmpwi     r0, 0x4
  beq-      .loc_0xEC
  bge-      .loc_0x100
  b         .loc_0xC4

.loc_0x68:
  cmplwi    r5, 0
  beq-      .loc_0x74
  li        r8, 0

.loc_0x74:
  stw       r4, 0x8(r1)
  b         .loc_0x10C

.loc_0x7C:
  lis       r7, 0x100
  subi      r0, r7, 0x1
  cmplw     r4, r0
  bgt-      .loc_0x94
  cmplwi    r5, 0xFF
  ble-      .loc_0x98

.loc_0x94:
  li        r8, 0

.loc_0x98:
  rlwimi    r5,r4,8,0,23
  stw       r5, 0x8(r1)
  b         .loc_0x10C

.loc_0xA4:
  cmplwi    r4, 0xFFFF
  bgt-      .loc_0xB4
  cmplwi    r5, 0xFFFF
  ble-      .loc_0xB8

.loc_0xB4:
  li        r8, 0

.loc_0xB8:
  rlwimi    r5,r4,16,0,15
  stw       r5, 0x8(r1)
  b         .loc_0x10C

.loc_0xC4:
  cmplwi    r4, 0xFF
  bgt-      .loc_0xDC
  lis       r7, 0x100
  subi      r0, r7, 0x1
  cmplw     r5, r0
  ble-      .loc_0xE0

.loc_0xDC:
  li        r8, 0

.loc_0xE0:
  rlwimi    r5,r4,24,0,7
  stw       r5, 0x8(r1)
  b         .loc_0x10C

.loc_0xEC:
  cmplwi    r4, 0
  beq-      .loc_0xF8
  li        r8, 0

.loc_0xF8:
  stw       r5, 0x8(r1)
  b         .loc_0x10C

.loc_0x100:
  lis       r3, 0x1
  subi      r3, r3, 0x1
  b         .loc_0x1CC

.loc_0x10C:
  cmplwi    r6, 0
  beq-      .loc_0x118
  stb       r8, 0x0(r6)

.loc_0x118:
  lwz       r4, 0x8(r1)
  addis     r0, r4, 0x1
  cmplwi    r0, 0xFFFF
  bne-      .loc_0x134
  lis       r3, 0x1
  subi      r3, r3, 0x1
  b         .loc_0x1CC

.loc_0x134:
  lwz       r3, 0x18(r3)
  lbz       r0, 0xA(r3)
  addi      r31, r3, 0x10
  lhz       r3, 0x8(r3)
  rlwinm.   r0,r0,0,24,27
  rlwinm    r0,r3,2,0,29
  add       r30, r31, r0
  beq-      .loc_0x188
  mr        r3, r31
  mr        r4, r30
  addi      r5, r1, 0x8
  bl        0x794
  cmplw     r3, r30
  beq-      .loc_0x17C
  lwz       r4, 0x0(r3)
  lwz       r0, 0x8(r1)
  cmplw     r4, r0
  beq-      .loc_0x1BC

.loc_0x17C:
  lis       r3, 0x1
  subi      r3, r3, 0x1
  b         .loc_0x1CC

.loc_0x188:
  mr        r3, r31
  b         .loc_0x194

.loc_0x190:
  addi      r3, r3, 0x4

.loc_0x194:
  cmplw     r3, r30
  beq-      .loc_0x1A8
  lwz       r0, 0x0(r3)
  cmplw     r0, r4
  bne+      .loc_0x190

.loc_0x1A8:
  cmplw     r3, r30
  bne-      .loc_0x1BC
  lis       r3, 0x1
  subi      r3, r3, 0x1
  b         .loc_0x1CC

.loc_0x1BC:
  sub       r0, r3, r31
  srawi     r0, r0, 0x2
  addze     r0, r0
  rlwinm    r3,r0,0,16,31

.loc_0x1CC:
  lwz       r0, 0x24(r1)
  lwz       r31, 0x1C(r1)
  lwz       r30, 0x18(r1)
  mtlr      r0
  addi      r1, r1, 0x20
  blr
*/
}

/*
 * --INFO--
 * Address:	........
 * Size:	000038
 */
void __ct__Q38JMessage18TResourceContainer10TCResourceFv(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000064
 */
void __dt__Q27JGadget42TLinkList_factory<JMessage::TResource, 0>Fv(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000054
 */
void __dt__Q27JGadget34TLinkList<JMessage::TResource, 0>Fv(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	800065A8
 * Size:	000074
 */
void __dt__Q38JMessage18TResourceContainer10TCResourceFv(void)
{
/*
.loc_0x0:
  stwu      r1, -0x10(r1)
  mflr      r0
  stw       r0, 0x14(r1)
  stw       r31, 0xC(r1)
  mr        r31, r4
  stw       r30, 0x8(r1)
  mr.       r30, r3
  beq-      .loc_0x58
  lis       r4, 0x804A
  subi      r0, r4, 0x1CCC
  stw       r0, 0xC(r30)
  beq-      .loc_0x48
  lis       r4, 0x804A
  subi      r0, r4, 0x1CB8
  stw       r0, 0xC(r30)
  beq-      .loc_0x48
  li        r4, 0
  bl        0x20CF8

.loc_0x48:
  extsh.    r0, r31
  ble-      .loc_0x58
  mr        r3, r30
  bl        0x1DAB8

.loc_0x58:
  lwz       r0, 0x14(r1)
  mr        r3, r30
  lwz       r31, 0xC(r1)
  lwz       r30, 0x8(r1)
  mtlr      r0
  addi      r1, r1, 0x10
  blr
*/
}

/*
 * --INFO--
 * Address:	8000661C
 * Size:	000084
 */
void Get_groupID__Q38JMessage18TResourceContainer10TCResourceFUs(void)
{
/*
.loc_0x0:
  stwu      r1, -0x40(r1)
  lwzu      r0, 0x4(r3)
  stw       r3, 0x24(r1)
  stw       r3, 0x20(r1)
  stw       r3, 0x34(r1)
  stw       r3, 0x30(r1)
  stw       r0, 0x1C(r1)
  stw       r0, 0x18(r1)
  stw       r0, 0x2C(r1)
  stw       r0, 0x28(r1)
  stw       r0, 0x38(r1)
  stw       r3, 0x3C(r1)
  b         .loc_0x54

.loc_0x34:
  lwz       r3, 0x38(r1)
  lwz       r4, 0xC(r3)
  lwz       r6, 0x0(r3)
  lhz       r0, 0xC(r4)
  stw       r6, 0x38(r1)
  cmplw     r5, r0
  bne-      .loc_0x58
  b         .loc_0x7C

.loc_0x54:
  rlwinm    r5,r4,0,16,31

.loc_0x58:
  lwz       r3, 0x3C(r1)
  lwz       r0, 0x38(r1)
  stw       r3, 0x14(r1)
  cmplw     r0, r3
  stw       r0, 0x10(r1)
  stw       r3, 0xC(r1)
  stw       r0, 0x8(r1)
  bne+      .loc_0x34
  li        r3, 0

.loc_0x7C:
  addi      r1, r1, 0x40
  blr
*/
}

/*
 * --INFO--
 * Address:	........
 * Size:	0000B4
 */
void Remove_groupID__Q38JMessage18TResourceContainer10TCResourceFUs(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	0000F0
 */
void Erase_destroy_groupID__Q38JMessage18TResourceContainer10TCResourceFUs(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000128
 */
void Erase_destroy_groupID_all__Q38JMessage18TResourceContainer10TCResourceFUs(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	800066A0
 * Size:	00004C
 */
void Do_create__Q38JMessage18TResourceContainer10TCResourceFv(void)
{
/*
.loc_0x0:
  stwu      r1, -0x10(r1)
  mflr      r0
  li        r3, 0x1C
  stw       r0, 0x14(r1)
  bl        0x1D7F4
  cmplwi    r3, 0
  beq-      .loc_0x3C
  li        r0, 0
  stw       r0, 0x0(r3)
  stw       r0, 0x4(r3)
  stw       r0, 0x8(r3)
  stw       r0, 0xC(r3)
  stw       r0, 0x10(r3)
  stw       r0, 0x14(r3)
  stw       r0, 0x18(r3)

.loc_0x3C:
  lwz       r0, 0x14(r1)
  mtlr      r0
  addi      r1, r1, 0x10
  blr
*/
}

/*
 * --INFO--
 * Address:	800066EC
 * Size:	000024
 */
void Do_destroy__Q38JMessage18TResourceContainer10TCResourceFPQ28JMessage9TResource(void)
{
/*
.loc_0x0:
  stwu      r1, -0x10(r1)
  mflr      r0
  mr        r3, r4
  stw       r0, 0x14(r1)
  bl        0x1D9B8
  lwz       r0, 0x14(r1)
  mtlr      r0
  addi      r1, r1, 0x10
  blr
*/
}

/*
 * --INFO--
 * Address:	80006710
 * Size:	000048
 */
void __ct__Q28JMessage18TResourceContainerFv(void)
{
/*
.loc_0x0:
  li        r7, 0
  lis       r5, 0x804A
  stb       r7, 0x0(r3)
  lis       r4, 0x804A
  addi      r6, r3, 0xC
  subi      r5, r5, 0x1CB8
  stw       r7, 0x4(r3)
  subi      r0, r4, 0x1CCC
  stw       r7, 0xC(r3)
  stw       r7, 0x10(r3)
  stw       r7, 0x8(r3)
  stw       r6, 0xC(r3)
  stw       r6, 0x10(r3)
  stw       r5, 0x14(r3)
  stw       r0, 0x14(r3)
  stw       r7, 0x18(r3)
  stw       r7, 0x1C(r3)
  blr
*/
}

/*
 * --INFO--
 * Address:	........
 * Size:	00006C
 */
void __ct__Q28JMessage18TResourceContainerFUc(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000094
 */
void getMessageEntryNumber__Q28JMessage18TResourceContainerCFv(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000038
 */
void setEncoding__Q28JMessage18TResourceContainerFUc(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000040
 */
void setEncoding___Q28JMessage18TResourceContainerFUc(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	80006758
 * Size:	000008
 */
void JUTFont::isLeadByte_1Byte(int)
{
/*
.loc_0x0:
  li        r3, 0
  blr
*/
}

/*
 * --INFO--
 * Address:	80006760
 * Size:	000008
 */
void JUTFont::isLeadByte_2Byte(int)
{
/*
.loc_0x0:
  li        r3, 0x1
  blr
*/
}

/*
 * --INFO--
 * Address:	80006768
 * Size:	000030
 */
void JUTFont::isLeadByte_ShiftJIS(int)
{
/*
.loc_0x0:
  cmpwi     r3, 0x81
  li        r0, 0
  blt-      .loc_0x14
  cmpwi     r3, 0x9F
  ble-      .loc_0x24

.loc_0x14:
  cmpwi     r3, 0xE0
  blt-      .loc_0x28
  cmpwi     r3, 0xFC
  bgt-      .loc_0x28

.loc_0x24:
  li        r0, 0x1

.loc_0x28:
  mr        r3, r0
  blr
*/
}

/*
 * --INFO--
 * Address:	80006798
 * Size:	000028
 */
void __ct__Q28JMessage6TParseFPQ28JMessage18TResourceContainer(void)
{
/*
.loc_0x0:
  lis       r6, 0x804A
  lis       r5, 0x804A
  subi      r6, r6, 0x1CE0
  li        r0, 0
  stw       r6, 0x0(r3)
  subi      r5, r5, 0x1CF4
  stw       r5, 0x0(r3)
  stw       r4, 0x4(r3)
  stw       r0, 0x8(r3)
  blr
*/
}

/*
 * --INFO--
 * Address:	800067C0
 * Size:	000060
 */
void __dt__Q28JMessage6TParseFv(void)
{
/*
.loc_0x0:
  stwu      r1, -0x10(r1)
  mflr      r0
  stw       r0, 0x14(r1)
  stw       r31, 0xC(r1)
  mr        r31, r4
  stw       r30, 0x8(r1)
  mr.       r30, r3
  beq-      .loc_0x44
  lis       r5, 0x804A
  li        r4, 0
  subi      r0, r5, 0x1CF4
  stw       r0, 0x0(r30)
  bl        0x209A0
  extsh.    r0, r31
  ble-      .loc_0x44
  mr        r3, r30
  bl        0x1D8B4

.loc_0x44:
  lwz       r0, 0x14(r1)
  mr        r3, r30
  lwz       r31, 0xC(r1)
  lwz       r30, 0x8(r1)
  mtlr      r0
  addi      r1, r1, 0x10
  blr
*/
}

/*
 * --INFO--
 * Address:	80006820
 * Size:	00018C
 */
void parseHeader_next__Q28JMessage6TParseFPPCvPUlUl(void)
{
/*
.loc_0x0:
  stwu      r1, -0x40(r1)
  mflr      r0
  stw       r0, 0x44(r1)
  stw       r31, 0x3C(r1)
  stw       r30, 0x38(r1)
  mr        r30, r6
  stw       r29, 0x34(r1)
  mr        r29, r3
  stw       r28, 0x30(r1)
  lwz       r31, 0x0(r4)
  addi      r0, r31, 0x20
  mr        r3, r31
  stw       r0, 0x0(r4)
  subi      r4, r2, 0x7FC8
  lwz       r0, 0xC(r31)
  stw       r0, 0x0(r5)
  li        r5, 0x4
  bl        0xC0784
  cmpwi     r3, 0
  beq-      .loc_0x58
  li        r3, 0
  b         .loc_0x16C

.loc_0x58:
  lwz       r3, 0x4(r31)
  subis     r0, r3, 0x626D
  cmplwi    r0, 0x6731
  beq-      .loc_0x70
  li        r3, 0
  b         .loc_0x16C

.loc_0x70:
  lbz       r4, 0x10(r31)
  cmplwi    r4, 0
  beq-      .loc_0xF4
  lwz       r5, 0x4(r29)
  li        r0, 0
  lbz       r3, 0x0(r5)
  cmplw     r3, r4
  beq-      .loc_0x98
  cmplwi    r3, 0
  bne-      .loc_0x9C

.loc_0x98:
  li        r0, 0x1

.loc_0x9C:
  rlwinm.   r0,r0,0,24,31
  bne-      .loc_0xAC
  li        r3, 0
  b         .loc_0x16C

.loc_0xAC:
  cmplwi    r4, 0
  bne-      .loc_0xC4
  stb       r4, 0x0(r5)
  li        r0, 0
  stw       r0, 0x4(r5)
  b         .loc_0xF4

.loc_0xC4:
  stb       r4, 0x0(r5)
  li        r0, 0
  lis       r3, 0x804A
  cmplwi    r4, 0x4
  stw       r0, 0x18(r1)
  rlwinm    r4,r4,2,22,29
  subi      r0, r3, 0x1D18
  add       r3, r0, r4
  blt-      .loc_0xEC
  addi      r3, r1, 0x18

.loc_0xEC:
  lwz       r0, 0x0(r3)
  stw       r0, 0x4(r5)

.loc_0xF4:
  rlwinm.   r0,r30,0,27,27
  beq-      .loc_0x104
  li        r3, 0x1
  b         .loc_0x16C

.loc_0x104:
  lwz       r3, 0x4(r29)
  addi      r28, r3, 0x8
  mr        r3, r28
  lwz       r12, 0xC(r28)
  lwz       r12, 0xC(r12)
  mtctr     r12
  bctrl     
  stw       r3, 0x8(r29)
  lwz       r6, 0x8(r29)
  cmplwi    r6, 0
  bne-      .loc_0x138
  rlwinm    r3,r30,27,31,31
  b         .loc_0x16C

.loc_0x138:
  addi      r0, r28, 0x4
  mr        r4, r28
  stw       r0, 0xC(r1)
  addi      r3, r1, 0x10
  addi      r5, r1, 0x14
  stw       r0, 0x8(r1)
  stw       r0, 0x20(r1)
  stw       r0, 0x1C(r1)
  stw       r0, 0x14(r1)
  bl        0x209A4
  lwz       r4, 0x8(r29)
  li        r3, 0x1
  stw       r31, 0x8(r4)

.loc_0x16C:
  lwz       r0, 0x44(r1)
  lwz       r31, 0x3C(r1)
  lwz       r30, 0x38(r1)
  lwz       r29, 0x34(r1)
  lwz       r28, 0x30(r1)
  mtlr      r0
  addi      r1, r1, 0x40
  blr
*/
}

/*
 * --INFO--
 * Address:	800069AC
 * Size:	00017C
 */
void parseBlock_next__Q28JMessage6TParseFPPCvPUlUl(void)
{
/*
.loc_0x0:
  stwu      r1, -0x30(r1)
  mflr      r0
  lis       r7, 0x4D49
  stw       r0, 0x34(r1)
  addi      r0, r7, 0x4431
  stw       r31, 0x2C(r1)
  stw       r30, 0x28(r1)
  mr        r30, r3
  stw       r29, 0x24(r1)
  stw       r28, 0x20(r1)
  lwz       r8, 0x0(r4)
  lwz       r3, 0x4(r8)
  add       r3, r8, r3
  stw       r3, 0x0(r4)
  lwz       r3, 0x4(r8)
  stw       r3, 0x0(r5)
  lwz       r4, 0x0(r8)
  lwz       r3, 0x4(r30)
  cmpw      r4, r0
  addi      r31, r3, 0x8
  beq-      .loc_0x13C
  bge-      .loc_0x80
  lis       r3, 0x494E
  addi      r0, r3, 0x4631
  cmpw      r4, r0
  beq-      .loc_0x94
  bge-      .loc_0x148
  lis       r3, 0x4441
  addi      r0, r3, 0x5431
  cmpw      r4, r0
  beq-      .loc_0xA0
  b         .loc_0x148

.loc_0x80:
  lis       r3, 0x5354
  addi      r0, r3, 0x5231
  cmpw      r4, r0
  beq-      .loc_0x12C
  b         .loc_0x148

.loc_0x94:
  lwz       r3, 0x8(r30)
  stw       r8, 0xC(r3)
  b         .loc_0x158

.loc_0xA0:
  lwz       r3, 0x8(r30)
  addi      r4, r8, 0x8
  rlwinm.   r0,r6,0,24,24
  stw       r4, 0x10(r3)
  lwz       r3, 0x8(r30)
  lwz       r3, 0xC(r3)
  lhz       r29, 0xC(r3)
  beq-      .loc_0x158
  lwz       r28, 0x4(r31)
  stw       r28, 0x14(r1)
  stw       r28, 0x10(r1)
  b         .loc_0x11C

.loc_0xD0:
  lwz       r3, 0xC(r28)
  lhz       r0, 0xC(r3)
  cmplw     r29, r0
  beq-      .loc_0xE8
  lwz       r28, 0x0(r28)
  b         .loc_0x11C

.loc_0xE8:
  mr        r4, r31
  mr        r5, r28
  addi      r3, r1, 0xC
  bl        0x208AC
  mr        r3, r31
  lwz       r0, 0xC(r1)
  lwz       r12, 0xC(r31)
  mr        r4, r28
  stw       r0, 0x8(r1)
  lwz       r12, 0x10(r12)
  mtctr     r12
  bctrl     
  lwz       r28, 0x8(r1)

.loc_0x11C:
  lwz       r0, 0x8(r30)
  cmplw     r28, r0
  bne+      .loc_0xD0
  b         .loc_0x158

.loc_0x12C:
  lwz       r3, 0x8(r30)
  addi      r0, r8, 0x8
  stw       r0, 0x14(r3)
  b         .loc_0x158

.loc_0x13C:
  lwz       r3, 0x8(r30)
  stw       r8, 0x18(r3)
  b         .loc_0x158

.loc_0x148:
  rlwinm.   r0,r6,0,25,25
  bne-      .loc_0x158
  li        r3, 0
  b         .loc_0x15C

.loc_0x158:
  li        r3, 0x1

.loc_0x15C:
  lwz       r0, 0x34(r1)
  lwz       r31, 0x2C(r1)
  lwz       r30, 0x28(r1)
  lwz       r29, 0x24(r1)
  lwz       r28, 0x20(r1)
  mtlr      r0
  addi      r1, r1, 0x30
  blr
*/
}

/*
 * --INFO--
 * Address:	80006B28
 * Size:	000020
 */
void __ct__Q28JMessage12TParse_colorFPQ28JMessage18TResourceContainer(void)
{
/*
.loc_0x0:
  lis       r6, 0x804A
  lis       r5, 0x804A
  subi      r6, r6, 0x1CE0
  stw       r6, 0x0(r3)
  subi      r0, r5, 0x1D08
  stw       r0, 0x0(r3)
  stw       r4, 0x4(r3)
  blr
*/
}

/*
 * --INFO--
 * Address:	80006B48
 * Size:	000060
 */
void __dt__Q28JMessage12TParse_colorFv(void)
{
/*
.loc_0x0:
  stwu      r1, -0x10(r1)
  mflr      r0
  stw       r0, 0x14(r1)
  stw       r31, 0xC(r1)
  mr        r31, r4
  stw       r30, 0x8(r1)
  mr.       r30, r3
  beq-      .loc_0x44
  lis       r5, 0x804A
  li        r4, 0
  subi      r0, r5, 0x1D08
  stw       r0, 0x0(r30)
  bl        0x20618
  extsh.    r0, r31
  ble-      .loc_0x44
  mr        r3, r30
  bl        0x1D52C

.loc_0x44:
  lwz       r0, 0x14(r1)
  mr        r3, r30
  lwz       r31, 0xC(r1)
  lwz       r30, 0x8(r1)
  mtlr      r0
  addi      r1, r1, 0x10
  blr
*/
}

/*
 * --INFO--
 * Address:	80006BA8
 * Size:	0000BC
 */
void parseHeader_next__Q28JMessage12TParse_colorFPPCvPUlUl(void)
{
/*
.loc_0x0:
  stwu      r1, -0x20(r1)
  mflr      r0
  stw       r0, 0x24(r1)
  stw       r31, 0x1C(r1)
  stw       r30, 0x18(r1)
  mr        r30, r6
  stw       r29, 0x14(r1)
  mr        r29, r3
  lwz       r31, 0x0(r4)
  addi      r0, r31, 0x20
  mr        r3, r31
  stw       r0, 0x0(r4)
  subi      r4, r2, 0x7FC4
  lwz       r0, 0xC(r31)
  stw       r0, 0x0(r5)
  li        r5, 0x4
  bl        0xC0400
  cmpwi     r3, 0
  beq-      .loc_0x54
  li        r3, 0
  b         .loc_0xA0

.loc_0x54:
  lwz       r3, 0x4(r31)
  subis     r0, r3, 0x626D
  cmplwi    r0, 0x6331
  beq-      .loc_0x6C
  li        r3, 0
  b         .loc_0xA0

.loc_0x6C:
  lwz       r4, 0x4(r29)
  lwz       r0, 0x18(r4)
  cmplwi    r0, 0
  beq-      .loc_0x8C
  rlwinm.   r0,r30,0,26,26
  bne-      .loc_0x8C
  li        r3, 0
  b         .loc_0xA0

.loc_0x8C:
  li        r0, 0
  li        r3, 0x1
  stw       r0, 0x18(r4)
  stw       r0, 0x1C(r4)
  stw       r31, 0x18(r4)

.loc_0xA0:
  lwz       r0, 0x24(r1)
  lwz       r31, 0x1C(r1)
  lwz       r30, 0x18(r1)
  lwz       r29, 0x14(r1)
  mtlr      r0
  addi      r1, r1, 0x20
  blr
*/
}

/*
 * --INFO--
 * Address:	80006C64
 * Size:	000054
 */
void parseBlock_next__Q28JMessage12TParse_colorFPPCvPUlUl(void)
{
/*
.loc_0x0:
  lwz       r8, 0x0(r4)
  lis       r7, 0x434C
  addi      r0, r7, 0x5431
  lwz       r7, 0x4(r8)
  add       r7, r8, r7
  stw       r7, 0x0(r4)
  lwz       r4, 0x4(r8)
  stw       r4, 0x0(r5)
  lwz       r4, 0x0(r8)
  lwz       r3, 0x4(r3)
  cmpw      r4, r0
  beq-      .loc_0x34
  b         .loc_0x3C

.loc_0x34:
  stw       r8, 0x1C(r3)
  b         .loc_0x4C

.loc_0x3C:
  rlwinm.   r0,r6,0,27,27
  bne-      .loc_0x4C
  li        r3, 0
  blr       

.loc_0x4C:
  li        r3, 0x1
  blr
*/
}

/*
 * --INFO--
 * Address:	80006CB8
 * Size:	000054
 */
void std::lower_bound<const unsigned long *, unsigned long>(const unsigned long *, const unsigned long *, const unsigned long &)
{
/*
.loc_0x0:
  sub       r0, r4, r3
  lwz       r5, 0x0(r5)
  srawi     r0, r0, 0x2
  addze     r4, r0
  b         .loc_0x48

.loc_0x14:
  rlwinm    r0,r4,1,31,31
  add       r0, r0, r4
  srawi     r7, r0, 0x1
  rlwinm    r0,r7,2,0,29
  add       r6, r3, r0
  lwz       r0, 0x0(r6)
  cmplw     r0, r5
  bge-      .loc_0x44
  addi      r0, r7, 0x1
  addi      r3, r6, 0x4
  sub       r4, r4, r0
  b         .loc_0x48

.loc_0x44:
  mr        r4, r7

.loc_0x48:
  cmpwi     r4, 0
  bgt+      .loc_0x14
  blr
*/
}