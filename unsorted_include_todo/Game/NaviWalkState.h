#ifndef _GAME_NAVIWALKSTATE_H
#define _GAME_NAVIWALKSTATE_H

/*
    __vt__Q24Game13NaviWalkState:
    .4byte 0
    .4byte 0
    .4byte init__Q24Game13NaviWalkStateFPQ24Game4NaviPQ24Game8StateArg
    .4byte exec__Q24Game13NaviWalkStateFPQ24Game4Navi
    .4byte cleanup__Q24Game13NaviWalkStateFPQ24Game4Navi
    .4byte "resume__Q24Game22FSMState<Q24Game4Navi>FPQ24Game4Navi"
    .4byte "restart__Q24Game22FSMState<Q24Game4Navi>FPQ24Game4Navi"
    .4byte "transit__Q24Game22FSMState<Q24Game4Navi>FPQ24Game4NaviiPQ24Game8StateArg"
    .4byte invincible__Q24Game9NaviStateFv
    .4byte onKeyEvent__Q24Game13NaviWalkStateFPQ24Game4NaviRCQ28SysShape8KeyEvent
    .4byte collisionCallback__Q24Game13NaviWalkStateFPQ24Game4NaviRQ24Game9CollEvent
    .4byte "wallCallback__Q24Game13NaviWalkStateFPQ24Game4NaviR10Vector3<f>"
    .4byte bounceCallback__Q24Game9NaviStateFPQ24Game4NaviPQ23Sys8Triangle
    .4byte pressable__Q24Game9NaviStateFv
    .4byte callable__Q24Game13NaviWalkStateFv
    .4byte ignoreAtari__Q24Game9NaviStateFPQ24Game8Creature
    .4byte needYChangeMotion__Q24Game13NaviWalkStateFv
    .4byte vsUsableY__Q24Game9NaviStateFv
    .4byte draw2d__Q24Game9NaviStateFR14J2DGrafContextRi
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
*/

namespace Game {
struct FSMState<Game::Navi> {
	virtual void init(Navi*, StateArg*);                         // _08
	virtual void exec(Navi*);                                    // _0C
	virtual void cleanup(Navi*);                                 // _10
	virtual void FSMState<Navi>::resume(Navi*);                  // _14 (weak)
	virtual void FSMState<Navi>::restart(Navi*);                 // _18 (weak)
	virtual void FSMState<Navi>::transit(Navi*, int, StateArg*); // _1C (weak)
};
} // namespace Game

namespace Game {
struct NaviState {
	virtual void init(Navi*, StateArg*);                       // _08
	virtual void exec(Navi*);                                  // _0C
	virtual void cleanup(Navi*);                               // _10
	virtual void _14() = 0;                                    // _14
	virtual void _18() = 0;                                    // _18
	virtual void _1C() = 0;                                    // _1C
	virtual void invincible();                                 // _20 (weak)
	virtual void onKeyEvent(Navi*, const SysShape::KeyEvent&); // _24
	virtual void collisionCallback(Navi*, CollEvent&);         // _28
	virtual void wallCallback(Navi*, Vector3<float>&);         // _2C
	virtual void bounceCallback(Navi*, Sys::Triangle*);        // _30 (weak)
	virtual void pressable();                                  // _34 (weak)
	virtual void callable();                                   // _38 (weak)
	virtual void ignoreAtari(Creature*);                       // _3C (weak)
	virtual void needYChangeMotion();                          // _40 (weak)
	virtual void vsUsableY();                                  // _44 (weak)
	virtual void draw2d(J2DGrafContext&, int&);                // _48
};
} // namespace Game

namespace Game {
struct NaviWalkState : public FSMState<Game::Navi>, public NaviState {
	virtual void init(Navi*, StateArg*);                       // _08
	virtual void exec(Navi*);                                  // _0C
	virtual void cleanup(Navi*);                               // _10
	virtual void onKeyEvent(Navi*, const SysShape::KeyEvent&); // _24
	virtual void collisionCallback(Navi*, CollEvent&);         // _28
	virtual void wallCallback(Navi*, Vector3<float>&);         // _2C
	virtual void callable();                                   // _38 (weak)
	virtual void needYChangeMotion();                          // _40 (weak)
	virtual void _4C() = 0;                                    // _4C
	virtual void _50() = 0;                                    // _50
	virtual void _54() = 0;                                    // _54
	virtual void _58() = 0;                                    // _58
	virtual void _5C() = 0;                                    // _5C
	virtual void _60() = 0;                                    // _60
	virtual void _64() = 0;                                    // _64
	virtual void _68() = 0;                                    // _68
	virtual void _6C() = 0;                                    // _6C
	virtual void _70() = 0;                                    // _70
	virtual void _74() = 0;                                    // _74
	virtual void _78() = 0;                                    // _78
	virtual void _7C() = 0;                                    // _7C
	virtual void _80() = 0;                                    // _80
	virtual void _84() = 0;                                    // _84

	void execAI(Game::Navi*);
	void checkAI(Game::Navi*);
	void initAI_wait(Game::Navi*);
	void execAI_wait(Game::Navi*);
	void initAI_animation(Game::Navi*);
	void execAI_animation(Game::Navi*);
	void execAI_attack(Game::Navi*);
	void initAI_escape(Game::Navi*);
	void execAI_escape(Game::Navi*);
	void blendVelocity(Game::Navi*, Vector3<float>&);
};
} // namespace Game

#endif
