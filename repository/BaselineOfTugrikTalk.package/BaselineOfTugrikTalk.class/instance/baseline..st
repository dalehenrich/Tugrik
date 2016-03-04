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
        package: 'GemStone-GCI-Core'
          with: [ 
              spec
                requires: #('FFI' 'Ston');
                postLoadDoIt: #'initGci32xErrSType' ];
        package: 'GemStone-GCI-Tests'
          with: [ spec requires: 'GemStone-GCI-Core' ];
        package: 'GemStone-GCI-ThreadSafe-Core'
          with: [ spec requires: 'GemStone-GCI-Core' ];
        package: 'GemStone-GCI-ThreadSafe-Tests'
          with: [ spec requires: 'GemStone-GCI-ThreadSafe-Core' ];
        package: 'Tugrik-Core' with: [ spec requires: 'GemStone-GCI-Core' ];
        package: 'Tugrik-Pharo-Tools' with: [ spec requires: 'MongoTalk' ];
        package: 'Tugrik-Tests' with: [ spec requires: 'Tugrik-Core' ];
        yourself.
      spec
        group: 'default' with: #('Core' 'Tools' 'Tests');
        group: 'Core' with: #('Tugrik-Core');
        group: 'Tools' with: #('Tugrik-Pharo-Tools');
        group: 'Tests' with: #('Tugrik-Tests' 'GemStone-GCI-Tests');
        yourself ].
  spec
    for: #(#'gs3.2.x' #'gs3.3.x' #'gs3.4.x')
    do: [ 
      spec
        package: 'Tugrik-Server-Core';
        package: 'Tugrik-Server-Tests'
          with: [ spec requires: #('Tugrik-Server-Core') ];
        package: 'GemStone-GCI-Server-Tests';
        yourself.
      spec
        group: 'default' with: #('Server');
        group: 'Server' with: #('Tugrik-Server-Core');
        group: 'Tests'
          with: #('Tugrik-Server-Tests' 'GemStone-GCI-Server-Tests');
        yourself ]