pages
tugrikClient
	^ HelpTopic 
		title: 'Tugrik Client'
		contents: 
'
 SmalltalkCISpec {
  #configuring : [
    SCIGemStoneServerConfigSpec {
     #defaultSessionName : ''Tugrik'',
     #platforms : [ #gemstoneClient ] 
    }
  ],
  #loading : [
    SCIMetacelloLoadSpec {
      #baseline : ''Tugrik'',
      #load : [ ''CI'' ],
      #onWarningLog : true,
      #directory : ''repository'',
      #platforms : [ #gemstone, #pharo ]
    }
  ]
 }

'