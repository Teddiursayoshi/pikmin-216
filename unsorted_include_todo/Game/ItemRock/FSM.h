#ifndef _GAME_ITEMROCK_FSM_H
#define _GAME_ITEMROCK_FSM_H

/*
    __vt__Q34Game8ItemRock3FSM:
    .4byte 0
    .4byte 0
    .4byte init__Q34Game8ItemRock3FSMFPQ34Game8ItemRock4Item
    .4byte "start__Q24Game35StateMachine<Q34Game8ItemRock4Item>FPQ34Game8ItemRock4ItemiPQ24Game8StateArg"
    .4byte "exec__Q24Game35StateMachine<Q34Game8ItemRock4Item>FPQ34Game8ItemRock4Item"
    .4byte "transit__Q24Game35StateMachine<Q34Game8ItemRock4Item>FPQ34Game8ItemRock4ItemiPQ24Game8StateArg"
*/

namespace Game {
struct StateMachine<Game::ItemRock::Item> {
	virtual void init(Item*);                                                            // _08
	virtual void StateMachine<ItemRock::Item>::start(ItemRock::Item*, int, StateArg*);   // _0C (weak)
	virtual void StateMachine<ItemRock::Item>::exec(ItemRock::Item*);                    // _10 (weak)
	virtual void StateMachine<ItemRock::Item>::transit(ItemRock::Item*, int, StateArg*); // _14 (weak)
};
} // namespace Game

namespace Game {
namespace ItemRock {
struct FSM : public StateMachine<Game::ItemRock::Item> {
	virtual void init(Item*); // _08
};
} // namespace ItemRock
} // namespace Game

#endif
