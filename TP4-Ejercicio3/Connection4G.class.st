Class {
	#name : #Connection4G,
	#superclass : #Object,
	#instVars : [
		'symb'
	],
	#category : #'TP4-Ejercicio3-dominio'
}

{ #category : #'as yet unclassified' }
Connection4G >> initialize [ 
	symb := '4G'
]

{ #category : #'as yet unclassified' }
Connection4G >> symb [
	^ symb 
]

{ #category : #'as yet unclassified' }
Connection4G >> trasmit: aDataString crc: aInt [
	Transcript show: ('Se envia la cadena: "', aDataString, '" con crc: ', (aInt asString) , ' con una conexion 4G');
	cr.
]
