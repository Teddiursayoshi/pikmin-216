#ifndef _GAME_MOVIEPLAYER_H
#define _GAME_MOVIEPLAYER_H

#include "Camera.h"
#include "Controller.h"
#include "JSystem/JKR/JKRDisposer.h"
#include "types.h"
#include "CNode.h"
#include "DvdThreadCommand.h"
#include "IDelegate.h"
#include "Vector3.h"

struct JKRHeap;
struct JPAResourceManager;
struct Pikmin_TCreateObject_JAudio;
struct Viewport;
namespace Game {
struct Creature;
struct MovieConfig;
struct Navi;
struct PlayCamera;
namespace P2JST {
struct ObjectSystem;
}
} // namespace Game
namespace JStudio {
struct TControl;
struct TFactory;
} // namespace JStudio
namespace JStudio_JParticle {
struct TCreateObject;
}
namespace JStudio_JStage {
struct TCreateObject;
}
namespace P2JME {
namespace Movie {
struct TControl;
}
} // namespace P2JME
namespace PSM {
struct Demo;
}

namespace Game {
struct MovieConfig : public CNode {
	virtual ~MovieConfig() { } // _08 (weak)

	MovieConfig() { }

	void dump();
	void isSkippable();
	void isNeverSkippable();
	void is(char*);
	void read(Stream&);

	u8 _18[0xBE - 0x18]; // _18
	u16 m_drawFlags;     // _BE
};

struct MoviePlayArg {
	inline MoviePlayArg(); // not in callmap
	MoviePlayArg(char* p1, char* p2, IDelegate3<MovieConfig*, unsigned long, unsigned long>* p3, u32 p4);
	// inline MoviePlayArg(char* movieName, char* IDelegate3<MovieConfig*, u32, u32>* p2, IDelegate3<MovieConfig*, void*, u32>* p3)
	// 	: _0C(p2)
	// 	, m_movieName(movieName)
	// 	, m_courseName(nullptr)
	// 	, m_origin(zero)
	// 	, m_angle(0.0f)
	// 	, m_naviID(0)
	// 	, _10(p3)
	// 	, _08(nullptr)
	// 	, streamID(0)
	char* m_movieName;                                           // _00
	char* m_courseName;                                          // _04
	char* _08;                                                   // _08
	IDelegate3<MovieConfig*, unsigned long, unsigned long>* _0C; // _0C
	IDelegate3<MovieConfig*, unkptr, unsigned long>* _10;        // _10 /* Second type is unknown. */
	u32 _14;                                                     // _14
	Vector3f m_origin;                                           // _18 /* previously called m_itemPosition */
	float m_angle;                                               // _24 /* previously called m_itemFaceDirection */
	u32 m_naviID;                                                // _28
	u32 m_streamID;                                              // _2C
	Vector3f* m_soundPosition;                                   // _30
};

// Size: 0x5C
struct MovieContext : public CNode {
	virtual MovieContext* getChild(); // _08
	virtual MovieContext* getNext();  // _0C

	MoviePlayArg m_arg;       // _18
	MovieConfig* m_config;    // _4C
	Navi* m_navi;             // _50
	Creature* m_targetObject; // _54
	PlayCamera* m_camera;     // _58
};

// Size: 0x1F8
struct MoviePlayer : JKRDisposer {
	MoviePlayer();

	virtual ~MoviePlayer(); // _00

	void allocContexts();
	void allocMovieHeap(unsigned long);
	void clearContexts();
	void clearPauseAndDraw();
	void clearSuspendedDemo();
	void draw(struct Graphics&);
	void drawLoading(struct Graphics&);
	MovieConfig* findConfig(char*, char*);
	PlayCamera* getActiveGameCamera();
	Navi* getActiveOrima();
	MovieContext* getNewContext();
	bool isPlaying(char*);
	void loadResource();
	bool parse(bool);
	unknown play(MoviePlayArg&);
	unknown play(MovieConfig*, MoviePlayArg&, bool);
	void reset();
	void resetFrame();
	void setCamera(Camera*);
	void setContext(MovieContext*, MovieConfig*, MoviePlayArg&);
	void setPauseAndDraw(MovieConfig*);
	void setTransform(Vector3f&, float);
	void skip();
	unknown start(Camera*);
	bool stop();
	void unsuspend(long, bool);
	unknown update(Controller*, Controller*);

	int m_demoState; // _18
	DvdThreadCommand m_threadCommand;
	u8 m_isPaused;
	// TODO: Is this a quat?
	Vector3f m_cameraPosition;
	float m_cameraAngle;
	u8 _09C[4];
	float _0A0;
	bool m_canFinish;
	Vector3f m_offset;
	PSM::Demo* m_demoPSM;
	MovieConfig* m_currentConfig;
	IDelegate3<MovieConfig*, u32, u32>* _0B4;
	u32 m_naviID;
	IDelegate3<MovieConfig*, void*, u32>* _0BC;
	char* _0C0;
	u32 m_streamID;
	MovieContext* m_contexts;
	MovieContext _0CC;
	MovieContext _128;
	int m_suspend;
	int m_contextsCount;
	Navi* _18C;
	PlayCamera* _190;
	Creature* m_targetObject;
	Viewport* m_viewport;
	Navi* _19C;
	PlayCamera* _1A0;
	IDelegate1<MoviePlayer>* _1A4;
	JKRHeap* m_movieHeap;
	u32 m_movieHeapFreeSize;
	int m_messageEndCount;
	// TODO: Is this a quat?
	Vector3f m_transform;
	float m_transformAngle;
	P2JST::ObjectSystem* m_objectSystem;
	JStudio::TControl* m_studioControl;
	JStudio::TFactory* m_studioFactory;
	JStudio_JStage::TCreateObject* m_studioStageCreateObject;
	JStudio_JParticle::TCreateObject* m_studioParticleCreateObject;
	Pikmin_TCreateObject_JAudio* m_pikminCreateObjectAudio;
	P2JME::Movie::TControl* m_movieControl;
	u32 m_counter;
	void* m_stbFile;
	// TODO: This might be a BitFlag<u32> object
	enum { IS_ACTIVE = 1, _1F0_UNKNOWN_2 = 2, _FORCE_INT = 0xFFFFFFFF } m_flags; // _1F0
	// u32 m_isActive : 1, m_1F0_Unknown : 1;
	JPAResourceManager* m_resourceManager;
};

extern MoviePlayer* moviePlayer;
} // namespace Game

#endif
