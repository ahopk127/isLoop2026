Class {
	#name : 'TwoParadoxItem',
	#superclass : 'Object',
	#instVars : [
		'id'
	],
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'constants' }
TwoParadoxItem class >> beatsDifferences [
	"If other id - self id \\ numItems is in this range, I beat other."
	^#(1 2 4)
]

{ #category : 'instance creation' }
TwoParadoxItem class >> new: id [
	^self basicNew id: id; yourself.
]

{ #category : 'constants' }
TwoParadoxItem class >> numItems [
	^7
]

{ #category : 'as yet unclassified' }
TwoParadoxItem >> beats: anItem [
	| difference |
	difference := anItem id - self id \\ self class numItems.
	difference = 0 ifTrue: [ ^nil ].
	^self class beatsDifferences includes: difference.
]

{ #category : 'accessing' }
TwoParadoxItem >> id [
	^id
]

{ #category : 'accessing' }
TwoParadoxItem >> id: aNaturalNumber [
	id := aNaturalNumber
]
