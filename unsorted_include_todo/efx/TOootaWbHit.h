#ifndef _EFX_TOOOTAWBHIT_H
#define _EFX_TOOOTAWBHIT_H

/*
    __vt__Q23efx11TOootaWbHit:
    .4byte 0
    .4byte 0
    .4byte create__Q23efx8TSimple4FPQ23efx3Arg
    .4byte forceKill__Q23efx8TSimple4Fv
    .4byte fade__Q23efx8TSimple4Fv
*/

namespace efx {
struct TSimple4 {
	virtual void create(Arg*); // _08
	virtual void forceKill();  // _0C (weak)
	virtual void fade();       // _10 (weak)
};
} // namespace efx

namespace efx {
struct TOootaWbHit : public TSimple4 {
};
} // namespace efx

#endif
