as yet unclassified
proofOfWork: aLastProof
	| proof |
	proof := 0.
	[ Blockchain validProof: aLastProof proof: proof ] whileFalse: [ proof := proof + 1 ].
	^ proof