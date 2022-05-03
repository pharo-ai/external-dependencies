# external-dependencies

This repository contains a baseline for loading external projects (outside pharo-ai). For example, if in some pharo-ai project one needs to use PolyMath or Roassal3, instead of injecting directly the dependency, one should use this baseline. Like that, if we need to update the library version (PolyMath, Roassal, etc), we only need to change it here instead of doing it on every individual project. Said that, this repository is only for internal use inside pharo-ai projects.

## Available projects

For the moment, external-dependencies can load three projects:

- [PolyMath](https://github.com/PolyMathOrg/PolyMath)
- [DataFrame](https://github.com/PolyMathOrg/DataFrame)
- [Roassal3](https://github.com/ObjectProfile/Roassal3)

## How to use it

Include the dependency inside your baseline. For example, if you want to use Roassal3, PolyMath and DataFrame in your project just add:

```st

"To add a dependency to PolyMath"
spec
    	baseline: 'AIExternalPolyMath'
    	with: [ spec repository: 'github://pharo-ai/external-dependencies' ].

"To add a dependency to DataFrame"
spec
    	baseline: 'AIExternalDataFrame'
    	with: [ spec repository: 'github://pharo-ai/external-dependencies' ].

"To add a dependency to Roassal3"
spec
    	baseline: 'AIExternalRoassal3'
    	with: [ spec repository: 'github://pharo-ai/external-dependencies' ]
```
