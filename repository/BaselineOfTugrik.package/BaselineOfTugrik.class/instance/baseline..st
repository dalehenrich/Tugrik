baseline
baseline: spec
	<baseline>
	spec
		for: #pharo
		do: [ 
			spec
				configuration: 'MongoTalk'
					with: [ 
							spec
								version: #stable;
								repository: 'http://www.smalltalkhub.com/mc/MongoTalkTeam/mongotalk/main' ];
				yourself.
			spec
				package: 'Tugrik-Core';
				package: 'Tugrik-Pharo-Tools' with: [ spec requires: 'MongoTalk' ];
				yourself.
			spec
				group: 'default' with: #('Core' 'Tools' 'Tests');
				group: 'Core' with: #('Tugrik-Core');
				group: 'Tools' with: #('Tugrik-Pharo-Tools');
				group: 'Tests' with: #();
				yourself ]