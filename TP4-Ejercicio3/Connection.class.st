Class {
	#name : #Connection,
	#superclass : #Object,
	#category : #'TP4-Ejercicio3'
}

{ #category : #'as yet unclassified' }
Connection >> pict [
	self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Connection >> sendData: aDataString crc: aInt [
	self subclassResponsibility 
]
