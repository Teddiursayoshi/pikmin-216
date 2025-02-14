#ifndef _EFX_TKCHAPWAT_H
#define _EFX_TKCHAPWAT_H

/*
    __vt__Q23efx9TKchApWat:
    .4byte 0
    .4byte 0
    .4byte create__Q23efx9TKchApWatFPQ23efx3Arg
    .4byte forceKill__Q23efx8TSimple5Fv
    .4byte fade__Q23efx8TSimple5Fv
*/

namespace efx {
struct TSimple5 {
	virtual void create(Arg*); // _08
	virtual void forceKill();  // _0C (weak)
	virtual void fade();       // _10 (weak)
};
} // namespace efx

namespace efx {
struct TKchApWat : public TSimple5 {
	virtual void create(Arg*); // _08
};
} // namespace efx

#endif
