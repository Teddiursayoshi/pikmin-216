#ifndef _GAME_SNAKEWHOLE_PARMS_H
#define _GAME_SNAKEWHOLE_PARMS_H

/*
    __vt__Q34Game10SnakeWhole5Parms:
    .4byte 0
    .4byte 0
    .4byte read__Q34Game10SnakeWhole5ParmsFR6Stream
    .4byte 0
*/

namespace Game {
namespace SnakeWhole {
struct Parms {
	virtual void read(Stream&); // _08 (weak)
	virtual void _0C() = 0;     // _0C

	Parms();
};
} // namespace SnakeWhole
} // namespace Game

#endif
