#ifndef _GAME_ENEMYSTONE_DRAWINFO_H
#define _GAME_ENEMYSTONE_DRAWINFO_H

/*
    __vt__Q34Game10EnemyStone8DrawInfo:
    .4byte 0
    .4byte 0
    .4byte __dt__Q34Game10EnemyStone8DrawInfoFv
    .4byte getChildCount__5CNodeFv
*/

struct CNode {
	virtual ~CNode();             // _08
	virtual void getChildCount(); // _0C

	// _00 VTBL
};

namespace Game {
namespace EnemyStone {
struct DrawInfo : public CNode {
	virtual ~DrawInfo(); // _08

	// _00 VTBL
};
} // namespace EnemyStone
} // namespace Game

#endif
