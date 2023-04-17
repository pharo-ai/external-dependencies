"
I am a baseline for loading PolyMath external dependencies.
"
Class {
	#name : #BaselineOfAIExternalVectorMatrix,
	#superclass : #BaselineOf,
	#category : #BaselineOfAIExternalVectorMatrix
}

{ #category : #baselines }
BaselineOfAIExternalVectorMatrix >> baseline: spec [

	<baseline>
	spec for: #( common ) do: [ "External dependecies"
		spec baseline: 'MathVectorMatrix' with: [ spec repository: 'github://PolyMathOrg/vector-matrix:v1.0.3/src' ].

		"Groups"
		spec group: 'default' with: #( 'MathVectorMatrix' ) ]
]
