Class {
	#name : 'BaselineOfRockPaperScissors',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfRockPaperScissors',
	#package : 'BaselineOfRockPaperScissors'
}

{ #category : 'baselines' }
BaselineOfRockPaperScissors >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			"Packages"
			spec
				package: 'RockPaperScissors';
				package: 'RockPaperScissors-Tests' with: [ spec requires: #('RockPaperScissors') ].
		]
]

{ #category : 'accessing' }
BaselineOfRockPaperScissors >> projectClass [
	^ MetacelloCypressBaselineProject
]
