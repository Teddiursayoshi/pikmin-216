#ifndef _GAME_SHAPEMAPMGR_H
#define _GAME_SHAPEMAPMGR_H

/*
        __vt__Q24Game11ShapeMapMgr:
        .4byte 0
        .4byte 0
        .4byte hasHiddenCollision__Q24Game6MapMgrFv
        .4byte constraintBoundBox__Q24Game6MapMgrFRQ23Sys6Sphere
        .4byte "getStartPosition__Q24Game6MapMgrFR10Vector3<f>i"
        .4byte getDemoMatrix__Q24Game6MapMgrFv
        .4byte getBoundBox2d__Q24Game11ShapeMapMgrFR10BoundBox2d
        .4byte getBoundBox__Q24Game11ShapeMapMgrFR8BoundBox
        .4byte
   findRayIntersection__Q24Game11ShapeMapMgrFRQ23Sys16RayIntersectInfo .4byte
   traceMove__Q24Game11ShapeMapMgrFRQ24Game8MoveInfof .4byte
   "getMinY__Q24Game11ShapeMapMgrFR10Vector3<f>" .4byte
   getCurrTri__Q24Game11ShapeMapMgrFRQ24Game11CurrTriInfo .4byte
   createTriangles__Q24Game11ShapeMapMgrFRQ23Sys17CreateTriangleArg .4byte
   setupJUTTextures__Q24Game6MapMgrFv .4byte frozenable__Q24Game6MapMgrFv .4byte
   update__Q24Game6MapMgrFv .4byte do_update__Q24Game11ShapeMapMgrFv .4byte
   drawCollision__Q24Game11ShapeMapMgrFR8GraphicsRQ23Sys6Sphere .4byte
   doSimulation__Q24Game6MapMgrFf .4byte doDirectDraw__Q24Game6MapMgrFR8Graphics
        .4byte doAnimation__Q24Game11ShapeMapMgrFv
        .4byte doSetView__Q24Game11ShapeMapMgrFi
        .4byte doViewCalc__Q24Game11ShapeMapMgrFv
        .4byte doEntry__Q24Game11ShapeMapMgrFv
        .4byte 0
        .4byte 0
        .4byte "@84@4@doAnimation__Q24Game11ShapeMapMgrFv"
        .4byte "@84@4@doEntry__Q24Game11ShapeMapMgrFv"
        .4byte "@84@4@doSetView__Q24Game11ShapeMapMgrFi"
        .4byte "@84@4@doViewCalc__Q24Game11ShapeMapMgrFv"
        .4byte "@84@4@doSimulation__Q24Game6MapMgrFf"
        .4byte "@84@4@doDirectDraw__Q24Game6MapMgrFR8Graphics"
        .4byte doSimpleDraw__16GenericObjectMgrFP8Viewport
        .4byte loadResources__16GenericObjectMgrFv
        .4byte resetMgr__16GenericObjectMgrFv
        .4byte pausable__16GenericObjectMgrFv
        .4byte "@84@4@frozenable__Q24Game6MapMgrFv"
        .4byte getMatrixLoadType__16GenericObjectMgrFv
*/

namespace Game {
struct MapMgr {
    virtual void hasHiddenCollision();                   // _08
    virtual void constraintBoundBox(Sys::Sphere&);       // _0C
    virtual void getStartPosition(Vector3<float>&, int); // _10
    virtual void getDemoMatrix();                        // _14
    virtual void _18() = 0;                              // _18
    virtual void _1C() = 0;                              // _1C
    virtual void _20() = 0;                              // _20
    virtual void _24() = 0;                              // _24
    virtual void _28() = 0;                              // _28
    virtual void _2C() = 0;                              // _2C
    virtual void _30() = 0;                              // _30
    virtual void setupJUTTextures();                     // _34
    virtual void frozenable();                           // _38
    virtual void update();                               // _3C
    virtual void _40() = 0;                              // _40
    virtual void _44() = 0;                              // _44
    virtual void doSimulation(float);                    // _48
    virtual void doDirectDraw(Graphics&);                // _4C

    // _00 VTBL
};
} // namespace Game

struct GenericObjectMgr {
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
    virtual void _48() = 0;               // _48
    virtual void _4C() = 0;               // _4C
    virtual void _50() = 0;               // _50
    virtual void _54() = 0;               // _54
    virtual void _58() = 0;               // _58
    virtual void _5C() = 0;               // _5C
    virtual void _60() = 0;               // _60
    virtual void _64() = 0;               // _64
    virtual void _68() = 0;               // _68
    virtual void _6C() = 0;               // _6C
    virtual void _70() = 0;               // _70
    virtual void _74() = 0;               // _74
    virtual void _78() = 0;               // _78
    virtual void _7C() = 0;               // _7C
    virtual void doSimpleDraw(Viewport*); // _80
    virtual void loadResources();         // _84
    virtual void resetMgr();              // _88
    virtual void pausable();              // _8C
    virtual void _90() = 0;               // _90
    virtual void getMatrixLoadType();     // _94

    // _00 VTBL
};

namespace Game {
struct ShapeMapMgr : public MapMgr, public GenericObjectMgr {
    virtual void getBoundBox2d(BoundBox2d&);                  // _18
    virtual void getBoundBox(BoundBox&);                      // _1C
    virtual void findRayIntersection(Sys::RayIntersectInfo&); // _20
    virtual void traceMove(MoveInfo&, float);                 // _24
    virtual void getMinY(Vector3<float>&);                    // _28
    virtual void getCurrTri(CurrTriInfo&);                    // _2C
    virtual void createTriangles(Sys::CreateTriangleArg&);    // _30
    virtual void do_update();                                 // _40
    virtual void drawCollision(Graphics&, Sys::Sphere&);      // _44
    virtual void doAnimation();                               // _50
    virtual void doSetView(int);                              // _54
    virtual void doViewCalc();                                // _58
    virtual void doEntry();                                   // _5C
    virtual void _60() = 0;                                   // _60
    virtual void _64() = 0;                                   // _64
    virtual void @84 @4 @doAnimation();                       // _68
    virtual void @84 @4 @doEntry();                           // _6C
    virtual void @84 @4 @doSetView(int);                      // _70
    virtual void @84 @4 @doViewCalc();                        // _74

    // _00 VTBL
};
} // namespace Game

#endif
