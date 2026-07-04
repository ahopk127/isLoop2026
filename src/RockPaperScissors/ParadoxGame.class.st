"
A rock-paper-scissors-like game.

I am named after ""paradoxical tournaments"", the mathematical term for such a game:
https://en.wikipedia.org/wiki/Tournament_(graph_theory)#Paradoxical_tournaments
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
ParadoxGame class >> names: nameArray beatsDifferences: diffArray [
	^self new nItems: nameArray size; beatsDifferences: diffArray; names: nameArray; yourself
]

{ #category : 'instance creation' }
ParadoxGame class >> newNItems: aNaturalNumber beatsDifferences: anArray [
	^self new nItems: aNaturalNumber; beatsDifferences: anArray; yourself
]

{ #category : 'preset games' }
ParadoxGame class >> rockPaperScissors [
	^self  names: #(#rock #paper #scissors) beatsDifferences: #(2) asSet
]

{ #category : 'preset games' }
ParadoxGame class >> rockPaperScissorsLizardSpock [
	^self names: #(#rock #paper #scissors #spock #lizard) beatsDifferences: #(2 4) asSet
]

{ #category : 'instance creation' }
ParadoxGame class >> simpleGame: numItems [
	"Creates a simple game from numItems items.  numItems must be an odd positive integer."
	"Items are always named by numbers from 0 to numItems - 1".
	^self newNItems: numItems beatsDifferences: (1 to: numItems // 2).
]

{ #category : 'instance creation' }
ParadoxGame class >> simpleGameFromNames: anArray [
	"Creates a simple game from the provided names.  There must be an odd number of names."
	"For a game with N items, each beats the next floor(N/2) items, and loses to the rest."
	^self  names: anArray beatsDifferences: (1 to: anArray size // 2).
]

{ #category : 'preset games' }
ParadoxGame class >> threeParadox [
	"A RPS-like game with 19 items.  Each trio of elements has a corresponding one that beats all three."
	"More information: https://www.youtube.com/watch?v=r2whuz6tkb0; https://en.wikipedia.org/wiki/Tournament_(graph_theory)#Paradoxical_tournaments; https://oeis.org/A362137"
	"The item names are just numbers from 0 to 18."
	^self newNItems: 19 beatsDifferences: #(1 4 5 6 7 9 11 16 17) asSet
]

{ #category : 'preset games' }
ParadoxGame class >> twoParadox [
	"A RPS-like game with 7 items.  Each pair of elements has a corresponding one that beats both."
	"More information: https://www.youtube.com/watch?v=r2whuz6tkb0; https://en.wikipedia.org/wiki/Tournament_(graph_theory)#Paradoxical_tournaments"
	"The item names are just numbers from 0 to 6."
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
ParadoxGame >> idOfName: aName [
	"Returns the ID corresponding to the provided name."
	^self names
		ifNil: [ aName asInteger ]
		ifNotNil: [ (self names indexOf: aName) - 1 ].
]

{ #category : 'accessing' }
ParadoxGame >> itemAt: aNaturalNumber [
	"Gets my item at index aNaturalNumber."
	^ParadoxItem new game: self; id: aNaturalNumber; yourself
]

{ #category : 'testing' }
ParadoxGame >> itemAt: firstID beats: secondID [
	"Determines whether the item at the first ID beats the second ID."
	| difference |
	difference := secondID - firstID \\ self nItems.
	difference = 0 ifTrue: [ ^nil ].
	^self beatsDifferences includes: difference.	
]

{ #category : 'accessing' }
ParadoxGame >> itemNamed: aName [
	^self itemAt: (self idOfName: aName)
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

{ #category : 'running' }
ParadoxGame >> play: firstName against: secondName [
	"Returns the winner of the provided names.  In case of ties, return the first."
	| item1 item2 result |
	item1 := self itemNamed: firstName.
	item2 := self itemNamed: secondName.
	result := item1 beats: item2.
	result ifNil: [ ^firstName ].
	^result ifTrue: [ firstName ] ifFalse: [ secondName ].
]
