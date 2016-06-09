baseline
baseline: spec
  <baseline>
  spec
    for: #'pharo'
    do: [ 
      spec
        baseline: 'Ston'
          with: [ 
              spec
                loads: 'Core';
                repository: 'github://GsDevKit/ston:v0.9.4/repository' ];
        baseline: 'GemStoneGCI'
          with: [ 
              spec
                loads: #('Core');
                repository: 'github://GsDevKit/GemStone-GCI:master/repository' ];
        baseline: 'Tode'
          with: [ 
              spec
                loads: #('Minimal Client' 'Minimal Tests');
                repository: 'github://dalehenrich/tode:dev/repository' ];
        baseline: 'TodeClient'
          with: [ 
              spec
                loads: #('GsDevKitClient' 'GsDevKitClient Tests');
                repository: 'github://GsDevKit/GsDevKit_home:dev/shared/repos/TodeClient' ];
        configuration: 'FFI'
          with: [ 
              spec
                versionString: #'stable';
                repository: 'http://www.squeaksource.com/MetacelloRepository' ];
        configuration: 'MongoTalk'
          with: [ 
              spec
                version: #'stable';
                repository:
                    'http://www.smalltalkhub.com/mc/MongoTalkTeam/mongotalk/main' ];
        yourself.
      spec
        package: 'Tugrik-Core' with: [ spec requires: #('GemStoneGCI' 'TodeClient' 'Tode') ];
        package: 'Tugrik-Pharo-Tools' with: [ spec requires: 'MongoTalk' ];
        package: 'Tugrik-Tests' with: [ spec requires: 'Tugrik-Core' ];
        yourself.
      spec
        group: 'default' with: #('Core' 'Tools' 'Tests');
        group: 'Core' with: #('Tugrik-Core');
        group: 'Tools' with: #('Tugrik-Pharo-Tools');
        group: 'Tests' with: #('Tugrik-Tests');
        group: 'CI' with: #('Core' 'Tools' 'Tests');
        yourself ].
  spec
    for: #(#'gs3.2.x' #'gs3.3.x' #'gs3.4.x')
    do: [ 
      spec
        package: 'Tugrik-OID';
        package: 'Tugrik-Server-Core' with: [ spec requires: #('Tugrik-OID') ];
        package: 'Tugrik-Server-Tests'
          with: [ spec requires: #('Tugrik-Server-Core') ];
        yourself.
      spec
        group: 'default' with: #('Server');
        group: 'Server' with: #('Tugrik-Server-Core');
        group: 'Tests' with: #('Tugrik-Server-Tests');
        group: 'CI' with: #('Server' 'Tests');
        yourself ]