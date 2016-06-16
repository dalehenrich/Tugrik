pages
voyageClient
	^ HelpTopic 
		title: 'Voyage Client'
		contents: 
'The following bash script creates a Pharo5.0 voyage client named ''voyage'':

	createClient -t pharo voyage -l -v Pharo5.0 -z $GS_HOME/shared/repos/voyage/.smalltalk_gemstone.ston
	# start the client
	startClient voyage

The ''-z $GS_HOME/shared/repos/voyage/.smalltalk_gemstone.ston'' options references a SmalltalkCI configuration file[1] that descripts how the Voyage project should be installed in the client:

	SmalltalkCISpec {
		#loading : [
			SCIMetacelloLoadSpec {
				#baseline : ''VoyageMongo'',
				#directory : ''mc'',
				#load : [ ''gemstone'', ''gemstone tests'' ],
				#platforms : [ #pharo , #gemstone ]
    		} 
		],
		#testing : {
			#include: {
			#projects : [ ''Tugrik'' ]
			}
		},
		#configuring : [
			SCIGemStoneServerConfigSpec {
				#defaultSessionName : ''Tugrik'',
				#platforms : [ #gemstoneClient ] 
			}
		]
	}

The SCIMetacelloLoadSpec is a specification for a Metacello load expression. The SCIGemStoneServerConfigSpec specifies that the default session (or stone) name is ''Tugrik''. Note that a Voyage client is to be used with a Tugrik stone - there is no server-side code associated with Voyage support.

The following bash shell scripts are used for managing your voyage client:

	clients                       # list information about the installed clients

	startClient voyage            # start the tugrik client
	startClient voyage -s Tugrik  # start the tugrik client and set the default session name to Tugrik

	deleteClient voyage           # delete the tugrik client 

[1] https://github.com/hpi-swa/smalltalkCI#complete-smalltalkston-template
'