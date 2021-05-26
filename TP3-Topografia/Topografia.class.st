Class {
	#name : #Topografia,
	#superclass : #Object,
	#category : #'TP3-Topografia-Topografia'
}

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

{ #category : #inheriting }
Topografia >> proporcionDeAgua [
	self subclassResponsibility 
]

{ #category : #inheriting }
Topografia >> proporcionDeTierra [
	self subclassResponsibility 
]
