pages
tugrikServer
	^ HelpTopic 
		title: 'Tugrik Server'
		contents: 
'The following bash script creates a stone named "Tugrik" with the Tugrik server code installed using GemStone 3.3.0[1]:

	createStone -u http://gsdevkit.github.io/GsDevKit_home/Tugrik.ston -i Tugrik -l Tugrik Tugrik 3.3.0

The ''-u http://gsdevkit.github.io/GsDevKit_home/Tugrik.ston'' option references a tODE project entry that describes how the Tugrik project should be installed in the server:

	^ TDProjectSpecEntryDefinition new
		baseline: ''Tugrik''
			repository: ''github://dalehenrich/Tugrik:master/repository''
			loads: #(''default'');
		installScript: ''project clone --https --local Tugrik'';
		status: #(#''inactive'');
		locked: false;
		yourself

The ''-i'' option on the createStone command indicates that the install script in the project entry should be run:

	project clone --https --local Tugrik

`project clone` is a tODE command that arranges to clone the github repository for Tugrik (https://github.com/dalehenrich/Tugrik) into the GsDevKit_home environment as $GS_HOME/shared/repos/Tugrik.

The ''-l'' option indicates that the Tugrik project should be loaded into the stone.

After the createStone command completes, the directory $GS_HOME/server/stone/Tugrik contains all of the stone-related files. 

The createStone command starts the stone[3] and netldi[4] processes. The stone and netldi are managed independently by GsDevKit_home shell scripts. The netldi process must be running in order for a client process to connect to the stone.

The following bash shell scripts are used for managing your Tugrik stone:

	stones                # list information about the installed and running stones 

	stopStone Tugrik      # stop the Tugrik stone
	stopNetldi Tugrik     # stop the Tugrik netldi
	stopStone -b Tugrik   # stop the Tugrik stone and netldi

	startStone Tugrik     # start the Tugrik stone
	startNetldi           # start the Tugrik netldi
	startStone -b Tugrik  # start the Tugrik stone and netldi

	deleteStone Tugrik    # stop the Tugrik stone and netldi, then delete the Tugrik stone from disk

[1] https://gemtalksystems.com/products/gs64/versions33x/
[2] https://downloads.gemtalksystems.com/docs/GemStone64/3.3.x/GS64-SysAdminGuide-3.3/3-Distributed.htm#pgfId-84507
[3] https://downloads.gemtalksystems.com/docs/GemStone64/3.3.x/GS64-SysAdminGuide-3.3/GS64-SysAdminGuide-3.3.htm
[4] https://downloads.gemtalksystems.com/docs/GemStone64/3.3.x/GS64-SysAdminGuide-3.3/GS64-SysAdminGuide-3.3.htm'