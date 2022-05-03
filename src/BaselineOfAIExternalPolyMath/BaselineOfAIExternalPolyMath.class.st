"
I am a baseline for loading PolyMath external dependencies.
"
Class {
	#name : #BaselineOfAIExternalPolyMath,
	#superclass : #BaselineOf,
	#category : #BaselineOfAIExternalPolyMath
}

{ #category : #baselines }
BaselineOfAIExternalPolyMath >> baseline: spec [

	<baseline>
	spec for: #( common ) do: [
		"External dependecies"
		spec baseline: 'PolyMath' with: [ spec repository: 'github://PolyMathOrg/PolyMath:v1.0.4' ].
		
		"Groups"
		spec group: 'default' with: #( 'PolyMath' ) ]
]
