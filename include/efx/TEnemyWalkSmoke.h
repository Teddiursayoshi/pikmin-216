#ifndef _EFX_TENEMYWALKSMOKE_H
#define _EFX_TENEMYWALKSMOKE_H

#include "efx/TBase.h"
#include "efx/TSimple.h"
#include "Vector3.h"
#include "types.h"

namespace efx {
struct TEnemyWalkSmoke : public TBase {
	inline TEnemyWalkSmoke();

	virtual bool create(Arg*); // _08
	virtual void forceKill();  // _0C (weak)
	virtual void fade();       // _10 (weak)

	// _00      = VTABLE
	u8 _04[0xC];  // _04 - unknown
	Vector3f _10; // _10
};

struct TEnemyWalkSmokeS : public TSimple1 {
	virtual bool create(Arg*); // _08
};

struct TEnemyWalkSmokeM : public TSimple1 {
	virtual bool create(Arg*); // _08
};

} // namespace efx

#endif
