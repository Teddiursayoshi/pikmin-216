#ifndef _JSYSTEM_JAI_JAIANIMESOUND_H
#define _JSYSTEM_JAI_JAIANIMESOUND_H

#include "JSystem/JAI/JAInter/Object.h"
#include "JSystem/JAI/JAInter.h"

struct JAIAnimeSoundData {
	u8 _00[0x17]; // _00 - unknown
	u8 _18;       // _18
};

struct JAIAnimeFrameSoundData;

struct JAIAnimeSound : public JAInter::Object {
	virtual ~JAIAnimeSound() { }                                                 // _08 (weak)
	virtual void handleStop(u8, u32);                                            // _34
	virtual void playActorAnimSound(JAInter::Actor*, float, u8);                 // _3C
	virtual void startAnimSound(u32, JAISound**, JAInter::Actor*, u8);           // _40
	virtual void setSpeedModifySound(JAISound*, JAIAnimeFrameSoundData*, float); // _44

	// _00 VTBL
	void* _40;                      // _40
	void* _44;                      // _44
	u8 _48[0x14];                   // _48
	u32 _5C;                        // _5C
	u8 _60[8];                      // _60
	u32 _68;                        // _68
	int _6C;                        // _6C
	float _70;                      // _70
	float _74;                      // _74
	JAIAnimeSoundData* m_soundData; // _78
};

#endif
