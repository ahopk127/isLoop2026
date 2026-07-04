Class {
	#name : 'RockPaperScissorsTest',
	#superclass : 'TestCase',
	#category : 'RockPaperScissors-Tests-RockPaperScissors',
	#package : 'RockPaperScissors-Tests',
	#tag : 'RockPaperScissors'
}

{ #category : 'tests' }
RockPaperScissorsTest >> testCreateGame [
	RockPaperScissors new
]

{ #category : 'tests' }
RockPaperScissorsTest >> testRockPlayAgainstScissors [
	| rock scissors |
	rock := Rock new.
	scissors := Scissors new.
	self
		assert: (rock playAgainst: scissors)
		equals: rock.
]

{ #category : 'tests' }
RockPaperScissorsTest >> testScissorsPlayAgainstPaper [
	| scissors paper |
	scissors := Scissors new.
	paper := Paper new.
	self
		assert: (scissors playAgainst: paper)
		equals: scissors.
]

{ #category : 'tests' }
RockPaperScissorsTest >> testScissorsPlayAgainstRock [
	| scissors rock |
	scissors := Scissors new.
	rock := Rock new.
	self
		assert: (scissors playAgainst: rock)
		equals: rock.
]
