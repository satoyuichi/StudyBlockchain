server handling
start
	self stop.
	teapot
		GET: '/mine' -> [self mine];
		POST: '/transactions/new' -> [self createTransaction];
		output: #json;
		GET: '/chain' -> [self chain];
		output: #json;
		start