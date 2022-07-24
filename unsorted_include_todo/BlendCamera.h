#ifndef _BLENDCAMERA_H
#define _BLENDCAMERA_H

/*
    __vt__11BlendCamera:
    .4byte 0
    .4byte 0
    .4byte __dt__11BlendCameraFv
    .4byte getChildCount__5CNodeFv
    .4byte "getObject__17Container<5Plane>FPv"
    .4byte "getNext__22ArrayContainer<5Plane>FPv"
    .4byte "getStart__22ArrayContainer<5Plane>Fv"
    .4byte "getEnd__22ArrayContainer<5Plane>Fv"
    .4byte "get__22ArrayContainer<5Plane>FPv"
    .4byte "getAt__22ArrayContainer<5Plane>Fi"
    .4byte "getTo__22ArrayContainer<5Plane>Fv"
    .4byte writeObject__9CullPlaneFR6StreamR5Plane
    .4byte readObject__9CullPlaneFR6StreamR5Plane
    .4byte "write__22ArrayContainer<5Plane>FR6Stream"
    .4byte "read__22ArrayContainer<5Plane>FR6Stream"
    .4byte "alloc__22ArrayContainer<5Plane>Fi"
    .4byte "addOne__22ArrayContainer<5Plane>FR5Plane"
    .4byte "setArray__22ArrayContainer<5Plane>FP5Planei"
    .4byte getViewMatrix__6CameraFb
    .4byte getPosition__6CameraFv
    .4byte updatePlanes__6CameraFv
    .4byte updateScreenConstants__6CameraFv
    .4byte getLookAtPosition___6CameraFv
    .4byte getTargetDistance__6CameraFv
    .4byte getPositionPtr__6CameraFv
    .4byte on_getPositionPtr__6CameraFv
    .4byte getSoundPositionPtr__6CameraFv
    .4byte getSoundMatrixPtr__6CameraFv
    .4byte isSpecialCamera__6CameraFv
    .4byte updateMatrix__6CameraFv
    .4byte doUpdate__11BlendCameraFv
*/

struct CNode {
	virtual void _08() = 0;       // _08
	virtual void getChildCount(); // _0C

	// _00 VTBL
};

struct Container<Plane> {
	virtual void _08() = 0;        // _08
	virtual void _0C() = 0;        // _0C
	virtual void getObject(void*); // _10

	// _00 VTBL
};

struct ArrayContainer<Plane> {
	virtual void _08() = 0;             // _08
	virtual void _0C() = 0;             // _0C
	virtual void _10() = 0;             // _10
	virtual void getNext(void*);        // _14
	virtual void getStart();            // _18
	virtual void getEnd();              // _1C
	virtual void get(void*);            // _20
	virtual void getAt(int);            // _24
	virtual void getTo();               // _28
	virtual void _2C() = 0;             // _2C
	virtual void _30() = 0;             // _30
	virtual void write(Stream&);        // _34
	virtual void read(Stream&);         // _38
	virtual void alloc(int);            // _3C
	virtual void addOne(Plane&);        // _40
	virtual void setArray(Plane*, int); // _44

	// _00 VTBL
};

struct CullPlane {
	virtual void _08() = 0;                    // _08
	virtual void _0C() = 0;                    // _0C
	virtual void _10() = 0;                    // _10
	virtual void _14() = 0;                    // _14
	virtual void _18() = 0;                    // _18
	virtual void _1C() = 0;                    // _1C
	virtual void _20() = 0;                    // _20
	virtual void _24() = 0;                    // _24
	virtual void _28() = 0;                    // _28
	virtual void writeObject(Stream&, Plane&); // _2C
	virtual void readObject(Stream&, Plane&);  // _30

	// _00 VTBL
};

struct Camera {
	virtual void _08() = 0;               // _08
	virtual void _0C() = 0;               // _0C
	virtual void _10() = 0;               // _10
	virtual void _14() = 0;               // _14
	virtual void _18() = 0;               // _18
	virtual void _1C() = 0;               // _1C
	virtual void _20() = 0;               // _20
	virtual void _24() = 0;               // _24
	virtual void _28() = 0;               // _28
	virtual void _2C() = 0;               // _2C
	virtual void _30() = 0;               // _30
	virtual void _34() = 0;               // _34
	virtual void _38() = 0;               // _38
	virtual void _3C() = 0;               // _3C
	virtual void _40() = 0;               // _40
	virtual void _44() = 0;               // _44
	virtual void getViewMatrix(bool);     // _48
	virtual void getPosition();           // _4C
	virtual void updatePlanes();          // _50
	virtual void updateScreenConstants(); // _54
	virtual void getLookAtPosition_();    // _58
	virtual void getTargetDistance();     // _5C
	virtual void getPositionPtr();        // _60
	virtual void on_getPositionPtr();     // _64
	virtual void getSoundPositionPtr();   // _68
	virtual void getSoundMatrixPtr();     // _6C
	virtual void isSpecialCamera();       // _70
	virtual void updateMatrix();          // _74

	// _00 VTBL
};

struct BlendCamera : public CNode, public Container<Plane>, public ArrayContainer<Plane>, public CullPlane, public Camera {
	virtual ~BlendCamera();  // _08
	virtual void doUpdate(); // _78

	// _00 VTBL
};

#endif
