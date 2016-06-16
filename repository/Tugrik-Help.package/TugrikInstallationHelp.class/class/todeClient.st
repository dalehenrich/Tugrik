pages
todeClient
	^ HelpTopic 
		title: 'tODE Client'
		contents: 
'Tugrik/MongoTalk and Tugrik/Voyage are client-side applications that do not require any server-side programming, however, moving forward it may become interesting to dabble a bit with server-side code, if for no other reason than to inspect the server-sed data structures out of curiosity.

The following bash script creates a Pharo3.0 tODE client named ''tode'':

	createClient tode
	# start the client
	startClient tode 

Read "Using GsDevKit and tODE"[1] to get started with tODE.

The following bash shell scripts are used for managing your Tugrik client:

	clients                       # list information about the installed clients

	startClient tugrik            # start the tugrik client
	startClient tugrik -s Tugrik  # start the tugrik client and set the default session name to Tugrik

	deleteClient tugrik           # delete the tugrik client 

[1] https://github.com/GsDevKit/GsDevKit_home#using-gsdevkit-and-tode'