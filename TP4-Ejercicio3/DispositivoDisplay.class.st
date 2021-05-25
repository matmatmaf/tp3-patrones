"
Se llama DispositivoDisplay en vez de Display porque la clase Display existe en Pharo
"
Class {
	#name : #DispositivoDisplay,
	#superclass : #Object,
	#category : #'TP4-Ejercicio3'
}

{ #category : #'as yet unclassified' }
DispositivoDisplay >> showBanner: stringImg [
	Transcript show: stringImg; cr
]
