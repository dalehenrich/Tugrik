operations
authenticateUsername: user password: pass database: aDatabase
	|nonce reply pwd key |
	reply := self command: (Dictionary new at: 'getnonce' put: 1; yourself) database: aDatabase.
	^ (reply at: 'ok') = 1.0 and:
		[nonce := reply at: 'nonce'.
		pwd := (MD5 hashMessage: (user, ':mongo:', pass)) hex asLowercase.
		key := (MD5 hashMessage: nonce, user, pwd) hex asLowercase.
		reply := self command: (Dictionary new at: 'authenticate' put: 1; at: 'user' put: user; at: 'nonce' put: nonce; at: 'key' put: key; yourself) database: aDatabase.
		(reply at: 'ok') = 1.0]