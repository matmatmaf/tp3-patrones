Class {
	#name : #Connection4GAdapter,
	#superclass : #Connection,
	#instVars : [
		'connection4G'
	],
	#category : #'TP4-Ejercicio3-dominio'
}

{ #category : #'as yet unclassified' }
Connection4GAdapter >> initialize [
	connection4G := Connection4G new.
]

{ #category : #'as yet unclassified' }
Connection4GAdapter >> pict [
	^ connection4G symb
]

{ #category : #'as yet unclassified' }
Connection4GAdapter >> sendData: aDataString crc: aInt [
	connection4G trasmit: aDataString crc: aInt
]
