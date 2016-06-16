pages
tugrikClient
	^ HelpTopic 
		title: 'Tugrik Client'
		contents: 
'The following bash script creates a Pharo5.0 Tugrik client named `tugrik`:

	createClient -t pharo tugrik -l -v Pharo5.0 -z $GS_HOME/shared/repos/Tugrik/.smalltalk.ston
	# start the client
	startClient tugrik

The ''-t pharo tugrik'' option indicates that a Pharo client named `tugrik` will be created.

The ''-l'' option indicates that that a non-tODE client is being built and that all of the git projects in $GS_HOME/shared/repos with a an applicable `.smalltalk.ston` file will be locked[2] in the image before loading begins. Locking local projects means that the git repositories in $GS_HOME/shared/repos will be used for dependent projects, ensuring that the server and client are using the same versions of the projects. Once the local shared pharo projects are locked the following projects are loaded into the client image:

	- Metacello (pick up the latest bugfixes)
	- STON (my fork)
	- SmalltalkCI (for loading based on the SmalltalkCI configuration file)
	- TodeClient (GsDevKitClient group)

The ''-v Pharo5.0'' option indicates which version of Pharo to be used to create the client. In this case Pharo5.0.

The ''-z $GS_HOME/shared/repos/Tugrik/.smalltalk.ston'' option references a SmalltalkCI configuration file[1] that describes how the Tugrik project should installed in the client:

	SmalltalkCISpec {
		#loading : [
			SCIMetacelloLoadSpec {
				#baseline : ''Tugrik'',
				#load : [ ''CI'' ],
				#onWarningLog : true,
				#directory : ''repository'',
				#platforms : [ #gemstone, #pharo ]
			}
		],
		#configuring : [
			SCIGemStoneServerConfigSpec {
				#defaultSessionName : ''Tugrik'',
				#platforms : [ #gemstoneClient ] 
			}
		]
	}

The SCIMetacelloLoadSpec is a specification for a Metacello load expression. The SCIGemStoneServerConfigSpec specifies that the default session (or stone) name is ''Tugrik''.

The following bash shell scripts are used for managing your Tugrik client:

	clients                       # list information about the installed clients

	startClient tugrik            # start the tugrik client
	startClient tugrik -s Tugrik  # start the tugrik client and set the default session name to Tugrik

	deleteClient tugrik           # delete the tugrik client 

[1] https://github.com/hpi-swa/smalltalkCI#complete-smalltalkston-template
[2] https://github.com/dalehenrich/metacello-work/blob/master/docs/LockCommandReference.md#lock-command-reference
'