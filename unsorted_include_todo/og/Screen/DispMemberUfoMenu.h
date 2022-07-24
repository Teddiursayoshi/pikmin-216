#ifndef _OG_SCREEN_DISPMEMBERUFOMENU_H
#define _OG_SCREEN_DISPMEMBERUFOMENU_H

/*
    __vt__Q32og6Screen17DispMemberUfoMenu:
    .4byte 0
    .4byte 0
    .4byte getSize__Q32og6Screen17DispMemberUfoMenuFv
    .4byte getOwnerID__Q32og6Screen17DispMemberUfoMenuFv
    .4byte getMemberID__Q32og6Screen17DispMemberUfoMenuFv
    .4byte doSetSubMemberAll__Q32og6Screen14DispMemberBaseFv
*/

namespace og {
namespace Screen {
struct DispMemberBase {
	virtual void getSize();           // _08
	virtual void getOwnerID();        // _0C
	virtual void getMemberID();       // _10
	virtual void doSetSubMemberAll(); // _14

	// _00 VTBL
};
} // namespace Screen
} // namespace og

namespace og {
namespace Screen {
struct DispMemberUfoMenu : public DispMemberBase {
	virtual void getSize();     // _08
	virtual void getOwnerID();  // _0C
	virtual void getMemberID(); // _10

	// _00 VTBL
};
} // namespace Screen
} // namespace og

#endif
