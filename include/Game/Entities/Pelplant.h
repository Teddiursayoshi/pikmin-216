#ifndef _GAME_ENTITIES_PELPLANT_H
#define _GAME_ENTITIES_PELPLANT_H

#include "Game/EnemyAnimatorBase.h"
#include "Game/EnemyParmsBase.h"
#include "Game/EnemyStateMachine.h"
#include "SysShape/Animator.h"
#include "types.h"
#include "CNode.h"
#include "id32.h"
#include "Graphics.h"
#include "stream.h"
#include "Game/gameGenerator.h"
#include "Game/EnemyBase.h"
#include "Game/EnemyMgrBase.h"
#include "Game/PelletNumber.h"

namespace Game {
namespace PelletNumber {
struct Object;
} // namespace PelletNumber

namespace Pelplant {

/**
 * @size{0x4}
 */
struct BlendAccelerationFunc : SysShape::BlendFunction {
	virtual float getValue(float); // _08

	// _00		= VTABLE
};

/**
 * @size{0x1C}
 */
struct FSM : public EnemyStateMachine {
	FSM()
	    : EnemyStateMachine()
	{
	}

	virtual void init(EnemyBase*); // _08

	// _00		= VTABLE
	// _04-_1C	= EnemyStateMachine
};

/**
 * @size{0x2E8}
 */
struct Obj : public EnemyBase {
	Obj();

	/////////////// VTABLE
	// vtable 1 (Creature, _00, _08-_1AC)
	virtual void onInit(CreatureInitArg*); // _030
	virtual void doAnimation();            // _03C
	virtual void doSimulation(float);      // _04C
	virtual void doDirectDraw(Graphics&);  // _050
	virtual bool isLivingThing()           // _0D4 (weak)
	{
		return (_2C8 >> 1 & 1);
	}
	virtual void getShadowParam(ShadowParam&); // _134
	virtual void onStickStart(Creature*);      // _158
	// vtable 2 (MotionListener+EnemyBase+self, _00, _1BC-1D0)
	virtual ~Obj() { }                                      // _1BC (weak)
	virtual void birth(Vector3f&, float);                   // _1C0
	virtual void setInitialSetting(EnemyInitialParamBase*); // _1C4
	virtual void doUpdate();                                // _1CC
	virtual void doAnimationUpdateAnimator();               // _1D8
	virtual void doDebugDraw(Graphics&);                    // _1EC
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID()      // _258 (weak)
	{
		return EnemyTypeID::EnemyID_Pelplant;
	}
	virtual void doGetLifeGaugeParam(LifeGaugeParam&);        // _260
	virtual bool damageCallBack(Creature*, float, CollPart*); // _278
	virtual bool farmCallBack(Creature*, float);              // _290
	virtual void setFSM(FSM* fsm)                             // _2F8 (weak)
	{
		m_fsm = fsm;
		m_fsm->init(this);
		m_currentLifecycleState = nullptr;
	}
	/////////////// VTABLE END

	void attachPellet();
	void changePelletColor();
	void setPelletColor(u16, bool);
	float getHeadScale();
	void updateLODSphereRadius(int);

	static unknown headJointCallBack(J3DJoint*, int);
	static unknown neckJointCallBack(J3DJoint*, int);

	// Inlined:
	void getNeckScale(Vector3f*);

	// Creature: 		_000 - _178
	// MotionListener: 	_178 - _17C
	// PelletView*: 	_17C - _180
	// EnemyBase: 		_180 - _2B8
	FSM* m_fsm;                           // _2BC
	float _2C0;                           // _2C0
	Matrixf* _2C4;                        // _2C4
	u8 _2C8;                              // _2C8
	Game::PelletNumber::Object* m_pellet; // _2CC
	float _2D0;                           // _2D0
	u8 _2D4;                              // _2D4
	u8 m_pelletSize;                      // _2D5
	s8 m_farmPow;                         // _2D6
	                                      // PelletView: _2D8 - _2E4

	static Obj* sCurrentObj;
};

/**
 * @size{0x48}
 */
struct Mgr : public EnemyMgrBase {
	Mgr(int, u8);

	/////////////// VTABLE
	// vtable 1 (GenericObjectMgr, _00, _08-_38)
	// vtable 2 (GenericContainer + IEnemyMgrBase + self, _00, _40-_E0)
	// GenericContainer thunks _40-_58
	virtual ~Mgr() { }                        // _58 (weak)
	virtual EnemyBase* birth(EnemyBirthArg&); // _70
	virtual void createObj(int count)         // _A0 (weak)
	{
		m_objects = new Obj[count];
	}
	virtual EnemyBase* getEnemy(int index) // _A4 (weak)
	{
		return &m_objects[index];
	}
	virtual void doAlloc();                            // _A8
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _AC (weak)
	{
		return EnemyTypeID::EnemyID_Pelplant;
	}
	virtual void initStoneSetting() { } // _C0 (weak)
	/////////////// VTABLE END

	// _00		= VTABLE
	// _04-_44	= EnemyMgrBase
	Obj* m_objects; // _44
};

/**
 * @size{0x880}
 */
struct Parms : EnemyParmsBase {
	struct _Parms : public Parameters {
		inline _Parms()
		    : Parameters(nullptr, "EnemyParmsBase")
		    , m_fp01(this, 'fp01', "成長(小→中）", 120.0f, 0.0f, 300.0f) // growth (small to medium)
		    , m_fp02(this, 'fp02', "成長(中→大）", 120.0f, 0.0f, 300.0f) // growth (medium to large)
		    , m_fp03(this, 'fp03', "カラー変更時間", 1.5f, 0.0f, 5.0f)    // color change time
		{
		}
		Parm<float> m_fp01;
		Parm<float> m_fp02;
		Parm<float> m_fp03;
	};

	Parms()
	    : EnemyParmsBase()
	    , m_pelplantParms() {};

	virtual void read(Stream& input) // _08 (weak)
	{
		EnemyParmsBase::read(input);
		m_pelplantParms.read(input);
	}

	_Parms m_pelplantParms; // _7F4
};

/**
 * @size{0x27}
 */
struct Generator : public EnemyGeneratorBase {
	Generator();

	virtual ~Generator() {};                                   // _08
	virtual void doWrite(Stream&);                             // _10
	virtual void doRead(Stream&);                              // _14
	virtual u32 getLatestVersion() { return '0001'; };         // _18
	virtual void* getInitialParam() { return &m_pelletType; }; // _20
	// getInitialParam returns address of first parameter

	void doReadOldVersion(Stream&);

	// _00 		= VTABLE
	// _04-_24 	= EnemyGeneratorBase
	u8 m_pelletType; // _24
	u8 m_pelletSize; // _25
	u8 m_size;       // _26
};

/**
 * @size{0x60}
 */
struct ProperAnimator : public EnemyBlendAnimatorBase {
	ProperAnimator()
	    : EnemyBlendAnimatorBase()
	{
	}

	// vtable (EnemyBlendAnimatorBase, _00, _08-_28)
	/**
	 * @reifiedAddress{8010A9E0}
	 * @reifiedFile{plugProjectYamashitaU/pelplant.cpp}
	 */
	virtual ~ProperAnimator() { } // _08 (weak)

	// _00		= VTABLE
	// _04-_60	= EnemyBlendAnimatorBase
};

struct State : public EnemyFSMState {
	inline State(int stateID)
	    : EnemyFSMState(stateID)
	{
	}

	// _00 VTBL
	// _04 int stateID
	// _08 EnemyStateMachine* m_stateMachine
	// _0C const char* m_name
};

struct StateBlendAnim : public State {
	inline StateBlendAnim(int stateID, int a, int b, int c)
	    : State(stateID)
	    , _10(a)
	    , _14(b)
	    , _18(c)
	{
	}

	virtual void init(EnemyBase*, StateArg*); // _08
	virtual void exec(EnemyBase*);            // _0C

	// _00 VTBL
	// _04 int stateID
	// _08 EnemyStateMachine* m_stateMachine
	// _0C const char* m_name
	int _10; // _10
	int _14; // _14
	int _18; // _18
};

struct StateDamage : public State {
	StateDamage(int, int);

	virtual void init(EnemyBase*, StateArg*); // _08
	virtual void exec(EnemyBase*);            // _0C
	virtual void cleanup(EnemyBase*);         // _10

	// _00 VTBL
	// _04 int stateID
	// _08 EnemyStateMachine* m_stateMachine
	// _0C const char* m_name
	int _10; // _10
};

struct StateDead : public State {
	StateDead(int, int);

	virtual void init(EnemyBase*, StateArg*); // _08
	virtual void exec(EnemyBase*);            // _0C
	virtual void cleanup(EnemyBase*);         // _10

	// _00 VTBL
	// _04 int stateID
	// _08 EnemyStateMachine* m_stateMachine
	// _0C const char* m_name
	int _10; // _10
};

struct StateGrow : public State {
	StateGrow(int, int, int);

	virtual void init(EnemyBase*, StateArg*); // _08
	virtual void exec(EnemyBase*);            // _0C
	virtual void cleanup(EnemyBase*);         // _10

	// _00 VTBL
	// _04 int stateID
	// _08 EnemyStateMachine* m_stateMachine
	// _0C const char* m_name
	int _10; // _10
	u32 _14; // _14
};

struct StateWait : public State {
	StateWait(int, int);

	virtual void init(EnemyBase*, StateArg*); // _08
	virtual void exec(EnemyBase*);            // _0C
	virtual void cleanup(EnemyBase*);         // _10

	// _00 VTBL
	// _04 int stateID
	// _08 EnemyStateMachine* m_stateMachine
	// _0C const char* m_name
	int _10; // _10
};

struct StateWither : public StateBlendAnim {
	StateWither(int, int, int, int);

	virtual void init(EnemyBase*, StateArg*); // _08
	virtual void exec(EnemyBase*);            // _0C
	virtual void cleanup(EnemyBase*);         // _10

	// _00 VTBL
	// _04 int stateID
	// _08 EnemyStateMachine* m_stateMachine
	// _0C const char* m_name
};

} // namespace Pelplant
} // namespace Game

#endif
