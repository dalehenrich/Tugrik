world menu
menuCommandOn: aBuilder 
	<worldMenu> 
	(aBuilder item: #'Tugrik Browser')
		parent: #Tools;
		action: [self open]; 
		icon: Smalltalk ui icons mongoIcon