Class {
	#name : #BaselineOfAIInternalEditDistances,
	#superclass : #BaselineOf,
	#category : #BaselineOfAIInternalEditDistances
}

{ #category : #baselines }
BaselineOfAIInternalEditDistances >> baseline: spec [

	<baseline>
	spec for: #( common ) do: [
		"Internal dependecies"
		spec baseline: 'AIEditDistances' with: [ spec repository: 'github://pharo-ai/edit-distances/src'].
		
		"Groups"
		spec group: 'default' with: #( 'AIEditDistances' ) ]
]
