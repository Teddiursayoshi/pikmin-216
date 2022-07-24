#ifndef _GAME_INTERACTSUCKARRIVE_H
#define _GAME_INTERACTSUCKARRIVE_H

/*
    __vt__Q24Game18InteractSuckArrive:
    .4byte 0
    .4byte 0
    .4byte actCommon__Q24Game11InteractionFPQ24Game8Creature
    .4byte actPiki__Q24Game11InteractionFPQ24Game4Piki
    .4byte actNavi__Q24Game11InteractionFPQ24Game4Navi
    .4byte actEnemy__Q24Game11InteractionFPQ24Game9EnemyBase
    .4byte actPellet__Q24Game11InteractionFPQ24Game6Pellet
    .4byte actOnyon__Q24Game18InteractSuckArriveFPQ24Game5Onyon
    .4byte actItem__Q24Game11InteractionFPQ24Game8BaseItem
*/

namespace Game {
struct Interaction {
	virtual void actCommon(Creature*); // _08
	virtual void actPiki(Piki*);       // _0C
	virtual void actNavi(Navi*);       // _10
	virtual void actEnemy(EnemyBase*); // _14
	virtual void actPellet(Pellet*);   // _18
	virtual void actOnyon(Onyon*);     // _1C
	virtual void actItem(BaseItem*);   // _20

	// _00 VTBL
};
} // namespace Game

namespace Game {
struct InteractSuckArrive : public Interaction {
	virtual void actOnyon(Onyon*); // _1C

	// _00 VTBL
};
} // namespace Game

#endif
