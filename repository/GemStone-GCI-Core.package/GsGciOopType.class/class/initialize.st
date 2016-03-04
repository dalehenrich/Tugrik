initialization
initialize
	"self initialize"

	(OopTypes := Dictionary new)
		at: #oopNil put: (GsGciOopType fromInteger: 20);
		at: #oopIllegal put: (GsGciOopType fromInteger: 1);
		at: #oopClassString put: (GsGciOopType fromInteger: 74753);
		at: #oopClassSymbol put: (GsGciOopType fromInteger: 110849);
		at: #oopClassUnicode7 put: (GsGciOopType fromInteger: 154369);
		at: #oopClassUtf8 put: (GsGciOopType fromInteger: 154113);
		at: #oopClassDoubleByteString put: (GsGciOopType fromInteger: 143873);
		at: #oopClassDoubleByteSymbol put: (GsGciOopType fromInteger: 144129);
		at: #oopClassUnicode16 put: (GsGciOopType fromInteger: 154625);
		at: #oopClassQuadByteString put: (GsGciOopType fromInteger: 144385);
		at: #oopClassQuadByteSymbol put: (GsGciOopType fromInteger: 144641);
		at: #oopClassUnicode32 put: (GsGciOopType fromInteger: 154881);
		at: #oopClassByteArray put: (GsGciOopType  fromInteger: 103425);
		at: #oopTrue put: (GsGciOopType fromInteger: 268);
		at: #oopFalse put: (GsGciOopType fromInteger: 12);
		at: #oopMaxSmallInteger put: (GsGciOopType fromInteger: 16r7FFFFFFFFFFFFFFA);
		yourself