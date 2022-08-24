#include "types.h"

struct VsOtakaraName {
	static const char* cCoin;
	static const char* cBedamaBlue;
	static const char* cBedamaRed;
	static const char* cBedamaYellow;
	static float cBedamaYellowDepth;
};

const char* VsOtakaraName::cCoin         = "flower_red";
const char* VsOtakaraName::cBedamaBlue   = "teala_dia_e";
const char* VsOtakaraName::cBedamaRed    = "teala_dia_a";
const char* VsOtakaraName::cBedamaYellow = "teala_dia_b";
float VsOtakaraName::cBedamaYellowDepth  = 3.0f;
