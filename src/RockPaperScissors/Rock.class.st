Class {
	#name : 'Rock',
	#superclass : 'Object',
	#category : 'RockPaperScissors-RockPaperScissors',
	#package : 'RockPaperScissors',
	#tag : 'RockPaperScissors'
}

{ #category : 'as yet unclassified' }
Rock >> playAgainst: anItem [ 
	^anItem playAgainstPaper: self.
]

{ #category : 'as yet unclassified' }
Rock >> playAgainstPaper: aPaper [
	^aPaper
]

{ #category : 'as yet unclassified' }
Rock >> playAgainstRock: aRock [
	"tie"
]

{ #category : 'as yet unclassified' }
Rock >> playAgainstScissors: aScissors [
	^self
]
