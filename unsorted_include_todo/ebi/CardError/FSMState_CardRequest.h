#ifndef _EBI_CARDERROR_FSMSTATE_CARDREQUEST_H
#define _EBI_CARDERROR_FSMSTATE_CARDREQUEST_H

/*
    __vt__Q33ebi9CardError20FSMState_CardRequest:
    .4byte 0
    .4byte 0
    .4byte init__Q33ebi9CardError8FSMStateFPQ33ebi9CardError4TMgrPQ24Game8StateArg
    .4byte exec__Q33ebi9CardError8FSMStateFPQ33ebi9CardError4TMgr
    .4byte "cleanup__Q24Game31FSMState<Q33ebi9CardError4TMgr>FPQ33ebi9CardError4TMgr"
    .4byte "resume__Q24Game31FSMState<Q33ebi9CardError4TMgr>FPQ33ebi9CardError4TMgr"
    .4byte "restart__Q24Game31FSMState<Q33ebi9CardError4TMgr>FPQ33ebi9CardError4TMgr"
    .4byte "transit__Q24Game31FSMState<Q33ebi9CardError4TMgr>FPQ33ebi9CardError4TMgriPQ24Game8StateArg"
    .4byte do_init__Q33ebi9CardError20FSMState_CardRequestFPQ33ebi9CardError4TMgrPQ24Game8StateArg
    .4byte do_exec__Q33ebi9CardError20FSMState_CardRequestFPQ33ebi9CardError4TMgr
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte do_transitCardNoCard__Q33ebi9CardError20FSMState_CardRequestFPQ33ebi9CardError4TMgr
    .4byte do_transitCardIOError__Q33ebi9CardError20FSMState_CardRequestFPQ33ebi9CardError4TMgr
    .4byte do_transitCardWrongDevice__Q33ebi9CardError20FSMState_CardRequestFPQ33ebi9CardError4TMgr
    .4byte do_transitCardWrongSector__Q33ebi9CardError20FSMState_CardRequestFPQ33ebi9CardError4TMgr
    .4byte do_transitCardBroken__Q33ebi9CardError20FSMState_CardRequestFPQ33ebi9CardError4TMgr
    .4byte do_transitCardEncoding__Q33ebi9CardError20FSMState_CardRequestFPQ33ebi9CardError4TMgr
    .4byte do_transitCardNoFileSpace__Q33ebi9CardError20FSMState_CardRequestFPQ33ebi9CardError4TMgr
    .4byte do_transitCardNoFileEntry__Q33ebi9CardError20FSMState_CardRequestFPQ33ebi9CardError4TMgr
    .4byte do_transitCardFileOpenError__Q33ebi9CardError20FSMState_CardRequestFPQ33ebi9CardError4TMgr
    .4byte do_transitCardSerialNoError__Q33ebi9CardError20FSMState_CardRequestFPQ33ebi9CardError4TMgr
*/

namespace ebi {
namespace CardError {
struct FSMState {
	virtual void init(TMgr*, Game::StateArg*); // _08 (weak)
	virtual void exec(TMgr*);                  // _0C (weak)
};
} // namespace CardError
} // namespace ebi

namespace Game {
struct FSMState<ebi::CardError::TMgr> {
	virtual void _08() = 0;                                      // _08
	virtual void _0C() = 0;                                      // _0C
	virtual void cleanup(ebi::CardError::TMgr*);                 // _10 (weak)
	virtual void resume(ebi::CardError::TMgr*);                  // _14 (weak)
	virtual void restart(ebi::CardError::TMgr*);                 // _18 (weak)
	virtual void transit(ebi::CardError::TMgr*, int, StateArg*); // _1C (weak)
};
} // namespace Game

namespace ebi {
namespace CardError {
struct FSMState_CardRequest : public FSMState, public FSMState<ebi::CardError::TMgr> {
	virtual void do_init(TMgr*, Game::StateArg*);    // _20
	virtual void do_exec(TMgr*);                     // _24
	virtual void _28() = 0;                          // _28
	virtual void _2C() = 0;                          // _2C
	virtual void _30() = 0;                          // _30
	virtual void do_transitCardNoCard(TMgr*);        // _34
	virtual void do_transitCardIOError(TMgr*);       // _38
	virtual void do_transitCardWrongDevice(TMgr*);   // _3C
	virtual void do_transitCardWrongSector(TMgr*);   // _40
	virtual void do_transitCardBroken(TMgr*);        // _44
	virtual void do_transitCardEncoding(TMgr*);      // _48
	virtual void do_transitCardNoFileSpace(TMgr*);   // _4C
	virtual void do_transitCardNoFileEntry(TMgr*);   // _50
	virtual void do_transitCardFileOpenError(TMgr*); // _54
	virtual void do_transitCardSerialNoError(TMgr*); // _58
};
} // namespace CardError
} // namespace ebi

#endif
