"
An item in a rock-paper-scissors-like game.  Create me with ParadoxGame>>#item:.
"
Class {
	#name : 'ParadoxItem',
	#superclass : 'Object',
	#instVars : [
		'id',
		'game'
	],
	#category : 'RockPaperScissors-Custom',
	#package : 'RockPaperScissors',
	#tag : 'Custom'
}

{ #category : 'comparing' }
ParadoxItem >> = anItem [
	^self game = anItem game and: [ self id = anItem id ]
]

{ #category : 'testing' }
ParadoxItem >> beats: anItem [
	"Returns true if I beat anItem, false if not, or nil if I am the same as anItem."
	| difference |
	difference := anItem id - self id \\ self game nItems.
	difference = 0 ifTrue: [ ^nil ].
	^self game beatsDifferences includes: difference.
]

{ #category : 'accessing' }
ParadoxItem >> game [
	^game
]

{ #category : 'accessing' }
ParadoxItem >> game: aGame [
	game := aGame
]

{ #category : 'comparing' }
ParadoxItem >> hash [
	^self game hash bitXor: self id hash
]

{ #category : 'accessing' }
ParadoxItem >> id [
	^id
]

{ #category : 'accessing' }
ParadoxItem >> id: aNaturalNumber [
	(aNaturalNumber < 0 or: [ aNaturalNumber >= self game nItems ]) ifTrue: [ self error: 'invalid ID' ].
	id := aNaturalNumber.
]

{ #category : 'accessing' }
ParadoxItem >> name [
	^self game name: self id
]
