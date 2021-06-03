Class {
	#name : #WIFIConn,
	#superclass : #Connection,
	#instVars : [
		'pict'
	],
	#category : #'TP4-Ejercicio3-dominio'
}

{ #category : #'as yet unclassified' }
WIFIConn >> initialize [
	pict := 'WIFI'
]

{ #category : #'as yet unclassified' }
WIFIConn >> pict [
	^ pict 
]

{ #category : #'as yet unclassified' }
WIFIConn >> sendData: aDataString crc: aInt [
	Transcript show: ('Se envia la cadena: "', aDataString, '" con crc: ', (aInt asString), ' con una conexion WIFI');
	cr.
]
