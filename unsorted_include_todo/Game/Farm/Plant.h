#ifndef _GAME_FARM_PLANT_H
#define _GAME_FARM_PLANT_H

/*
    __vt__Q34Game4Farm5Plant:
    .4byte 0
    .4byte 0
    .4byte __dt__Q34Game4Farm5PlantFv
    .4byte getChildCount__5CNodeFv
*/

struct CNode {
	virtual ~CNode();             // _08
	virtual void getChildCount(); // _0C

	// _00 VTBL
};

namespace Game {
namespace Farm {
struct Plant : public CNode {
	virtual ~Plant(); // _08

	// _00 VTBL
};
} // namespace Farm
} // namespace Game

#endif
