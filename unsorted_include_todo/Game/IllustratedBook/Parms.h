#ifndef _GAME_ILLUSTRATEDBOOK_PARMS_H
#define _GAME_ILLUSTRATEDBOOK_PARMS_H

/*
    __vt__Q34Game15IllustratedBook5Parms:
    .4byte 0
    .4byte 0
    .4byte __dt__Q34Game15IllustratedBook5ParmsFv
    .4byte getChildCount__5CNodeFv
    .4byte read__Q34Game15IllustratedBook5ParmsFR6Stream
*/

struct CNode {
	virtual ~CNode();             // _08
	virtual void getChildCount(); // _0C

	// _00 VTBL
};

namespace Game {
namespace IllustratedBook {
struct Parms : public CNode {
	virtual ~Parms();           // _08
	virtual void read(Stream&); // _10

	// _00 VTBL
};
} // namespace IllustratedBook
} // namespace Game

#endif
