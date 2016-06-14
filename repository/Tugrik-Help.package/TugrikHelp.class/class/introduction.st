pages
introduction
	^ HelpTopic 
		title: 'Proof of Concept'
		contents: 
'Tugrik[1] is a framework that implements a MongoTalk-style[2] API to a GemStone/S 64[3] data base.

	"GemStone/S 64 provides a distributed, server-based, 
	 multi-user, transactional Smalltalk runtime system, 
	 with the ability to partition the application 
	 between client and server"[4]

A developer should be able to use Tugrik in place of MongoTalk in his or her Pharo application. 

Tugirk passes all of the MongoTalk tests and a variant of Voyage[5] has been implemented that uses Tugrik in place of MongoTalk. All of the Voyage tests are passing, as well. 

From a performance perspective, for simple benchmarks GemStone/S and MongoDb are roughly in the same ballpark. The client-server serialization model for Tugrik (using STON[6] and GemBuilder for C[7]) has not been optimized. A server-side only run for Tugrik is twice as fast as a client-server MongoTalk run (3 seconds vs 7 seconds).

Performance is not necessarily the primary motivation for using Tugrik and GemStone/S in a Pharo application. With GemStone/S you get a complete Smalltalk implementation in the data base which makes for some very interesting possibilities over and above simple document storage.   
     

[1] https://github.com/dalehenrich/Tugrik
[2] https://github.com/pharo-nosql/mongotalk
[3] https://gemtalksystems.com/products/gs64/
[4] https://downloads.gemtalksystems.com/docs/GemStone64/3.3.x/GS64-ProgGuide-3.3/GS64-ProgGuide-3.3.htm
[5] https://github.com/dalehenrich/voyage
[6] https://github.com/svenvc/ston#ston---smalltalk-object-notation
[7] https://downloads.gemtalksystems.com/docs/GemStone64/3.3.x/GS64-GemBuilderforC-3.3.pdf
'