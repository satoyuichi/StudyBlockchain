as yet unclassified
newTransaction: aSender recipient: aRecipient amount: aAmount
	| json |
	json := NeoJSONObject new.
	json
		at: #sender put: aSender;
		at: #recipient put: aRecipient;
		at: #amount put: aAmount.
	currentTransactions add: json.
	^ (self lastBlock at: #index) + 1