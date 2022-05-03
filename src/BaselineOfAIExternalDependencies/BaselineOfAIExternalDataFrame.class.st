"
I am a baseline for loading DataFrame external dependencies.
"
Class {
	#name : #BaselineOfAIExternalDataFrame,
	#superclass : #BaselineOf,
	#category : #BaselineOfAIExternalDependencies
}

{ #category : #baselines }
BaselineOfAIExternalDataFrame >> baseline: spec [

	<baseline>
	spec for: #( common ) do: [
		"External dependecies"
		spec baseline: 'DataFrame' with: [ spec repository: 'github://PolyMathOrg/DataFrame/src' ].
		
		"Groups"
		spec group: 'default' with: #( 'DataFrame' ) ]
]
