Class {
	#name : #'CRC32_Calculator',
	#superclass : #'CRC_Calculator',
	#category : #'TP4-Ejercicio3'
}

{ #category : #'as yet unclassified' }
CRC32_Calculator >> crcFor: aString [
	^ CRC crc32FromCollection: aString

]
