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
	rock := game itemAt: 0.
	paper := game itemAt: 1.
	scissors := game itemAt: 2.
	
	self assert: (rock beats: paper).
	self assert: (paper beats: scissors).
	self assert: (scissors beats: rock).
	self assert: (paper beats: rock) not.
	self assert: (rock beats: scissors) not.
	self assert: (scissors beats: paper) not.
	self assert: (rock beats: rock) isNil.
	self assert: (paper beats: paper) isNil.
	self assert: (scissors beats: scissors) isNil.

]
