endpoint
chain
	| response |
	response := NeoJSONObject new.
	response
		at: #chain put: blockChain chain;
		at: #length put: blockChain chain size.
	^ response