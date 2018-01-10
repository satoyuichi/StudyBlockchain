endpoint
createTransaction
	^ [ :req | 
	| json index |
	json := NeoJSONReader fromString: req entity string.
	#(#sender #recipient #amount)
		do: [ :elem | 
			(json includesKey: elem)
				ifFalse: [ TeaResponse badRequest body: 'Missing values' ] ].
	index := blockChain newTransaction: json.
	TeaResponse ok
		body: {(#message -> ('Transaction will be added to Block ' , index asString))} asDictionary ].