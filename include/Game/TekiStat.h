#ifndef _GAME_TEKISTAT_H
#define _GAME_TEKISTAT_H

#include "types.h"
#include "stream.h"

namespace Game {
namespace TekiStat {
#define TEKISTAT_STATE_UPDATED     1
#define TEKISTAT_STATE_OUT_OF_DATE 2

/**
 * @size{0xC}
 */
struct Info {
	Info();

	void incKilled();
	void incKillPikmin();

	void write(Stream&);
	void read(Stream&);

	int m_killedTekiCount;   // _00
	int m_killedPikminCount; // _04

	// 1 is ORed to this in incKilled
	u8 m_state; // _08
};

struct Mgr {
	Mgr();

	void allocate(int);
	void clear();
	Info* getTekiInfo(int);
	void setOutOfDateAll();
	bool whatsNew();

	void write(Stream&);
	void read(Stream&);

	Info* m_data; // _00
	int m_count;  // _04
};
} // namespace TekiStat
} // namespace Game

#endif
