generated-reduction actions
reduceActionForArithmeticOps2: nodes
	| result |
	result := Array new: 9.
	result at: 2 put: (nodes at: 1).
	^ result