#ifndef _J2DANMTRANSFORM_H
#define _J2DANMTRANSFORM_H

/*
    __vt__15J2DAnmTransform:
    .4byte 0
    .4byte 0
    .4byte __dt__15J2DAnmTransformFv
    .4byte searchUpdateMaterialID__10J2DAnmBaseFP9J2DScreen
    .4byte getTransform__15J2DAnmTransformCFUsP16J3DTransformInfo
*/

struct J2DAnmBase {
	virtual ~J2DAnmBase();                           // _08
	virtual void searchUpdateMaterialID(J2DScreen*); // _0C

	// _00 VTBL
};

struct J2DAnmTransform : public J2DAnmBase {
	virtual ~J2DAnmTransform();                                         // _08
	virtual void getTransform(unsigned short, J3DTransformInfo*) const; // _10

	// _00 VTBL
};

#endif
