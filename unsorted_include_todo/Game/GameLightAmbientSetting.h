#ifndef _GAME_GAMELIGHTAMBIENTSETTING_H
#define _GAME_GAMELIGHTAMBIENTSETTING_H

/*
    __vt__Q24Game23GameLightAmbientSetting:
    .4byte 0
    .4byte 0
    .4byte read__Q24Game20GameLightSettingBaseFR6Stream
*/

namespace Game {
struct GameLightSettingBase {
	virtual void read(Stream&); // _08

	// _00 VTBL
};
} // namespace Game

namespace Game {
struct GameLightAmbientSetting : public GameLightSettingBase {

	// _00 VTBL
};
} // namespace Game

#endif
