generated
scan19
	self step.
	currentCharacter = $v
		ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch