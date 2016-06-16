pages
introduction
	^ HelpTopic 
		title: 'Tugrik'
		contents: 
'Tugrik[1] is a persistence framework that uses GemStone/S 64[3] as the database engine.

	"GemStone/S 64 provides a distributed, server-based, multi-user, transactional
	 Smalltalk runtime system, with the ability to partition the application 
	 between client and server"[4]

An initial proof of concept has been implemented using a MongoTalk-style[2] API. The proof of concept includes a Voyage[5] implementation for Tugrik.

While it is somewhat interesting for developers to use Tugrik to simply replace MongoDb in their Pharo applications, the work moving forward will focus on expanding the functionality of Tugrik beyond that of a simple document database, after all, GemStone/S is a fully functional Smalltalk implementation.

[1] https://github.com/dalehenrich/Tugrik
[2] https://github.com/pharo-nosql/mongotalk
[3] https://gemtalksystems.com/products/gs64/
[4] https://downloads.gemtalksystems.com/docs/GemStone64/3.3.x/GS64-ProgGuide-3.3/GS64-ProgGuide-3.3.htm
[5] https://github.com/dalehenrich/voyage
'