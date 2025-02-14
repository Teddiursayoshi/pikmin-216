#ifndef _GAME_GATEFSM_H
#define _GAME_GATEFSM_H

/*
    __vt__Q24Game7GateFSM:
    .4byte 0
    .4byte 0
    .4byte init__Q24Game7GateFSMFPQ24Game8ItemGate
    .4byte "start__Q24Game30StateMachine<Q24Game8ItemGate>FPQ24Game8ItemGateiPQ24Game8StateArg"
    .4byte "exec__Q24Game30StateMachine<Q24Game8ItemGate>FPQ24Game8ItemGate"
    .4byte "transit__Q24Game30StateMachine<Q24Game8ItemGate>FPQ24Game8ItemGateiPQ24Game8StateArg"
    .4byte 0
*/

namespace Game {
struct StateMachine<Game::ItemGate> {
	virtual void init(ItemGate*);                                            // _08
	virtual void StateMachine<ItemGate>::start(ItemGate*, int, StateArg*);   // _0C (weak)
	virtual void StateMachine<ItemGate>::exec(ItemGate*);                    // _10 (weak)
	virtual void StateMachine<ItemGate>::transit(ItemGate*, int, StateArg*); // _14 (weak)
};
} // namespace Game

namespace Game {
struct GateFSM : public StateMachine<Game::ItemGate> {
	virtual void init(ItemGate*); // _08
	virtual void _18() = 0;       // _18
};
} // namespace Game

#endif
