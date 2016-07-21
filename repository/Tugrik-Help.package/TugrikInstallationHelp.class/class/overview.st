pages
overview
	^ HelpTopic 
		title: 'Overview'
		contents: 
'Tugrik is a client/server application. GemStone/S is the server and one or more Pharo5.0 images are the clients.

GsDevKit_home[1] is used to create and manage a collection of GemStone/S databases or "stones". GsDevKit_home can also be used to create a manage a collection of Pharo images. GsDevKit_home may be installed on Ubunutu 14.04, CentOS, OSX and Windows (client only).

The following bash script installs GsDevKit_home and then clones the GitHub repositories used by this project, creates a Tugrik stone, a tugrik client, and a tODE client:

	#--------
	# Setup
	#--------
	# Install GsDevKit_home
	git clone https://github.com/GsDevKit/GsDevKit_home.git
	# define the $GS_HOME env variable (required) and add $GS_HOME/bin to your path
	cd GsDevKit_home
	. bin/defHOME_PATH.env  
	installServerClient
	
	#--------
	# Clone github projects to local disk
	#--------
	cd $GS_HOME/shared/repos
	git clone https://github.com/GsDevKit/ston.git			  # STON (GsDevKit fork)
	git clone https://github.com/hpi-swa/smalltalkCI.git	  # SmalltalkCI
	git clone https://github.com/dalehenrich/mongotalk.git	# MongoTalk (my fork)
	cd mongotalk
	git checkout tugrik
	cd ..
	git clone https://github.com/dalehenrich/Tugrik.git		# Tugrik
	cd ..
	git clone https://github.com/GsDevKit/GemStone-GCI.git	# GemStone-GCI
	cd $GS_HOME

	#--------
	# Create Tugrik server
	#--------
	createStone -u http://gsdevkit.github.io/GsDevKit_home/Tugrik.ston -i Tugrik -l Tugrik Tugrik 3.3.1

	#--------
	# Create Clients
	#--------
	# Create tugrik client
	createClient -t pharo tugrik -l -v Pharo5.0 -z $GS_HOME/shared/repos/Tugrik/.smalltalk.ston

	# Create tODE client
	createClient tode
	
	#--------
	# Setup for Automatic updates
	#--------
	# For automatic updates of shared project repositories
	cp $GS_HOME/shared/repos/Tugrik/gsdevkit/cloneUpdate $GS_HOME/sys/local/gsdevkit_bin

	#--------
	# Update shared project repositores, refresh clients and server
	#--------
	# Update shared project repositories and refresh clients
	updateGsDevKit -gsc
	
	# refresh Tugrik stone
	todeIt Tugrik project load Tugrik

**IMPORTANT NOTE** 
Before running any of the bash scripts in this help document, you must have the $GS_HOME env var defined and $GS_HOME/bin should be in your path. The easiest way to do that is to include the following in your .bashrc file:

	. <path-to-GsDevKit_home>/bin/defHOME_PATH.env

[1] https://github.com/GsDevKit/GsDevKit_home
'