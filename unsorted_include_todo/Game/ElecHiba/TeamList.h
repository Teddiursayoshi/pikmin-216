#ifndef _GAME_ELECHIBA_TEAMLIST_H
#define _GAME_ELECHIBA_TEAMLIST_H

/*
    __vt__Q34Game8ElecHiba8TeamList:
    .4byte 0
    .4byte 0
    .4byte __dt__Q34Game8ElecHiba8TeamListFv
    .4byte getChildCount__5CNodeFv
*/

struct CNode {
	virtual ~CNode();             // _08 (weak)
	virtual void getChildCount(); // _0C
};

namespace Game {
namespace ElecHiba {
struct TeamList : public CNode {
	virtual ~TeamList(); // _08 (weak)
};
} // namespace ElecHiba
} // namespace Game

#endif
