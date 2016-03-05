accessing
counterNext 
	"increase the 24 bit counter and return"
	^ counter := (counter + 1) \\ 16rFFFFFF