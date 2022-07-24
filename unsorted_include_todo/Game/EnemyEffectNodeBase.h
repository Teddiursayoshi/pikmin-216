#ifndef _GAME_ENEMYEFFECTNODEBASE_H
#define _GAME_ENEMYEFFECTNODEBASE_H

/*
    __vt__Q24Game19EnemyEffectNodeBase:
    .4byte 0
    .4byte 0
    .4byte __dt__Q24Game19EnemyEffectNodeBaseFv
    .4byte getChildCount__5CNodeFv
    .4byte 0
    .4byte 0
    .4byte 0
*/

struct CNode {
	virtual ~CNode();             // _08
	virtual void getChildCount(); // _0C

	// _00 VTBL
};

namespace Game {
struct EnemyEffectNodeBase : public CNode {
	virtual ~EnemyEffectNodeBase(); // _08
	virtual void _10() = 0;         // _10
	virtual void _14() = 0;         // _14
	virtual void _18() = 0;         // _18

	// _00 VTBL
};
} // namespace Game

#endif
