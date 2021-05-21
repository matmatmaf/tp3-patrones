Class {
	#name : #Archivo,
	#superclass : #OO2FileSystem,
	#category : #'TP3-O2-FileSystem'
}

{ #category : #initialization }
Archivo class >> llamado: unNombre creadoEl: aDate kBytes: aSizeNumber [
	^ (self new llamado: unNombre creadoEl: aDate) tamanio: aSizeNumber yourself.
]
