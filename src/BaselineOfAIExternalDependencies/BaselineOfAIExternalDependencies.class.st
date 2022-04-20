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
			baseline: 'PolyMath' with: [ spec repository: 'github://PolyMathOrg/PolyMath:v1.0.3' ];
 			baseline: 'DataFrame' with: [ spec repository: 'github://PolyMathOrg/DataFrame/src' ];
			baseline: 'Roassal3' with: [ spec repository: 'github://ObjectProfile/Roassal3:v0.9.9f' ].
		
		self defineGroups: spec ]
]

{ #category : #baselines }
BaselineOfAIExternalDependencies >> defineGroups: spec [

	spec
		group: 'PolyMath' with: #( 'PolyMath' );
		group: 'DataFrame' with: #( 'DataFrame' );
		group: 'Roassal3' with: #( 'Roassal3' ).
	
	spec
		group: 'Core' with: #( 'PolyMath' 'DataFrame' 'Roassal3' );
		group: 'default' with: #( 'Core' )
]
