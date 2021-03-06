actions
executeAction
	| scanner toIndex |
	toIndex := self stepToIndex.
	scanner := self session scanner.
	self
		stepUntil: [ :context | 
			(scanner stream atEnd
				and: [ (context
						findContextSuchThat: [ :each | each receiver isKindOf: SmaCCScanner ])
						isNil ])
				or: [ scanner stream position >= toIndex
						and: [ (context
								findContextSuchThat:
									[ :each | (each receiver isKindOf: SmaCCScanner) and: [ each selector = #step ] ])
								isNil ] ] ]