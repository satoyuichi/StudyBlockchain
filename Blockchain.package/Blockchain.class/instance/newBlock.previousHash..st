as yet unclassified
newBlock: aProof previousHash: aPreviousHash
	| block |
	block := NeoJSONObject new.
	block
		at: #index put: chain size + 1;
		at: #timestamp put: Time now;
		at: #transactions put: currentTransactions;
		at: #proof put: aProof;
		at: #previous_hash put: aPreviousHash.
	currentTransactions := LinkedList new.
	chain add: block.
	^ block