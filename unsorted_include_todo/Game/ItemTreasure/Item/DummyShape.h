#ifndef _GAME_ITEMTREASURE_ITEM_DUMMYSHAPE_H
#define _GAME_ITEMTREASURE_ITEM_DUMMYSHAPE_H

/*
    __vt__Q44Game12ItemTreasure4Item10DummyShape:
    .4byte 0
    .4byte 0
    .4byte getMatrix__Q44Game12ItemTreasure4Item10DummyShapeFi
    .4byte isModel__Q28SysShape9MtxObjectFv
*/

namespace SysShape {
struct MtxObject {
	virtual void getMatrix(int); // _08 (weak)
	virtual void isModel();      // _0C (weak)
};
} // namespace SysShape

namespace Game {
namespace ItemTreasure {
namespace Item {
struct DummyShape : public MtxObject {
	virtual void getMatrix(int); // _08 (weak)
};
} // namespace Item
} // namespace ItemTreasure
} // namespace Game

#endif
