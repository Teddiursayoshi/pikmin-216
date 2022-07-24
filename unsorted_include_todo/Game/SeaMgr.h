#ifndef _GAME_SEAMGR_H
#define _GAME_SEAMGR_H

/*
    __vt__Q24Game6SeaMgr:
    .4byte 0
    .4byte 0
    .4byte __dt__Q24Game6SeaMgrFv
    .4byte getChildCount__5CNodeFv
    .4byte "getObject__27Container<Q24Game8WaterBox>FPv"
    .4byte "getNext__31NodeObjectMgr<Q24Game8WaterBox>FPv"
    .4byte "getStart__31NodeObjectMgr<Q24Game8WaterBox>Fv"
    .4byte "getEnd__31NodeObjectMgr<Q24Game8WaterBox>Fv"
    .4byte "get__31NodeObjectMgr<Q24Game8WaterBox>FPv"
    .4byte "getAt__27Container<Q24Game8WaterBox>Fi"
    .4byte "getTo__27Container<Q24Game8WaterBox>Fv"
    .4byte 0
    .4byte 0
    .4byte "@28@doAnimation__27ObjectMgr<Q24Game8WaterBox>Fv"
    .4byte "@28@doEntry__27ObjectMgr<Q24Game8WaterBox>Fv"
    .4byte "@28@doSetView__27ObjectMgr<Q24Game8WaterBox>Fi"
    .4byte "@28@doViewCalc__27ObjectMgr<Q24Game8WaterBox>Fv"
    .4byte "@28@doSimulation__27ObjectMgr<Q24Game8WaterBox>Ff"
    .4byte "@28@doDirectDraw__27ObjectMgr<Q24Game8WaterBox>FR8Graphics"
    .4byte doSimpleDraw__16GenericObjectMgrFP8Viewport
    .4byte loadResources__16GenericObjectMgrFv
    .4byte "@28@resetMgr__31NodeObjectMgr<Q24Game8WaterBox>Fv"
    .4byte pausable__16GenericObjectMgrFv
    .4byte frozenable__16GenericObjectMgrFv
    .4byte getMatrixLoadType__16GenericObjectMgrFv
    .4byte "doAnimation__27ObjectMgr<Q24Game8WaterBox>Fv"
    .4byte "doEntry__27ObjectMgr<Q24Game8WaterBox>Fv"
    .4byte "doSetView__27ObjectMgr<Q24Game8WaterBox>Fi"
    .4byte "doViewCalc__27ObjectMgr<Q24Game8WaterBox>Fv"
    .4byte "doSimulation__27ObjectMgr<Q24Game8WaterBox>Ff"
    .4byte "doDirectDraw__27ObjectMgr<Q24Game8WaterBox>FR8Graphics"
    .4byte "resetMgr__31NodeObjectMgr<Q24Game8WaterBox>Fv"
*/

struct CNode {
	virtual void _08() = 0;       // _08
	virtual void getChildCount(); // _0C

	// _00 VTBL
};

namespace Container < Game
{
	struct WaterBox >
	{
		virtual void _08() = 0;               // _08
		virtual void _0C() = 0;               // _0C
		virtual void getObject(void*);        // _10
		virtual void getNext(void*);          // _14
		virtual void getStart();              // _18
		virtual void getEnd();                // _1C
		virtual void get(void*);              // _20
		virtual void getAt(int);              // _24
		virtual void getTo();                 // _28
		virtual void _2C() = 0;               // _2C
		virtual void _30() = 0;               // _30
		virtual void _34() = 0;               // _34
		virtual void _38() = 0;               // _38
		virtual void _3C() = 0;               // _3C
		virtual void _40() = 0;               // _40
		virtual void _44() = 0;               // _44
		virtual void _48() = 0;               // _48
		virtual void _4C() = 0;               // _4C
		virtual void _50() = 0;               // _50
		virtual void _54() = 0;               // _54
		virtual void _58() = 0;               // _58
		virtual void _5C() = 0;               // _5C
		virtual void _60() = 0;               // _60
		virtual void doAnimation();           // _64
		virtual void doEntry();               // _68
		virtual void doSetView(int);          // _6C
		virtual void doViewCalc();            // _70
		virtual void doSimulation(float);     // _74
		virtual void doDirectDraw(Graphics&); // _78
		virtual void resetMgr();              // _7C

		// _00 VTBL
	};
} // namespace Game

struct GenericObjectMgr {
	virtual void _08() = 0;               // _08
	virtual void _0C() = 0;               // _0C
	virtual void _10() = 0;               // _10
	virtual void _14() = 0;               // _14
	virtual void _18() = 0;               // _18
	virtual void _1C() = 0;               // _1C
	virtual void _20() = 0;               // _20
	virtual void _24() = 0;               // _24
	virtual void _28() = 0;               // _28
	virtual void _2C() = 0;               // _2C
	virtual void _30() = 0;               // _30
	virtual void _34() = 0;               // _34
	virtual void _38() = 0;               // _38
	virtual void _3C() = 0;               // _3C
	virtual void _40() = 0;               // _40
	virtual void _44() = 0;               // _44
	virtual void _48() = 0;               // _48
	virtual void doSimpleDraw(Viewport*); // _4C
	virtual void loadResources();         // _50
	virtual void _54() = 0;               // _54
	virtual void pausable();              // _58
	virtual void frozenable();            // _5C
	virtual void getMatrixLoadType();     // _60

	// _00 VTBL
};

namespace Game {
struct SeaMgr : public CNode, public WaterBox >, public GenericObjectMgr {
	virtual ~SeaMgr();      // _08
	virtual void _2C() = 0; // _2C
	virtual void _30() = 0; // _30

	// _00 VTBL
};
} // namespace Game

#endif
