interface opening
openOn: aTugrik
	<script: 'TugrikBrowser openOn: Tugrik default open'>

	|inspector|
	inspector := GTInspector new.
	inspector title: 'Tugrik Database browser'.
	inspector presentationFilter: (GTInspectorTagFilter new 
												defaultTag: #tugrik;
												addAndSelectTag: #tugrik).
	inspector openOn: aTugrik 