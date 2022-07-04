#include "types.h"
#include "Dolphin/os.h"
#include "Game/GameSystem.h"
#include "Game/TimeMgr.h"
#include "Game/MoviePlayer.h"
#include "JSystem/JUT/JUTGamePad.h"

bool isTreasureCutscene;

namespace Game {

struct Navi {
	bool procActionButton();
};

struct NaviWalkState {
	void execAI(Navi*);
};

void autopluck(NaviWalkState* walkstate, Navi* captain)
// performs Pikmin 3-style autopluck of pikmin seeds
{
	captain->procActionButton();
	walkstate->execAI(captain);
}

// returns the current day, as displayed in the in-game UI
u32 getCurrentDay(Game::GameSystem* game) { return game->m_timeMgr->m_dayCount + 1; }

void allowSkipTreasureCutscene(MoviePlayer* movieplayer)
// allows 251-style treasure cutscene skips
{
	if (isTreasureCutscene && movieplayer != nullptr) {
		if (movieplayer->m_demoState == 6) {
			isTreasureCutscene = false;
			// OSReport("Treasure cutscene finished normally!");
		} else if (((JUTGamePad::mPadStatus.m_stats->_00 & 0x1000) != 0) && (movieplayer->m_demoState == 5)) {
			isTreasureCutscene = false;
			movieplayer->skip();
			// OSReport("Treasure cutscene skipped successfully!);
		}
	}
}

}; // namespace Game