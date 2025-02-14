#ifndef _EFX_TUMIATTACK_H
#define _EFX_TUMIATTACK_H

/*
    __vt__Q23efx10TUmiAttack:
    .4byte 0
    .4byte 0
    .4byte create__Q23efx10TUmiAttackFPQ23efx3Arg
    .4byte forceKill__Q23efx8TSimple1Fv
    .4byte fade__Q23efx8TSimple1Fv
*/

namespace efx {
struct TSimple1 {
	virtual void create(Arg*); // _08
	virtual void forceKill();  // _0C (weak)
	virtual void fade();       // _10 (weak)
};
} // namespace efx

namespace efx {
struct TUmiAttack : public TSimple1 {
	virtual void create(Arg*); // _08
};
} // namespace efx

#endif
