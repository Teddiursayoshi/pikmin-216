#ifndef _CAPTION_NODE_H
#define _CAPTION_NODE_H

/*
    __vt__Q27Caption4Node:
    .4byte 0
    .4byte 0
    .4byte __dt__Q27Caption4NodeFv
    .4byte getChildCount__5CNodeFv
    .4byte read__Q27Caption4NodeFR6Stream
*/

struct CNode {
	virtual ~CNode();             // _08
	virtual void getChildCount(); // _0C

	// _00 VTBL
};

namespace Caption {
struct Node : public CNode {
	virtual ~Node();            // _08
	virtual void read(Stream&); // _10

	// _00 VTBL
};
} // namespace Caption

#endif
