Class {
	#name : 'Paper',
	#superclass : 'Object',
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'as yet unclassified' }
Paper >> playAgainst: anItem [
	^anItem playAgainstPaper: self
]

{ #category : 'as yet unclassified' }
Paper >> playAgainstPaper: aPaper [
	"tie"
]

{ #category : 'as yet unclassified' }
Paper >> playAgainstRock: aRock [
	^self
]

{ #category : 'as yet unclassified' }
Paper >> playAgainstScissors: aScissors [ 
	^aScissors
]
