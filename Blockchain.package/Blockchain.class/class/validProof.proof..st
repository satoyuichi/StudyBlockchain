as yet unclassified
validProof: aLastProof proof: aProof 
	| guess guessHash |
	guess := aLastProof asString , aProof asString.
	guessHash := (SHA256 new hashStream: (WriteStream with: guess)).

	^(guessHash atLast: 1) odd.
