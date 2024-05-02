"
I am a baseline for loading Roassal3 external dependencies.
"
Class {
	#name : #BaselineOfAIExternalRoassal3,
	#superclass : #BaselineOf,
	#category : #BaselineOfAIExternalRoassal3
}

{ #category : #baselines }
BaselineOfAIExternalRoassal3 >> baseline: spec [

	<baseline>
	spec for: #( common ) do: [
		"External dependecies"
		spec baseline: 'Roassal3' with: [ spec repository: 'github://pharo-graphics/Roassal' ].
		
		"Groups"
		spec group: 'default' with: #( 'Roassal3' ) ]
]
