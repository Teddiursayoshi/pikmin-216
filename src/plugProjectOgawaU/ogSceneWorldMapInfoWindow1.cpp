

/*
 * --INFO--
 * Address:	........
 * Size:	0000E4
 */
void _Print(char *, ...)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	8032C208
 * Size:	00003C
 */
void __ct__Q32og9newScreen19WorldMapInfoWindow1Fv(void)
{
/*
.loc_0x0:
  stwu      r1, -0x10(r1)
  mflr      r0
  stw       r0, 0x14(r1)
  stw       r31, 0xC(r1)
  mr        r31, r3
  bl        -0x2520
  lis       r4, 0x804E
  mr        r3, r31
  subi      r0, r4, 0x60A4
  stw       r0, 0x0(r31)
  lwz       r31, 0xC(r1)
  lwz       r0, 0x14(r1)
  mtlr      r0
  addi      r1, r1, 0x10
  blr
*/
}

/*
 * --INFO--
 * Address:	........
 * Size:	000060
 */
void __dt__Q32og9newScreen19WorldMapInfoWindow1Fv(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	8032C244
 * Size:	0000A4
 */
void doCreateObj__Q32og9newScreen19WorldMapInfoWindow1FP10JKRArchive(void)
{
/*
.loc_0x0:
  stwu      r1, -0x10(r1)
  mflr      r0
  stw       r0, 0x14(r1)
  stw       r31, 0xC(r1)
  mr        r31, r4
  stw       r30, 0x8(r1)
  mr        r30, r3
  li        r3, 0xD4
  bl        -0x3083C0
  mr.       r4, r3
  beq-      .loc_0x3C
  lis       r4, 0x8049
  subi      r4, r4, 0x990
  bl        -0x630
  mr        r4, r3

.loc_0x3C:
  mr        r3, r30
  mr        r5, r31
  bl        0x125AEC
  lwz       r31, 0x21C(r30)
  lis       r4, 0x4F
  lis       r6, 0x5769
  lis       r5, 0x574D
  mr        r3, r31
  addi      r4, r4, 0x4741
  addi      r6, r6, 0x6E31
  addi      r5, r5, 0x6170
  bl        -0x1CF90
  rlwinm.   r0,r3,0,24,31
  beq-      .loc_0x8C
  lbz       r7, 0xC(r31)
  mr        r3, r30
  li        r4, 0
  li        r5, 0
  li        r6, 0
  bl        0x125FB8

.loc_0x8C:
  lwz       r0, 0x14(r1)
  lwz       r31, 0xC(r1)
  lwz       r30, 0x8(r1)
  mtlr      r0
  addi      r1, r1, 0x10
  blr
*/
}

/*
 * --INFO--
 * Address:	8032C2E8
 * Size:	000008
 */
void doConfirmSetScene__Q32og9newScreen19WorldMapInfoWindow1FRQ26Screen11SetSceneArg(void)
{
/*
.loc_0x0:
  li        r3, 0x1
  blr
*/
}

/*
 * --INFO--
 * Address:	8032C2F0
 * Size:	000064
 */
void doGetFinishState__Q32og9newScreen19WorldMapInfoWindow1Fv(void)
{
/*
.loc_0x0:
  stwu      r1, -0x10(r1)
  mflr      r0
  lis       r4, 0x4F
  lis       r6, 0x5769
  stw       r0, 0x14(r1)
  lis       r5, 0x574D
  addi      r4, r4, 0x4741
  addi      r6, r6, 0x6E31
  stw       r31, 0xC(r1)
  addi      r5, r5, 0x6170
  stw       r30, 0x8(r1)
  li        r30, 0
  lwz       r31, 0x21C(r3)
  mr        r3, r31
  bl        -0x1D00C
  rlwinm.   r0,r3,0,24,31
  beq-      .loc_0x48
  lwz       r30, 0x8(r31)

.loc_0x48:
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
 * Address:	8032C354
 * Size:	00000C
 */
void getResName__Q32og9newScreen19WorldMapInfoWindow1CFv(void)
{
/*
.loc_0x0:
  lis       r3, 0x8049
  subi      r3, r3, 0x974
  blr
*/
}

/*
 * --INFO--
 * Address:	8032C360
 * Size:	000008
 */
void getSceneType__Q32og9newScreen19WorldMapInfoWindow1Fv(void)
{
/*
.loc_0x0:
  li        r3, 0x272A
  blr
*/
}

/*
 * --INFO--
 * Address:	8032C368
 * Size:	000014
 */
void getMemberID__Q32og9newScreen19WorldMapInfoWindow1Fv(void)
{
/*
.loc_0x0:
  lis       r4, 0x5769
  lis       r3, 0x574D
  addi      r4, r4, 0x6E31
  addi      r3, r3, 0x6170
  blr
*/
}

/*
 * --INFO--
 * Address:	8032C37C
 * Size:	000008
 */
void isUseBackupSceneInfo__Q32og9newScreen19WorldMapInfoWindow1Fv(void)
{
/*
.loc_0x0:
  li        r3, 0
  blr
*/
}

/*
 * --INFO--
 * Address:	8032C384
 * Size:	000028
 */
void __sinit_ogSceneWorldMapInfoWindow1_cpp(void)
{
/*
.loc_0x0:
  lis       r4, 0x8051
  li        r0, -0x1
  lfs       f0, 0x48B0(r4)
  lis       r3, 0x804E
  stw       r0, -0x67D8(r13)
  stfsu     f0, -0x60B0(r3)
  stfs      f0, -0x67D4(r13)
  stfs      f0, 0x4(r3)
  stfs      f0, 0x8(r3)
  blr
*/
}