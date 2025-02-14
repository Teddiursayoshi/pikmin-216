#ifndef _SYS_VERTEXTABLE_H
#define _SYS_VERTEXTABLE_H

/*
    __vt__Q23Sys11VertexTable:
    .4byte 0
    .4byte 0
    .4byte __dt__Q23Sys11VertexTableFv
    .4byte getChildCount__5CNodeFv
    .4byte "getObject__23Container<10Vector3<f>>FPv"
    .4byte "getNext__28ArrayContainer<10Vector3<f>>FPv"
    .4byte "getStart__28ArrayContainer<10Vector3<f>>Fv"
    .4byte "getEnd__28ArrayContainer<10Vector3<f>>Fv"
    .4byte "get__28ArrayContainer<10Vector3<f>>FPv"
    .4byte "getAt__28ArrayContainer<10Vector3<f>>Fi"
    .4byte "getTo__28ArrayContainer<10Vector3<f>>Fv"
    .4byte "writeObject__Q23Sys11VertexTableFR6StreamR10Vector3<f>"
    .4byte "readObject__Q23Sys11VertexTableFR6StreamR10Vector3<f>"
    .4byte write__Q23Sys11VertexTableFR6Stream
    .4byte "read__28ArrayContainer<10Vector3<f>>FR6Stream"
    .4byte "alloc__28ArrayContainer<10Vector3<f>>Fi"
    .4byte "addOne__Q23Sys11VertexTableFR10Vector3<f>"
    .4byte "setArray__28ArrayContainer<10Vector3<f>>FP10Vector3<f>i"
*/

struct CNode {
	virtual ~CNode();             // _08 (weak)
	virtual void getChildCount(); // _0C
};

struct Container<Vector3<float>> {
	virtual ~Container<Vector3<float>>(); // _08 (weak)
	virtual void _0C() = 0;               // _0C
	virtual void getObject(void*);        // _10 (weak)
};

struct ArrayContainer<Vector3<float>> {
	virtual ~ArrayContainer<Vector3<float>>();          // _08 (weak)
	virtual void _0C() = 0;                             // _0C
	virtual void _10() = 0;                             // _10
	virtual void getNext(void*);                        // _14 (weak)
	virtual void getStart();                            // _18 (weak)
	virtual void getEnd();                              // _1C (weak)
	virtual void get(void*);                            // _20 (weak)
	virtual void getAt(int);                            // _24 (weak)
	virtual void getTo();                               // _28 (weak)
	virtual void writeObject(Stream&, Vector3<float>&); // _2C
	virtual void readObject(Stream&, Vector3<float>&);  // _30 (weak)
	virtual void write(Stream&);                        // _34
	virtual void read(Stream&);                         // _38 (weak)
	virtual void alloc(int);                            // _3C (weak)
	virtual void addOne(Vector3<float>&);               // _40 (weak)
	virtual void setArray(Vector3<float>*, int);        // _44 (weak)
};

namespace Sys {
struct VertexTable : public CNode, public Container<Vector3<float>>, public ArrayContainer<Vector3<float>> {
	virtual ~VertexTable();                             // _08 (weak)
	virtual void writeObject(Stream&, Vector3<float>&); // _2C
	virtual void readObject(Stream&, Vector3<float>&);  // _30 (weak)
	virtual void write(Stream&);                        // _34
	virtual void addOne(Vector3<float>&);               // _40 (weak)

	void transform(Matrixf&);
	void cloneFrom(Matrixf&, Sys::VertexTable*);
};
} // namespace Sys

#endif
