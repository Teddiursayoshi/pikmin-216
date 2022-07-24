#ifndef _EFFECTANIMATOR_OBJ_H
#define _EFFECTANIMATOR_OBJ_H

/*
    __vt__Q214EffectAnimator3Obj:
    .4byte 0
    .4byte 0
    .4byte __dt__Q214EffectAnimator3ObjFv
    .4byte getChildCount__5CNodeFv
    .4byte update__Q214EffectAnimator3ObjFPQ23efx13TKechappyTestf
*/

struct CNode {
	virtual ~CNode();             // _08
	virtual void getChildCount(); // _0C

	// _00 VTBL
};

namespace EffectAnimator {
struct Obj : public CNode {
	virtual ~Obj();                                  // _08
	virtual void update(efx::TKechappyTest*, float); // _10

	// _00 VTBL
};
} // namespace EffectAnimator

#endif
