endpoint
mine
	| lastBlock lastProof proof previousHash block response |
	lastBlock := blockChain lastBlock.
	lastProof := lastBlock at: #proof.
	proof := blockChain proofOfWork: lastProof.
	
	blockChain newTransaction: '0' recipient: nodeIdentifier amount: 1.
	
	self halt.
	previousHash := Blockchain hash: lastBlock.
	block := blockChain newBlock: proof previousHash: previousHash.
	
	response := NeoJSONObject new.
	response at: #message put: 'New Block Forged';
		at: #index put: (block at: #index);
		at: #transactions put: (block at: #transactions);
		at: #proof put: (block at: #proof);
		at: #previous_hash put: (block at: #previous_hash).
		
	^response.