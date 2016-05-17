initialization
createTypeToClassMap
  "https://docs.mongodb.com/manual/reference/operator/query/type/#document-type-available-types"

  "Type 	Number 	Alias 	Notes
Double 	1 	“double” 	 
String 	2 	“string” 	 
Object 	3 	“object” 	 
Array 	4 	“array” 	 
Binary data 	5 	“binData” 	 
Undefined 	6 	“undefined” 	Deprecated.
ObjectId 	7 	“objectId” 	 
Boolean 	8 	“bool” 	 
Date 	9 	“date” 	 
Null 	10 	“null” 	 
Regular Expression 	11 	“regex” 	 
DBPointer 	12 	“dbPointer” 	 
JavaScript 	13 	“javascript” 	 
Symbol 	14 	“symbol” 	 
JavaScript (with scope) 	15 	“javascriptWithScope” 	 
32-bit integer 	16 	“int” 	 
Timestamp 	17 	“timestamp” 	 
64-bit integer 	18 	“long” 	 
Min key 	-1 	“minKey” 	 
Max key 	127 	“maxKey”"

  TypeToClassMap := Dictionary new
    at: 1 put: Float;
    at: 2 put: CharacterCollection;
    at: 3 put: Object;
    at: 4 put: Array;
    at: 5 put: ByteArray;
    at: 6 put: UndefinedObject;
    at: 7 put: OID;
    at: 8 put: Boolean;
    at: 9 put: Date;
    at: 10 put: UndefinedObject;
    at: 14 put: Symbol;
    at: 16 put: Integer;
    at: 17 put: TimeStamp;
    at: 18 put: Integer;
    yourself