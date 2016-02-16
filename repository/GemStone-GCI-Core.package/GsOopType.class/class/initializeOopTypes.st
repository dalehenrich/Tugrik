private
initializeOopTypes
	"self initialize"

	(OopTypes := Dictionary new)
		at: #oopNil put: (GsOopType fromInteger: 20);
		at: #oopIllegal put: (GsOopType fromInteger: 1);
		at: #oopClassString put: (GsOopType fromInteger: 74753);
		at: #oopClassUtf8 put: (GsOopType fromInteger: 154113);
		at: #oopMaxSmallInteger put: (GsOopType fromInteger: 16r7FFFFFFFFFFFFFFA) yourself