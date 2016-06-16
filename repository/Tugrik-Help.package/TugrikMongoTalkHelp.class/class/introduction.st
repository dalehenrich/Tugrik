pages
introduction
	^ HelpTopic 
		title: 'Intro'
		contents: 
'Tugrik implements the full Mongotalk API. You create a session by opening the default Tugrik session:

	tugrik := Tugrik default.
	tugrik open.

and when you are done with the session you close it:

	tugrik close	

A Tugrik session is created by specifying 
'