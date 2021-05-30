Class {
	#name : #Dispositivo,
	#superclass : #Object,
	#instVars : [
		'connection',
		'crcCalculator',
		'display',
		'ringer'
	],
	#category : #'TP4-Ejercicio3'
}

{ #category : #commands }
Dispositivo >> conectarCon: aConnection [
	connection := aConnection.
	display showBanner: 'Se estableció una conexion ',(aConnection pict).
	ringer ring.
	
]

{ #category : #commands }
Dispositivo >> configurarCRC: aCRC_Calculator [
	crcCalculator := aCRC_Calculator 
]

{ #category : #commands }
Dispositivo >> initialize [
	ringer := Ringer new.
	display := DispositivoDisplay new.
]

{ #category : #commands }
Dispositivo >> send: aString [
	connection sendData: aString crc: (crcCalculator crcFor: aString)
]
