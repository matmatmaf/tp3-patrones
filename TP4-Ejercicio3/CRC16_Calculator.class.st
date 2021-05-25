Class {
	#name : #'CRC16_Calculator',
	#superclass : #'CRC_Calculator',
	#category : #'TP4-Ejercicio3'
}

{ #category : #'as yet unclassified' }
CRC16_Calculator >> crcFor: aString [
	^ CRC crc16FromCollection: aString 

]
