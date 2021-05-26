Class {
	#name : #TopografiaCompuesta,
	#superclass : #Topografia,
	#instVars : [
		'topografias'
	],
	#category : #'TP3-Topografia-Topografia'
}

{ #category : #initializing }
TopografiaCompuesta class >> crearConArray: anArrayOfFourTopografias [
	^ self new
		topografias: anArrayOfFourTopografias
		yourself
]

{ #category : #initialization }
TopografiaCompuesta >> esIgualTopografiaDeIgualTipo: unaTopografia [
	1 to: 4 do: [ :each | 
		((topografias at: each) esIgualA: (unaTopografia topografias at: each))
			ifFalse: [ ^ false ] ].
	^ true
]

{ #category : #inheriting }
TopografiaCompuesta >> proporcionDeAgua [
	^ (topografias
		inject: 0
		into: [ :result :each | 
			each proporcionDeAgua + result ]) / topografias size
]

{ #category : #inheriting }
TopografiaCompuesta >> proporcionDeTierra [
	^ (topografias
		inject: 0
		into: [ :result :each | each proporcionDeTierra + result ])
		/ topografias size
]

{ #category : #'as yet unclassified' }
TopografiaCompuesta >> proporcionDesperdicio [
	| prom |
	prom := (topografias
		inject: 0
		into: [ :result :each | each proporcionDesperdicio + result ])
		/ topografias size.
	(prom < 0.5)
		ifTrue: [ ^ prom * 1.03 ];
		ifFalse: [ ^ prom ]
]

{ #category : #'as yet unclassified' }
TopografiaCompuesta >> proporcionProductiva [
	^ (topografias
		inject: 0
		into: [ :result :each | each proporcionProductiva + result ])
		/ topografias size
]

{ #category : #private }
TopografiaCompuesta >> topografias [
	^ topografias 
]

{ #category : #initialization }
TopografiaCompuesta >> topografias: anArrayOfFourTopografias [
	topografias := anArrayOfFourTopografias
]
