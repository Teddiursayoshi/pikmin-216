#ifndef _OG_SCREEN_DISPMEMBERSMENUALL_H
#define _OG_SCREEN_DISPMEMBERSMENUALL_H

/*
    __vt__Q32og6Screen18DispMemberSMenuAll:
    .4byte 0
    .4byte 0
    .4byte getSize__Q32og6Screen18DispMemberSMenuAllFv
    .4byte getOwnerID__Q32og6Screen18DispMemberSMenuAllFv
    .4byte getMemberID__Q32og6Screen18DispMemberSMenuAllFv
    .4byte doSetSubMemberAll__Q32og6Screen18DispMemberSMenuAllFv
*/

namespace og {
namespace Screen {
struct DispMemberSMenuAll {
	virtual void getSize();           // _08
	virtual void getOwnerID();        // _0C
	virtual void getMemberID();       // _10
	virtual void doSetSubMemberAll(); // _14

	// _00 VTBL
};
} // namespace Screen
} // namespace og

#endif
