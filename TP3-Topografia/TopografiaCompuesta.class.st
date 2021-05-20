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

{ #category : #inheriting }
TopografiaCompuesta >> calcularProporcionDeAgua [
	^ (topografias
		inject: 0
		into: [ :result :each | 
			each calcularProporcionDeAgua + result ]) / topografias size
]

{ #category : #inheriting }
TopografiaCompuesta >> calcularProporcionDeTierra [
	^ (topografias
		inject: 0
		into: [ :result :each | each calcularProporcionDeTierra + result ])
		/ topografias size
]

{ #category : #initialization }
TopografiaCompuesta >> esIgualTopografiaDeIgualTipo: unaTopografia [
	1 to: 4 do: [ :each | 
		((topografias at: each) esIgualA: (unaTopografia topografias at: each))
			ifFalse: [ ^ false ] ].
	^ true
]

{ #category : #private }
TopografiaCompuesta >> topografias [
	^ topografias 
]

{ #category : #initialization }
TopografiaCompuesta >> topografias: anArrayOfFourTopografias [
	topografias := anArrayOfFourTopografias
]
