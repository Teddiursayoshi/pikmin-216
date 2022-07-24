#ifndef _GAME_CAVE_ENEMYNODE_H
#define _GAME_CAVE_ENEMYNODE_H

/*
    __vt__Q34Game4Cave9EnemyNode:
    .4byte 0
    .4byte 0
    .4byte __dt__Q34Game4Cave9EnemyNodeFv
    .4byte getChildCount__5CNodeFv
    .4byte getObjectId__Q34Game4Cave9EnemyNodeFv
    .4byte getObjectType__Q34Game4Cave9EnemyNodeFv
    .4byte getBirthCount__Q34Game4Cave9EnemyNodeFv
    .4byte getDirection__Q34Game4Cave9EnemyNodeFv
    .4byte getBirthDoorIndex__Q34Game4Cave9EnemyNodeFv
    .4byte getBirthPosition__Q34Game4Cave9EnemyNodeFRfRf
    .4byte getExtraCode__Q34Game4Cave9EnemyNodeFv
    .4byte isFixedBattery__Q24Game16ObjectLayoutNodeFv
*/

struct CNode {
	virtual void _08() = 0;       // _08
	virtual void getChildCount(); // _0C

	// _00 VTBL
};

namespace Game {
struct ObjectLayoutNode {
	virtual void _08() = 0;        // _08
	virtual void _0C() = 0;        // _0C
	virtual void _10() = 0;        // _10
	virtual void _14() = 0;        // _14
	virtual void _18() = 0;        // _18
	virtual void _1C() = 0;        // _1C
	virtual void _20() = 0;        // _20
	virtual void _24() = 0;        // _24
	virtual void _28() = 0;        // _28
	virtual void isFixedBattery(); // _2C

	// _00 VTBL
};
} // namespace Game

namespace Game {
namespace Cave {
struct EnemyNode : public CNode, public ObjectLayoutNode {
	virtual ~EnemyNode();                          // _08
	virtual void getObjectId();                    // _10
	virtual void getObjectType();                  // _14
	virtual void getBirthCount();                  // _18
	virtual void getDirection();                   // _1C
	virtual void getBirthDoorIndex();              // _20
	virtual void getBirthPosition(float&, float&); // _24
	virtual void getExtraCode();                   // _28

	// _00 VTBL
};
} // namespace Cave
} // namespace Game

#endif
