#ifndef _J2DTEVBLOCK4_H
#define _J2DTEVBLOCK4_H

/*
    __vt__12J2DTevBlock4:
    .4byte 0
    .4byte 0
    .4byte initialize__12J2DTevBlock4Fv
    .4byte setGX__12J2DTevBlock4Fv
    .4byte loadTexture__12J2DTevBlock4F11_GXTexMapIDUl
    .4byte getType__12J2DTevBlock4Fv
    .4byte getMaxStage__12J2DTevBlock4Fv
    .4byte setTexNo__12J2DTevBlock4FUlUs
    .4byte getTexNo__12J2DTevBlock4CFUl
    .4byte setFontNo__12J2DTevBlock4FUs
    .4byte getFontNo__12J2DTevBlock4CFv
    .4byte setTevOrder__12J2DTevBlock4FUl11J2DTevOrder
    .4byte getTevOrder__12J2DTevBlock4FUl
    .4byte setTevColor__12J2DTevBlock4FUl13J2DGXColorS10
    .4byte getTevColor__12J2DTevBlock4FUl
    .4byte setTevKColor__12J2DTevBlock4FUlQ28JUtility6TColor
    .4byte getTevKColor__12J2DTevBlock4FUl
    .4byte setTevKColorSel__12J2DTevBlock4FUlUc
    .4byte getTevKColorSel__12J2DTevBlock4FUl
    .4byte setTevKAlphaSel__12J2DTevBlock4FUlUc
    .4byte getTevKAlphaSel__12J2DTevBlock4FUl
    .4byte setTevStageNum__12J2DTevBlock4FUc
    .4byte getTevStageNum__12J2DTevBlock4CFv
    .4byte setTevStage__12J2DTevBlock4FUl11J2DTevStage
    .4byte getTevStage__12J2DTevBlock4FUl
    .4byte setTevSwapModeInfo__12J2DTevBlock4FUl18J2DTevSwapModeInfo
    .4byte setTevSwapModeTable__12J2DTevBlock4FUl19J2DTevSwapModeTable
    .4byte getTevSwapModeTable__12J2DTevBlock4FUl
    .4byte setIndTevStage__12J2DTevBlock4FUl14J2DIndTevStage
    .4byte getIndTevStage__12J2DTevBlock4FUl
    .4byte insertTexture__12J2DTevBlock4FUlPC7ResTIMG
    .4byte insertTexture__12J2DTevBlock4FUlPC7ResTIMGP10JUTPalette
    .4byte insertTexture__12J2DTevBlock4FUlP10JUTTexture
    .4byte setTexture__12J2DTevBlock4FUlPC7ResTIMG
    .4byte setTexture__12J2DTevBlock4FUlP10JUTTexture
    .4byte removeTexture__12J2DTevBlock4FUl
    .4byte setFont__12J2DTevBlock4FP7ResFONT
    .4byte setFont__12J2DTevBlock4FP7JUTFont
    .4byte setPalette__12J2DTevBlock4FUlPC7ResTLUT
    .4byte prepareTexture__12J2DTevBlock4FUc
    .4byte getTexture__12J2DTevBlock4FUl
    .4byte getPalette__12J2DTevBlock4FUl
    .4byte getFont__12J2DTevBlock4Fv
    .4byte shiftDeleteFlag__12J2DTevBlock4FUcb
    .4byte setUndeleteFlag__12J2DTevBlock4FUc
    .4byte setFontUndeleteFlag__12J2DTevBlock4Fv
    .4byte __dt__12J2DTevBlock4Fv
*/

struct J2DTevBlock4 {
	virtual void initialize();                                              // _08
	virtual void setGX();                                                   // _0C
	virtual void loadTexture(_GXTexMapID, unsigned long);                   // _10
	virtual void getType();                                                 // _14
	virtual void getMaxStage();                                             // _18
	virtual void setTexNo(unsigned long, unsigned short);                   // _1C
	virtual void getTexNo(unsigned long) const;                             // _20
	virtual void setFontNo(unsigned short);                                 // _24
	virtual void getFontNo() const;                                         // _28
	virtual void setTevOrder(unsigned long, J2DTevOrder);                   // _2C
	virtual void getTevOrder(unsigned long);                                // _30
	virtual void setTevColor(unsigned long, J2DGXColorS10);                 // _34
	virtual void getTevColor(unsigned long);                                // _38
	virtual void setTevKColor(unsigned long, JUtility::TColor);             // _3C
	virtual void getTevKColor(unsigned long);                               // _40
	virtual void setTevKColorSel(unsigned long, unsigned char);             // _44
	virtual void getTevKColorSel(unsigned long);                            // _48
	virtual void setTevKAlphaSel(unsigned long, unsigned char);             // _4C
	virtual void getTevKAlphaSel(unsigned long);                            // _50
	virtual void setTevStageNum(unsigned char);                             // _54
	virtual void getTevStageNum() const;                                    // _58
	virtual void setTevStage(unsigned long, J2DTevStage);                   // _5C
	virtual void getTevStage(unsigned long);                                // _60
	virtual void setTevSwapModeInfo(unsigned long, J2DTevSwapModeInfo);     // _64
	virtual void setTevSwapModeTable(unsigned long, J2DTevSwapModeTable);   // _68
	virtual void getTevSwapModeTable(unsigned long);                        // _6C
	virtual void setIndTevStage(unsigned long, J2DIndTevStage);             // _70
	virtual void getIndTevStage(unsigned long);                             // _74
	virtual void insertTexture(unsigned long, const ResTIMG*);              // _78
	virtual void insertTexture(unsigned long, const ResTIMG*, JUTPalette*); // _7C
	virtual void insertTexture(unsigned long, JUTTexture*);                 // _80
	virtual void setTexture(unsigned long, const ResTIMG*);                 // _84
	virtual void setTexture(unsigned long, JUTTexture*);                    // _88
	virtual void removeTexture(unsigned long);                              // _8C
	virtual void setFont(ResFONT*);                                         // _90
	virtual void setFont(JUTFont*);                                         // _94
	virtual void setPalette(unsigned long, const ResTLUT*);                 // _98
	virtual void prepareTexture(unsigned char);                             // _9C
	virtual void getTexture(unsigned long);                                 // _A0
	virtual void getPalette(unsigned long);                                 // _A4
	virtual void getFont();                                                 // _A8
	virtual void shiftDeleteFlag(unsigned char, bool);                      // _AC
	virtual void setUndeleteFlag(unsigned char);                            // _B0
	virtual void setFontUndeleteFlag();                                     // _B4
	virtual ~J2DTevBlock4();                                                // _B8

	// _00 VTBL
};

#endif
