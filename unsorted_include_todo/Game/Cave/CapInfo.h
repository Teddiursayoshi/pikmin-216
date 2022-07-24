#ifndef _GAME_CAVE_CAPINFO_H
#define _GAME_CAVE_CAPINFO_H

/*
    __vt__Q34Game4Cave7CapInfo:
    .4byte 0
    .4byte 0
    .4byte __dt__Q34Game4Cave7CapInfoFv
    .4byte getChildCount__5CNodeFv
    .4byte read__Q34Game4Cave7CapInfoFR6Stream
*/

struct CNode {
	virtual ~CNode();             // _08
	virtual void getChildCount(); // _0C

	// _00 VTBL
};

namespace Game {
namespace Cave {
struct CapInfo : public CNode {
	virtual ~CapInfo();         // _08
	virtual void read(Stream&); // _10

	// _00 VTBL
};
} // namespace Cave
} // namespace Game

#endif
