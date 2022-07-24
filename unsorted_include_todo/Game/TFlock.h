#ifndef _GAME_TFLOCK_H
#define _GAME_TFLOCK_H

/*
    __vt__Q24Game6TFlock:
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte isVisible__Q24Game6TFlockFv
    .4byte isWeed__Q24Game6TFlockFv
    .4byte fear__Q24Game6TFlockFv
    .4byte getRadius__Q24Game6TFlockFv
    .4byte damaged__Q24Game6TFlockFf
    .4byte constructor__Q24Game6TFlockFv
*/

namespace Game {
struct TFlock {
	virtual void _08() = 0;      // _08
	virtual void isVisible();    // _0C
	virtual void isWeed();       // _10
	virtual void fear();         // _14
	virtual void getRadius();    // _18
	virtual void damaged(float); // _1C
	virtual void constructor();  // _20

	// _00 VTBL
};
} // namespace Game

#endif
