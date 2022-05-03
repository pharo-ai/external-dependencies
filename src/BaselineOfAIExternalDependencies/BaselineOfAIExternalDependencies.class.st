"
I am a baseline for loading external dependencies. For external dependencies we mean projects that are outside pharo-ai
"
Class {
	#name : #BaselineOfAIExternalDependencies,
	#superclass : #BaselineOf,
	#category : #BaselineOfAIExternalDependencies
}

{ #category : #baselines }
BaselineOfAIExternalDependencies >> baseline: spec [

	<baseline>
	spec for: #( common ) do: [
		"External dependecies"
		spec
			baseline: 'PolyMath' with: [ spec repository: 'github://PolyMathOrg/PolyMath' ];
 			baseline: 'DataFrame' with: [ spec repository: 'github://PolyMathOrg/DataFrame/src' ];
			baseline: 'Roassal3' with: [ spec repository: 'github://ObjectProfile/Roassal3:v0.9.9f' ].
		
		self defineGroups: spec ]
]

{ #category : #baselines }
BaselineOfAIExternalDependencies >> defineGroups: spec [

	spec
		group: 'default' with: #(  );
		group: 'PolyMathGroup' with: #( 'PolyMath' );
		group: 'DataFrameGroup' with: #( 'DataFrame' );
		group: 'Roassal3Group' with: #( 'Roassal3' )
]
