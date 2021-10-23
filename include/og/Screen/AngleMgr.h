#ifndef _OG_SCREEN_ANGLEMGR_H
#define _OG_SCREEN_ANGLEMGR_H

#include "types.h"

namespace og {
namespace Screen {
	struct AngleMgr {
		enum State { AGM_Start = 0, AGM_Chase, AGM_Finish };

		AngleMgr();
		void init(float, float, float);
		void chase(float, float);
		float calc(void);

		f32 _00;     // _00
		f32 _04;     // _04
		f32 _08;     // _08
		f32 _0C;     // _0C
		f32 _10;     // _10
		s32 m_state; // _14
	};
} // namespace Screen
} // namespace og

#endif
