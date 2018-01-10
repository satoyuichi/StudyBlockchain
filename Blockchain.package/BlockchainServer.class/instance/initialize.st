initialization
initialize
	blockChain := Blockchain new.
	teapot := Teapot
		configure:
			{(#debugMode -> true).
			(#port -> 8080)}.