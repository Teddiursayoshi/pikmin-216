#ifndef _GAME_MAPROOM_H
#define _GAME_MAPROOM_H

/*
    __vt__Q24Game7MapRoom:
    .4byte 0
    .4byte 0
    .4byte getPosition__Q24Game7MapRoomFv
    .4byte checkCollision__Q24Game10CellObjectFPQ24Game10CellObject
    .4byte getBoundingSphere__Q24Game7MapRoomFRQ23Sys6Sphere
    .4byte collisionUpdatable__Q24Game7MapRoomFv
    .4byte isPiki__Q24Game10CellObjectFv
    .4byte isNavi__Q24Game10CellObjectFv
    .4byte deferPikiCollision__Q24Game10CellObjectFv
    .4byte getTypeName__Q24Game7MapRoomFv
    .4byte getObjType__Q24Game7MapRoomFv
    .4byte constructor__Q24Game7MapRoomFv
    .4byte doAnimation__Q24Game7MapRoomFv
    .4byte doEntry__Q24Game7MapRoomFv
    .4byte doSetView__Q24Game7MapRoomFi
    .4byte doViewCalc__Q24Game7MapRoomFv
    .4byte doSimulation__Q24Game7MapRoomFf
    .4byte doDirectDraw__Q24Game7MapRoomFR8Graphics
*/

namespace Game {
struct CellObject {
	virtual void getPosition();                   // _08 (weak)
	virtual void checkCollision(CellObject*);     // _0C (weak)
	virtual void getBoundingSphere(Sys::Sphere&); // _10 (weak)
	virtual void collisionUpdatable();            // _14 (weak)
	virtual void isPiki();                        // _18 (weak)
	virtual void isNavi();                        // _1C (weak)
	virtual void deferPikiCollision();            // _20 (weak)
};
} // namespace Game

namespace Game {
struct MapRoom : public CellObject {
	virtual void getPosition();                   // _08 (weak)
	virtual void getBoundingSphere(Sys::Sphere&); // _10 (weak)
	virtual void collisionUpdatable();            // _14 (weak)
	virtual void getTypeName();                   // _24 (weak)
	virtual void getObjType();                    // _28 (weak)
	virtual void constructor();                   // _2C (weak)
	virtual void doAnimation();                   // _30
	virtual void doEntry();                       // _34
	virtual void doSetView(int);                  // _38
	virtual void doViewCalc();                    // _3C
	virtual void doSimulation(float);             // _40
	virtual void doDirectDraw(Graphics&);         // _44

	MapRoom();
	void placeObjects(Game::Cave::FloorInfo*, bool);
};
} // namespace Game

#endif
