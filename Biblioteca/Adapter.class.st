Class {
	#name : #Adapter,
	#superclass : #Object,
	#category : #Biblioteca
}

{ #category : #exporting }
Adapter >> export: socios [
	| col |
	col:= OrderedCollection new.
	socios do: [ :socio | col add: (self exportSocio: socio)].
	^ NeoJSONWriter toStringPretty: col.

]

{ #category : #exporting }
Adapter >> exportSocio: aSocio [
	^ OrderedDictionary new at: #nombre put: aSocio nombre; at: #email put: aSocio email; at: #legajo put: aSocio legajo; yourself.
]
