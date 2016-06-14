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
                repository:
                    'github://GsDevKit/GsDevKit_home:dev/shared/repos/TodeClient' ];
        configuration: 'FFI'
          with: [ 
              spec
                versionString: #'stable';
                repository: 'http://www.squeaksource.com/MetacelloRepository' ];
        baseline: 'MongoTalk'
          with: [ 
              spec
                loads: #('Tools' 'Tests');
                repository: 'github://pharo-nosql/mongotalk:master/mc' ];
        yourself.
      spec
        package: 'Tugrik-Core'
          with: [ spec requires: #('GemStoneGCI' 'TodeClient' 'Tode' 'MongoTalk') ];
        package: 'Tugrik-Queries' with: [ spec requires: #('Tugrik-Core') ];
        package: 'Tugrik-Pharo-Tools' with: [ spec requires: 'Tugrik-Core' ];
		  package: 'Tugrik-Help' with: [ spec requires: 'Tugrik-Core' ];
        package: 'Tugrik-Tests' with: [ spec requires: #( 'Tugrik-Core' 'Tugrik-Queries') ];
        yourself.
      spec
        group: 'default' with: #('Core' 'Tools' 'Tests' 'Help');
        group: 'Core' with: #('Tugrik-Core' 'Tugrik-Queries');
        group: 'Tools' with: #('Tugrik-Pharo-Tools');
        group: 'Tests' with: #('Tugrik-Tests');
        group: 'Help' with: #('Tugrik-Help');
        group: 'CI' with: #('Core' 'Tools' 'Tests' 'Help');
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