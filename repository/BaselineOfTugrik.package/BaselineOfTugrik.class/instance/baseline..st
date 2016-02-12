baseline
baseline: spec
  <baseline>
  spec
    for: #'pharo'
    do: [ 
      spec
        package: 'Tugrik-Core';
        yourself.
      spec
        group: 'default' with: #('Core' 'Tests');
        group: 'Core' with: #('Tugrik-Core');
        group: 'Tests' with: #();
        yourself ].
