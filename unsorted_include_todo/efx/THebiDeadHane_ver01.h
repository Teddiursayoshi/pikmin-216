#ifndef _EFX_THEBIDEADHANE_VER01_H
#define _EFX_THEBIDEADHANE_VER01_H

/*
    __vt__Q23efx19THebiDeadHane_ver01:
    .4byte 0
    .4byte 0
    .4byte create__Q23efx8TSimple1FPQ23efx3Arg
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
struct THebiDeadHane_ver01 : public TSimple1 {
};
} // namespace efx

#endif
