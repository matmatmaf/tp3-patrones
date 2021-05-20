Class {
	#name : #Topografia,
	#superclass : #Object,
	#category : #'TP3-Topografia-Topografia'
}

{ #category : #inheriting }
Topografia >> calcularProporcionDeAgua [
	self subclassResponsibility 
]

{ #category : #inheriting }
Topografia >> calcularProporcionDeTierra [
	self subclassResponsibility 
]

{ #category : #inheriting }
Topografia >> esIgualA: unaTopografia [
	^ self class == unaTopografia class
		ifFalse: [ false ]
		ifTrue: [ self esIgualTopografiaDeIgualTipo: unaTopografia ]
]

{ #category : #inheriting }
Topografia >> esIgualTopografiaDeIgualTipo: unaTopografia [
	^ true
]
