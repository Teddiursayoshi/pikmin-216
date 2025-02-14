#ifndef _PSGAME_SYSFACTORY_H
#define _PSGAME_SYSFACTORY_H

/*
    __vt__Q26PSGame10SysFactory:
    .4byte 0
    .4byte 0
    .4byte 0
*/

namespace PSGame {
struct SysFactory {
	virtual void _08() = 0; // _08

	SysFactory();
	void newSoundSystem();
	void preInitJAI();
	void postInitJAI();
};
} // namespace PSGame

#endif
