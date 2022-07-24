#ifndef _KH_SCREEN_SCENEWINLOSEREASON_H
#define _KH_SCREEN_SCENEWINLOSEREASON_H

/*
    __vt__Q32kh6Screen18SceneWinLoseReason:
    .4byte 0
    .4byte 0
    .4byte getSceneType__Q32kh6Screen18SceneWinLoseReasonFv
    .4byte getOwnerID__Q32kh6Screen18SceneWinLoseReasonFv
    .4byte getMemberID__Q32kh6Screen18SceneWinLoseReasonFv
    .4byte isUseBackupSceneInfo__Q26Screen9SceneBaseFv
    .4byte isDrawInDemo__Q26Screen9SceneBaseCFv
    .4byte getResName__Q32kh6Screen18SceneWinLoseReasonCFv
    .4byte doCreateObj__Q32kh6Screen18SceneWinLoseReasonFP10JKRArchive
    .4byte doUserCallBackFunc__Q26Screen9SceneBaseFPQ28Resource10MgrCommand
    .4byte setPort__Q26Screen9SceneBaseFR8Graphics
    .4byte doUpdateActive__Q32kh6Screen18SceneWinLoseReasonFv
    .4byte doConfirmSetScene__Q26Screen9SceneBaseFRQ26Screen11SetSceneArg
    .4byte doConfirmStartScene__Q26Screen9SceneBaseFPQ26Screen13StartSceneArg
    .4byte doConfirmEndScene__Q26Screen9SceneBaseFRPQ26Screen11EndSceneArg
    .4byte doStart__Q26Screen9SceneBaseFPQ26Screen13StartSceneArg
    .4byte doEnd__Q32kh6Screen18SceneWinLoseReasonFPQ26Screen11EndSceneArg
    .4byte setDefaultDispMember__Q26Screen9SceneBaseFv
    .4byte doSetBackupScene__Q26Screen9SceneBaseFRQ26Screen11SetSceneArg
    .4byte doGetFinishState__Q26Screen9SceneBaseFv
*/

namespace Screen {
struct SceneBase {
	virtual void getSceneType();                            // _08
	virtual void getOwnerID();                              // _0C
	virtual void getMemberID();                             // _10
	virtual void isUseBackupSceneInfo();                    // _14
	virtual void isDrawInDemo() const;                      // _18
	virtual void getResName() const;                        // _1C
	virtual void doCreateObj(JKRArchive*);                  // _20
	virtual void doUserCallBackFunc(Resource::MgrCommand*); // _24
	virtual void setPort(Graphics&);                        // _28
	virtual void doUpdateActive();                          // _2C
	virtual void doConfirmSetScene(SetSceneArg&);           // _30
	virtual void doConfirmStartScene(StartSceneArg*);       // _34
	virtual void doConfirmEndScene(EndSceneArg*&);          // _38
	virtual void doStart(StartSceneArg*);                   // _3C
	virtual void doEnd(EndSceneArg*);                       // _40
	virtual void setDefaultDispMember();                    // _44
	virtual void doSetBackupScene(SetSceneArg&);            // _48
	virtual void doGetFinishState();                        // _4C

	// _00 VTBL
};
} // namespace Screen

namespace kh {
namespace Screen {
struct SceneWinLoseReason : public SceneBase {
	virtual void getSceneType();           // _08
	virtual void getOwnerID();             // _0C
	virtual void getMemberID();            // _10
	virtual void getResName() const;       // _1C
	virtual void doCreateObj(JKRArchive*); // _20
	virtual void doUpdateActive();         // _2C
	virtual void doEnd(EndSceneArg*);      // _40

	// _00 VTBL
};
} // namespace Screen
} // namespace kh

#endif
