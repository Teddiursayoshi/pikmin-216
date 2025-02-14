#ifndef _COLLPART_H
#define _COLLPART_H

/*
    __vt__8CollPart:
    .4byte 0
    .4byte 0
    .4byte __dt__8CollPartFv
    .4byte getChildCount__8CollPartFv
    .4byte isMouth__8CollPartFv
    .4byte draw__8CollPartFR8Graphics
    .4byte constructor__8CollPartFv
    .4byte doAnimation__8CollPartFv
    .4byte doEntry__8CollPartFv
    .4byte doSetView__8CollPartFUl
    .4byte doViewCalc__8CollPartFv
    .4byte doSimulation__8CollPartFf
    .4byte doDirectDraw__8CollPartFR8Graphics
*/

struct CollPart {
	virtual ~CollPart();                   // _08 (weak)
	virtual void getChildCount();          // _0C (weak)
	virtual void isMouth();                // _10 (weak)
	virtual void draw(Graphics&);          // _14
	virtual void constructor();            // _18 (weak)
	virtual void doAnimation();            // _1C (weak)
	virtual void doEntry();                // _20 (weak)
	virtual void doSetView(unsigned long); // _24 (weak)
	virtual void doViewCalc();             // _28 (weak)
	virtual void doSimulation(float);      // _2C (weak)
	virtual void doDirectDraw(Graphics&);  // _30 (weak)

	void getChild();
	void getNext();
	void isLeaf();
	void isPrim();
	void checkCollision(Sys::Sphere&, IDelegate1<CollPart*>*);
	void isSphere();
	void isTubeTree();
	void isTube();
	void checkCollisionMulti(CollPart*, IDelegate3<CollPart*, CollPart*, Vector3<float>&>*);
	void collide(CollPart*, Vector3<float>&);
	void attachModel(SysShape::MtxObject*);
	void getCollPart(unsigned long);
	void getAllCollPartToArray(CollPart**, int, int&);
	CollPart(SysShape::MtxObject*);
	CollPart();
	void init(SysShape::MtxObject*);
	void isStickable();
	void update();
	void makeMatrixTo(Matrixf&);
	void makeTubeTree();
	void calcStickLocal(Vector3<float>&, Vector3<float>&);
	void calcStickGlobal(Vector3<float>&, Vector3<float>&);
	void calcPoseMatrix(Vector3<float>&, Matrixf&);
	void setScale(float);
	void getSphere(Sys::Sphere&);
	void getTube(Sys::Tube&);
	void clone(SysShape::MtxObject*, CollPartMgr*);
	void read(Stream&, bool);
	void addChild(CollPart*);
};

#endif
