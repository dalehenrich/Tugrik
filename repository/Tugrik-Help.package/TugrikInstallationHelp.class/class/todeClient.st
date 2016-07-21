pages
todeClient
	^ HelpTopic 
		title: 'tODE Client'
		contents: 
'Tugrik/MongoTalk is a client-side applications that does not require any server-side programming, however, moving forward it may become interesting to dabble a bit with server-side code, if for no other reason than to inspect the server-sed data structures out of curiosity.

The following bash script creates a Pharo3.0 tODE client named ''tode'':

	createClient tode
	# start the client
	startClient tode 

Read "Using GsDevKit and tODE"[1] to get started with tODE.

The following bash shell scripts are used for managing your tode client:

	clients                     # list information about the installed clients

	startClient tode            # start the tode client

	deleteClient tode           # delete the tode client 

[1] https://github.com/GsDevKit/GsDevKit_home#using-gsdevkit-and-tode'