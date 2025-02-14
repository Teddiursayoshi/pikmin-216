#ifndef _GAME_GENERATOR_H
#define _GAME_GENERATOR_H

/*
    __vt__Q24Game9Generator:
    .4byte 0
    .4byte 0
    .4byte __dt__Q24Game9GeneratorFv
    .4byte getChildCount__5CNodeFv
    .4byte doAnimation__Q24Game9GeneratorFv
    .4byte doEntry__Q24Game9GeneratorFv
    .4byte doSetView__Q24Game9GeneratorFi
    .4byte doViewCalc__Q24Game9GeneratorFv
*/

struct CNode {
	virtual ~CNode();             // _08
	virtual void getChildCount(); // _0C
};

namespace Game {
struct Generator : public CNode {
	virtual ~Generator();        // _08
	virtual void doAnimation();  // _10
	virtual void doEntry();      // _14
	virtual void doSetView(int); // _18
	virtual void doViewCalc();   // _1C

	void initialiseSystem();
	Generator();
	void updateUseList();
	void isExpired();
	void loadCreature(Stream&);
	void need_saveCreature();
	void saveCreature(Stream&);
	void generate();
	void informDeath(Game::Creature*);
	void read(Stream&);
	void write(Stream&);
};
} // namespace Game

#endif
