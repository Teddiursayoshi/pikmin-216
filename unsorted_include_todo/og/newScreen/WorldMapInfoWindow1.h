#ifndef _OG_NEWSCREEN_WORLDMAPINFOWINDOW1_H
#define _OG_NEWSCREEN_WORLDMAPINFOWINDOW1_H

/*
    __vt__Q32og9newScreen19WorldMapInfoWindow1:
    .4byte 0
    .4byte 0
    .4byte getSceneType__Q32og9newScreen19WorldMapInfoWindow1Fv
    .4byte getOwnerID__Q32og9newScreen12SMenuPauseVSFv
    .4byte getMemberID__Q32og9newScreen19WorldMapInfoWindow1Fv
    .4byte isUseBackupSceneInfo__Q32og9newScreen19WorldMapInfoWindow1Fv
    .4byte isDrawInDemo__Q26Screen9SceneBaseCFv
    .4byte getResName__Q32og9newScreen19WorldMapInfoWindow1CFv
    .4byte doCreateObj__Q32og9newScreen19WorldMapInfoWindow1FP10JKRArchive
    .4byte doUserCallBackFunc__Q32og9newScreen12SMenuPauseVSFPQ28Resource10MgrCommand
    .4byte setPort__Q26Screen9SceneBaseFR8Graphics
    .4byte doUpdateActive__Q32og9newScreen12SMenuPauseVSFv
    .4byte doConfirmSetScene__Q32og9newScreen19WorldMapInfoWindow1FRQ26Screen11SetSceneArg
    .4byte doConfirmStartScene__Q26Screen9SceneBaseFPQ26Screen13StartSceneArg
    .4byte doConfirmEndScene__Q26Screen9SceneBaseFRPQ26Screen11EndSceneArg
    .4byte doStart__Q26Screen9SceneBaseFPQ26Screen13StartSceneArg
    .4byte doEnd__Q26Screen9SceneBaseFPQ26Screen11EndSceneArg
    .4byte setDefaultDispMember__Q26Screen9SceneBaseFv
    .4byte doSetBackupScene__Q32og9newScreen12SMenuPauseVSFRQ26Screen11SetSceneArg
    .4byte doGetFinishState__Q32og9newScreen19WorldMapInfoWindow1Fv
*/

namespace og {
namespace newScreen {
struct SMenuPauseVS {
	virtual void getSceneType();                            // _08 (weak)
	virtual void getOwnerID();                              // _0C (weak)
	virtual void getMemberID();                             // _10 (weak)
	virtual void isUseBackupSceneInfo();                    // _14 (weak)
	virtual void _18() = 0;                                 // _18
	virtual void getResName() const;                        // _1C (weak)
	virtual void doCreateObj(JKRArchive*);                  // _20
	virtual void doUserCallBackFunc(Resource::MgrCommand*); // _24
	virtual void _28() = 0;                                 // _28
	virtual void doUpdateActive();                          // _2C
	virtual void doConfirmSetScene(Screen::SetSceneArg&);   // _30
	virtual void _34() = 0;                                 // _34
	virtual void _38() = 0;                                 // _38
	virtual void _3C() = 0;                                 // _3C
	virtual void _40() = 0;                                 // _40
	virtual void _44() = 0;                                 // _44
	virtual void doSetBackupScene(Screen::SetSceneArg&);    // _48
};
} // namespace newScreen
} // namespace og

namespace Screen {
struct SceneBase {
	virtual void getSceneType();                          // _08 (weak)
	virtual void _0C() = 0;                               // _0C
	virtual void getMemberID();                           // _10 (weak)
	virtual void isUseBackupSceneInfo();                  // _14 (weak)
	virtual void isDrawInDemo() const;                    // _18 (weak)
	virtual void getResName() const;                      // _1C (weak)
	virtual void doCreateObj(JKRArchive*);                // _20
	virtual void _24() = 0;                               // _24
	virtual void setPort(Graphics&);                      // _28 (weak)
	virtual void _2C() = 0;                               // _2C
	virtual void doConfirmSetScene(Screen::SetSceneArg&); // _30
	virtual void doConfirmStartScene(StartSceneArg*);     // _34 (weak)
	virtual void doConfirmEndScene(EndSceneArg*&);        // _38 (weak)
	virtual void doStart(StartSceneArg*);                 // _3C
	virtual void doEnd(EndSceneArg*);                     // _40
	virtual void setDefaultDispMember();                  // _44 (weak)
};
} // namespace Screen

namespace og {
namespace newScreen {
struct WorldMapInfoWindow1 : public SMenuPauseVS, public SceneBase {
	virtual void getSceneType();                          // _08 (weak)
	virtual void getMemberID();                           // _10 (weak)
	virtual void isUseBackupSceneInfo();                  // _14 (weak)
	virtual void getResName() const;                      // _1C (weak)
	virtual void doCreateObj(JKRArchive*);                // _20
	virtual void doConfirmSetScene(Screen::SetSceneArg&); // _30
	virtual void doGetFinishState();                      // _4C

	WorldMapInfoWindow1();
};
} // namespace newScreen
} // namespace og

#endif
