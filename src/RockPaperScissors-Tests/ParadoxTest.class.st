Class {
	#name : 'ParadoxTest',
	#superclass : 'TestCase',
	#category : 'RockPaperScissors-Tests-Custom',
	#package : 'RockPaperScissors-Tests',
	#tag : 'Custom'
}

{ #category : 'tests' }
ParadoxTest >> testBasicTwoParadox [
	| game nzero none ntwo |
	game := ParadoxGame twoParadox.
	nzero := game itemAt: 0.
	none := game itemAt: 1.
	ntwo := game itemAt: 2.
	self assert: ((nzero beats: none) and: [ nzero beats: ntwo ]).
]

{ #category : 'tests' }
ParadoxTest >> testRockPaperScissors [
	| game rock paper scissors |
	game := ParadoxGame rockPaperScissors.
	rock := game itemNamed: #rock.
	paper := game itemNamed: #paper.
	scissors := game itemNamed: #scissors.
	
	self assert: (paper beats: rock).
	self assert: (rock beats: scissors).
	self assert: (scissors beats: paper).
	self assert: (rock beats: paper) not.
	self assert: (paper beats: scissors) not.
	self assert: (scissors beats: rock) not.
	self assert: (rock beats: rock) isNil.
	self assert: (paper beats: paper) isNil.
	self assert: (scissors beats: scissors) isNil.

]

{ #category : 'tests' }
ParadoxTest >> testRockPaperScissorsLizardSpock [
	| game rock paper scissors lizard spock |
	game := ParadoxGame rockPaperScissorsLizardSpock.
	rock := game itemNamed: #rock.
	paper := game itemNamed: #paper.
	scissors := game itemNamed: #scissors.
	lizard := game itemNamed: #lizard.
	spock := game itemNamed: #spock.
	
	self assert: (paper beats: rock).
	self assert: (paper beats: spock).
	self assert: (rock beats: scissors).
	self assert: (rock beats: lizard).
	self assert: (scissors beats: paper).
	self assert: (scissors beats: lizard).
	self assert: (lizard beats: paper).
	self assert: (lizard beats: spock).
	self assert: (spock beats: rock).
	self assert: (spock beats: scissors).
	
	self assert: (rock beats: paper) not.
	self assert: (rock beats: spock) not.
	self assert: (paper beats: scissors) not.
	self assert: (paper beats: lizard) not.
	self assert: (scissors beats: rock) not.
	self assert: (scissors beats: spock) not.
	self assert: (lizard beats: rock) not.
	self assert: (lizard beats: scissors) not.
	self assert: (spock beats: paper) not.
	self assert: (spock beats: lizard) not.
	
	self assert: (rock beats: rock) isNil.
	self assert: (paper beats: paper) isNil.
	self assert: (scissors beats: scissors) isNil.
	self assert: (lizard beats: lizard) isNil.
	self assert: (spock beats: spock) isNil.

]
