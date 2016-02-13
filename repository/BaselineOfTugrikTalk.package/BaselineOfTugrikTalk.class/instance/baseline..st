baseline
baseline: spec
	<baseline>
	spec
		for: #pharo
		do: [ 
			spec
				configuration: 'FFI'
					with: [ 
							spec
								versionString: #stable;
								repository: 'http://www.squeaksource.com/MetacelloRepository' ];
				configuration: 'MongoTalk'
					with: [ 
							spec
								version: #stable;
								repository: 'http://www.smalltalkhub.com/mc/MongoTalkTeam/mongotalk/main' ];
				yourself.
			spec
				package: 'GemStone-ThreadSafe-GCI' with: [ spec requires: #('FFI') ];
				package: 'Tugrik-Core' with: [ spec requires: 'GemStone-ThreadSafe-GCI' ];
				package: 'Tugrik-Pharo-Tools' with: [ spec requires: 'MongoTalk' ];
				package: 'Tugrik-Tests' with: [ spec requires: 'Tugrik-Core' ];
				yourself.
			spec
				group: 'default' with: #('Core' 'Tools' 'Tests');
				group: 'Core' with: #('Tugrik-Core');
				group: 'Tools' with: #('Tugrik-Pharo-Tools');
				group: 'Tests' with: #('Tugrik-Tests');
				yourself ]