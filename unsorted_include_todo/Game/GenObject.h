#ifndef _GAME_GENOBJECT_H
#define _GAME_GENOBJECT_H

/*
    __vt__Q24Game9GenObject:
    .4byte 0
    .4byte 0
    .4byte doWrite__Q24Game7GenBaseFR6Stream
    .4byte ramSaveParameters__Q24Game7GenBaseFR6Stream
    .4byte ramLoadParameters__Q24Game7GenBaseFR6Stream
    .4byte doEvent__Q24Game7GenBaseFUl
    .4byte doRead__Q24Game7GenBaseFR6Stream
    .4byte update__Q24Game9GenObjectFPQ24Game9Generator
    .4byte render__Q24Game9GenObjectFR8GraphicsPQ24Game9Generator
    .4byte getLatestVersion__Q24Game9GenObjectFv
    .4byte getShape__Q24Game7GenBaseFv
    .4byte updateUseList__Q24Game9GenObjectFPQ24Game9Generatori
    .4byte generate__Q24Game9GenObjectFPQ24Game9Generator
    .4byte 0
    .4byte "generatorMakeMatrix__Q24Game9GenObjectFR7MatrixfR10Vector3<f>"
    .4byte getDebugInfo__Q24Game9GenObjectFPc
*/

namespace Game {
struct GenBase {
	virtual void doWrite(Stream&);              // _08 (weak)
	virtual void ramSaveParameters(Stream&);    // _0C
	virtual void ramLoadParameters(Stream&);    // _10
	virtual void doEvent(unsigned long);        // _14 (weak)
	virtual void doRead(Stream&);               // _18 (weak)
	virtual void update(Generator*);            // _1C (weak)
	virtual void render(Graphics&, Generator*); // _20 (weak)
	virtual void getLatestVersion();            // _24
	virtual void getShape();                    // _28 (weak)
};
} // namespace Game

namespace Game {
struct GenObject : public GenBase {
	virtual void update(Generator*);                             // _1C (weak)
	virtual void render(Graphics&, Generator*);                  // _20 (weak)
	virtual void getLatestVersion();                             // _24
	virtual void updateUseList(Generator*, int);                 // _2C (weak)
	virtual void generate(Generator*);                           // _30 (weak)
	virtual void _34() = 0;                                      // _34
	virtual void generatorMakeMatrix(Matrixf&, Vector3<float>&); // _38 (weak)
	virtual void getDebugInfo(char*);                            // _3C (weak)
};
} // namespace Game

#endif
