generated-reduction actions
reduceActionForobject_initializer1: nodes
	| result |
	result := CSObjectInitializerNode new.
	result leftBraceToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result initializers.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rightBraceToken: (nodes at: 3).
	^ result