#ifndef _MORIMURA_TVSSELECTSCENE_H
#define _MORIMURA_TVSSELECTSCENE_H

/*
    __vt__Q28Morimura14TVsSelectScene:
    .4byte 0
    .4byte 0
    .4byte getSceneType__Q28Morimura14TVsSelectSceneFv
    .4byte getOwnerID__Q28Morimura14TVsSelectSceneFv
    .4byte getMemberID__Q28Morimura14TVsSelectSceneFv
    .4byte isUseBackupSceneInfo__Q26Screen9SceneBaseFv
    .4byte isDrawInDemo__Q26Screen9SceneBaseCFv
    .4byte getResName__Q28Morimura14TVsSelectSceneCFv
    .4byte doCreateObj__Q28Morimura14TVsSelectSceneFP10JKRArchive
    .4byte doUserCallBackFunc__Q26Screen9SceneBaseFPQ28Resource10MgrCommand
    .4byte setPort__Q26Screen9SceneBaseFR8Graphics
    .4byte doUpdateActive__Q26Screen9SceneBaseFv
    .4byte doConfirmSetScene__Q26Screen9SceneBaseFRQ26Screen11SetSceneArg
    .4byte doConfirmStartScene__Q26Screen9SceneBaseFPQ26Screen13StartSceneArg
    .4byte doConfirmEndScene__Q26Screen9SceneBaseFRPQ26Screen11EndSceneArg
    .4byte doStart__Q28Morimura14TVsSelectSceneFPQ26Screen13StartSceneArg
    .4byte doEnd__Q26Screen9SceneBaseFPQ26Screen11EndSceneArg
    .4byte setDefaultDispMember__Q26Screen9SceneBaseFv
    .4byte doSetBackupScene__Q26Screen9SceneBaseFRQ26Screen11SetSceneArg
    .4byte doGetFinishState__Q26Screen9SceneBaseFv
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
*/

namespace Screen {
struct SceneBase {
	virtual void getSceneType();                            // _08 (weak)
	virtual void getOwnerID();                              // _0C (weak)
	virtual void getMemberID();                             // _10 (weak)
	virtual void isUseBackupSceneInfo();                    // _14 (weak)
	virtual void isDrawInDemo() const;                      // _18 (weak)
	virtual void getResName() const;                        // _1C (weak)
	virtual void doCreateObj(JKRArchive*);                  // _20
	virtual void doUserCallBackFunc(Resource::MgrCommand*); // _24 (weak)
	virtual void setPort(Graphics&);                        // _28 (weak)
	virtual void doUpdateActive();                          // _2C
	virtual void doConfirmSetScene(SetSceneArg&);           // _30 (weak)
	virtual void doConfirmStartScene(StartSceneArg*);       // _34 (weak)
	virtual void doConfirmEndScene(EndSceneArg*&);          // _38 (weak)
	virtual void doStart(Screen::StartSceneArg*);           // _3C
	virtual void doEnd(EndSceneArg*);                       // _40
	virtual void setDefaultDispMember();                    // _44 (weak)
	virtual void doSetBackupScene(SetSceneArg&);            // _48 (weak)
	virtual void doGetFinishState();                        // _4C (weak)
};
} // namespace Screen

namespace Morimura {
struct TVsSelectScene : public SceneBase {
	virtual void getSceneType();                  // _08 (weak)
	virtual void getOwnerID();                    // _0C (weak)
	virtual void getMemberID();                   // _10 (weak)
	virtual void getResName() const;              // _1C (weak)
	virtual void doCreateObj(JKRArchive*);        // _20
	virtual void doStart(Screen::StartSceneArg*); // _3C
	virtual void _50() = 0;                       // _50
	virtual void _54() = 0;                       // _54
	virtual void _58() = 0;                       // _58
	virtual void _5C() = 0;                       // _5C
	virtual void _60() = 0;                       // _60
	virtual void _64() = 0;                       // _64
};
} // namespace Morimura

#endif
