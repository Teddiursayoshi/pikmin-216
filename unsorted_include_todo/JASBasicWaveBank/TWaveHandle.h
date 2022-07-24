#ifndef _JASBASICWAVEBANK_TWAVEHANDLE_H
#define _JASBASICWAVEBANK_TWAVEHANDLE_H

/*
    __vt__Q216JASBasicWaveBank11TWaveHandle:
    .4byte 0
    .4byte 0
    .4byte __dt__Q216JASBasicWaveBank11TWaveHandleFv
    .4byte getWaveInfo__Q216JASBasicWaveBank11TWaveHandleCFv
    .4byte getWavePtr__Q216JASBasicWaveBank11TWaveHandleCFv
*/

namespace JASBasicWaveBank {
struct TWaveHandle {
	virtual ~TWaveHandle();           // _08
	virtual void getWaveInfo() const; // _0C
	virtual void getWavePtr() const;  // _10

	// _00 VTBL
};
} // namespace JASBasicWaveBank

#endif
