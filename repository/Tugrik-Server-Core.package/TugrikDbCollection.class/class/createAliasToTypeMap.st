initialization
createAliasToTypeMap
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

  AliasToTypeMap := Dictionary new
    at: 'double' put: 1;
    at: 'string' put: 2;
    at: 'object' put: 3;
    at: 'array' put: 4;
    at: 'binData' put: 5;
    at: 'objectId' put: 7;
    at: 'bool' put: 8;
    at: 'date' put: 9;
    at: 'null' put: 10;
    at: 'symbol' put: 14;
    at: 'int' put: 16;
    at: 'timestamp' put: 17;
    at: 'long' put: 18;
    yourself