#ifndef _GAME_CYLINDERBASE_H
#define _GAME_CYLINDERBASE_H

/*
    __vt__Q24Game12CylinderBase:
    .4byte 0
    .4byte 0
    .4byte setFilterTextureID__Q24Game12CylinderBaseFi
    .4byte drawInit__Q24Game12CylinderBaseFv
    .4byte drawCylinder__Q24Game12CylinderBaseFR7Matrixfi
    .4byte drawFinish__Q24Game12CylinderBaseFv
*/

namespace Game {
struct CylinderBase {
	virtual void setFilterTextureID(int);     // _08
	virtual void drawInit();                  // _0C
	virtual void drawCylinder(Matrixf&, int); // _10
	virtual void drawFinish();                // _14

	// _00 VTBL
};
} // namespace Game

#endif
