Class {
	#name : 'Scissors',
	#superclass : 'Object',
	#category : 'RockPaperScissors-RockPaperScissors',
	#package : 'RockPaperScissors',
	#tag : 'RockPaperScissors'
}

{ #category : 'as yet unclassified' }
Scissors >> playAgainst: anItem [
	^anItem playAgainstScissors: self
]

{ #category : 'as yet unclassified' }
Scissors >> playAgainstPaper: aPaper [
	^self
]

{ #category : 'as yet unclassified' }
Scissors >> playAgainstRock: aRock [
	^self
]

{ #category : 'as yet unclassified' }
Scissors >> playAgainstScissors: aScissors [
	"tie"
]
