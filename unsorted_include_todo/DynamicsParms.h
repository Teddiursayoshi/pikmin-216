#ifndef _DYNAMICSPARMS_H
#define _DYNAMICSPARMS_H

/*
    __vt__13DynamicsParms:
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte "@12@__dt__13DynamicsParmsFv"
    .4byte __dt__13DynamicsParmsFv
*/

struct DynamicsParms {
	virtual void _08() = 0;   // _08
	virtual void _0C() = 0;   // _0C
	virtual ~DynamicsParms(); // _14 (weak)

	DynamicsParms();
	void globalInstance();
};

#endif
