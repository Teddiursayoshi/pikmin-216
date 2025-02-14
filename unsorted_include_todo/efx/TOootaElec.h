#ifndef _EFX_TOOOTAELEC_H
#define _EFX_TOOOTAELEC_H

/*
    __vt__Q23efx10TOootaElec:
    .4byte 0
    .4byte 0
    .4byte "create__Q23efx44TSyncGroup3<Q23efx23TChasePosPosLocalZScale>FPQ23efx3Arg"
    .4byte "forceKill__Q23efx44TSyncGroup3<Q23efx23TChasePosPosLocalZScale>Fv"
    .4byte "fade__Q23efx44TSyncGroup3<Q23efx23TChasePosPosLocalZScale>Fv"
    .4byte "startDemoDrawOff__Q23efx44TSyncGroup3<Q23efx23TChasePosPosLocalZScale>Fv"
    .4byte "endDemoDrawOn__Q23efx44TSyncGroup3<Q23efx23TChasePosPosLocalZScale>Fv"
*/

namespace efx {
struct TSyncGroup3<efx::TChasePosPosLocalZScale> {
	virtual void TSyncGroup3<TChasePosPosLocalZScale>::create(Arg*);       // _08 (weak)
	virtual void TSyncGroup3<TChasePosPosLocalZScale>::forceKill();        // _0C (weak)
	virtual void TSyncGroup3<TChasePosPosLocalZScale>::fade();             // _10 (weak)
	virtual void TSyncGroup3<TChasePosPosLocalZScale>::startDemoDrawOff(); // _14 (weak)
	virtual void TSyncGroup3<TChasePosPosLocalZScale>::endDemoDrawOn();    // _18 (weak)
};
} // namespace efx

namespace efx {
struct TOootaElec : public TSyncGroup3<efx::TChasePosPosLocalZScale> {
};
} // namespace efx

#endif
