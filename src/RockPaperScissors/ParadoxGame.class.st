"
A rock-paper-scissors-like game.
"
Class {
	#name : 'ParadoxGame',
	#superclass : 'Object',
	#instVars : [
		'nItems',
		'beatsDifferences'
	],
	#category : 'RockPaperScissors-Custom',
	#package : 'RockPaperScissors',
	#tag : 'Custom'
}

{ #category : 'instance creation' }
ParadoxGame class >> newNItems: aNaturalNumber beatsDifferences: anArray [
	^self new nItems: aNaturalNumber; beatsDifferences: anArray; yourself
]

{ #category : 'preset games' }
ParadoxGame class >> rockPaperScissors [
	^self newNItems: 3 beatsDifferences: #(1) asSet
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
ParadoxGame >> nItems [
	^nItems
]

{ #category : 'accessing' }
ParadoxGame >> nItems: aNaturalNumber [
	nItems := aNaturalNumber
]
