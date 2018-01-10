as yet unclassified
newTransaction: aJson
	currentTransactions add: aJson.
	
	^(self lastBlock at: 'index') + 1.