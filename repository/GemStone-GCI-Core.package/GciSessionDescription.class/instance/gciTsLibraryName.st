accessing
gciTsLibraryName
	gciTsLibraryName ifNil: [ gciTsLibraryName := 'libgcits-' , self gemstoneVersion , '-32' ].
	^ gciTsLibraryName