#ifndef _P2JME_MOVIE_ABTNPANE_H
#define _P2JME_MOVIE_ABTNPANE_H

/*
    __vt__Q35P2JME5Movie8AbtnPane:
    .4byte 0
    .4byte 0
    .4byte __dt__Q35P2JME5Movie8AbtnPaneFv
    .4byte getChildCount__5CNodeFv
    .4byte update__Q35P2JME5Movie8AbtnPaneFv
    .4byte draw__Q29P2DScreen4NodeFR8GraphicsR14J2DGrafContext
    .4byte doInit__Q35P2JME5Movie8AbtnPaneFv
*/

struct CNode {
	virtual ~CNode();             // _08 (weak)
	virtual void getChildCount(); // _0C
};

namespace P2DScreen {
struct Node {
	virtual ~Node();                               // _08 (weak)
	virtual void _0C() = 0;                        // _0C
	virtual void update();                         // _10
	virtual void draw(Graphics&, J2DGrafContext&); // _14 (weak)
};
} // namespace P2DScreen

namespace P2JME {
namespace Movie {
struct AbtnPane : public CNode, public Node {
	virtual ~AbtnPane();   // _08 (weak)
	virtual void update(); // _10
	virtual void doInit(); // _18
};
} // namespace Movie
} // namespace P2JME

#endif
