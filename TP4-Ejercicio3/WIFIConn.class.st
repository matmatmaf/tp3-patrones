Class {
	#name : #WIFIConn,
	#superclass : #Connection,
	#instVars : [
		'pict'
	],
	#category : #'TP4-Ejercicio3'
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
	Transcript show: 'Se envia la cadena: ', aDataString, ' con crc: ', aInt, ' con una conexion WIFI';
	cr.
]
