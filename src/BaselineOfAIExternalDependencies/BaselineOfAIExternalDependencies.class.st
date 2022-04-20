Class {
	#name : #BaselineOfAIExternalDependencies,
	#superclass : #BaselineOf,
	#category : #BaselineOfAIExternalDependencies
}

{ #category : #baselines }
BaselineOfAIExternalDependencies >> baseline: spec [

	<baseline>
	spec for: #( common ) do: [ "External dependecies"
		spec
			baseline: 'PolyMath'
			with: [ spec repository: 'github://PolyMathOrg/PolyMath:v1.0.3' ].
		spec
 			baseline: 'DataFrame'
			with: [ spec repository: 'github://PolyMathOrg/DataFrame/src' ].
		spec
			baseline: 'Roassal3';
    		with: [ spec repository: 'github://ObjectProfile/Roassal3:v0.9.9f' ] ].
	
	self defineGroups: spec
]

{ #category : #baselines }
BaselineOfAIExternalDependencies >> defineGroups: spec [

	spec
		group: 'PolyMath' with: #( 'PolyMath' );
		group: 'DataFrame' with: #( 'DataFrame' );
		group: 'Roassal3' with: #( 'Roassal3' )
]