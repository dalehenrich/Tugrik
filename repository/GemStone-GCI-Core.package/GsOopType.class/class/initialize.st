initialization
initialize
	"self initialize"

	(OopTypes := Dictionary new)
		at: #oopNil put: (GsOopType fromInteger: 20);
		at: #oopIllegal put: (GsOopType fromInteger: 1);
		at: #oopClassString put: (GsOopType fromInteger: 74753);
		at: #oopClassSymbol put: (GsOopType fromInteger: 110849);
		at: #oopClassUnicode7 put: (GsOopType fromInteger: 154369);
		at: #oopClassUtf8 put: (GsOopType fromInteger: 154113);
		at: #oopClassDoubleByteString put: (GsOopType fromInteger: 143873);
		at: #oopClassDoubleByteSymbol put: (GsOopType fromInteger: 144129);
		at: #oopClassUnicode16 put: (GsOopType fromInteger: 154625);
		at: #oopClassQuadByteString put: (GsOopType fromInteger: 144385);
		at: #oopClassQuadByteSymbol put: (GsOopType fromInteger: 144641);
		at: #oopClassUnicode32 put: (GsOopType fromInteger: 154881);
		at: #oopMaxSmallInteger put: (GsOopType fromInteger: 16r7FFFFFFFFFFFFFFA);
		yourself