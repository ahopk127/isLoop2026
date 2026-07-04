"
A rock-paper-scissors-like game.
"
Class {
	#name : 'ParadoxGame',
	#superclass : 'Object',
	#instVars : [
		'nItems',
		'beatsDifferences',
		'names'
	],
	#category : 'RockPaperScissors-Custom',
	#package : 'RockPaperScissors',
	#tag : 'Custom'
}

{ #category : 'instance creation' }
ParadoxGame class >> newNItems: aNaturalNumber beatsDifferences: anArray [
	^self new nItems: aNaturalNumber; beatsDifferences: anArray; yourself
]

{ #category : 'instance creation' }
ParadoxGame class >> newNItems: aNaturalNumber beatsDifferences: anArray names: nameArray [
	^self new nItems: aNaturalNumber; beatsDifferences: anArray; names: nameArray; yourself
]

{ #category : 'preset games' }
ParadoxGame class >> rockPaperScissors [
	^self newNItems: 3 beatsDifferences: #(1) asSet names: #(#rock #paper #scissors)
]

{ #category : 'preset games' }
ParadoxGame class >> twoParadox [
	"A RPS-like game with 7 items.  Each pair of elements has a corresponding one that beats both."
	"More information: https://www.youtube.com/watch?v=r2whuz6tkb0"
	^self newNItems: 7 beatsDifferences: #(1 2 4) asSet
]

{ #category : 'accessing' }
ParadoxGame >> beatsDifferences [
	^beatsDifferences
]

{ #category : 'accessing' }
ParadoxGame >> beatsDifferences: anArray [
	beatsDifferences := anArray
]

{ #category : 'accessing' }
ParadoxGame >> itemAt: aNaturalNumber [
	"Gets my item at index aNaturalNumber."
	^ParadoxItem new game: self; id: aNaturalNumber; yourself
]

{ #category : 'accessing' }
ParadoxGame >> itemNamed: aName [
	| id |
	id := self names
		ifNil: [ aName asInteger ]
		ifNotNil: [ (self names indexOf: aName) - 1 ].
	^self itemAt: id.
]

{ #category : 'accessing' }
ParadoxGame >> nItems [
	^nItems
]

{ #category : 'accessing' }
ParadoxGame >> nItems: aNaturalNumber [
	nItems := aNaturalNumber
]

{ #category : 'accessing' }
ParadoxGame >> nameAt: aNaturalNumber [
	self names
		ifNil: [ ^aNaturalNumber asString ]
		ifNotNil: [ ^self names at: aNaturalNumber + 1 ].
]

{ #category : 'accessing' }
ParadoxGame >> names [
	^names
]

{ #category : 'accessing' }
ParadoxGame >> names: anArray [
	names := anArray
]
