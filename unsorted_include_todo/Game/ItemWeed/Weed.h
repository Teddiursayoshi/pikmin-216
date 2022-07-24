#ifndef _GAME_ITEMWEED_WEED_H
#define _GAME_ITEMWEED_WEED_H

/*
    __vt__Q34Game8ItemWeed4Weed:
    .4byte 0
    .4byte 0
    .4byte makeMatrix__Q34Game8ItemWeed4WeedFv
    .4byte isVisible__Q24Game6TFlockFv
    .4byte isWeed__Q34Game8ItemWeed4WeedFv
    .4byte fear__Q24Game6TFlockFv
    .4byte getRadius__Q24Game6TFlockFv
    .4byte damaged__Q34Game8ItemWeed4WeedFf
    .4byte constructor__Q24Game6TFlockFv
*/

namespace Game {
struct TFlock {
	virtual void makeMatrix();   // _08
	virtual void isVisible();    // _0C
	virtual void isWeed();       // _10
	virtual void fear();         // _14
	virtual void getRadius();    // _18
	virtual void damaged(float); // _1C
	virtual void constructor();  // _20

	// _00 VTBL
};
} // namespace Game

namespace Game {
namespace ItemWeed {
struct Weed : public TFlock {
	virtual void makeMatrix();   // _08
	virtual void isWeed();       // _10
	virtual void damaged(float); // _1C

	// _00 VTBL
};
} // namespace ItemWeed
} // namespace Game

#endif
