Class {
	#name : #OO2FileSystem,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'fechaCreacion',
		'tamanio'
	],
	#category : #'TP3-O2-FileSystem'
}

{ #category : #accessing }
OO2FileSystem >> fechaCreacion [
	^ fechaCreacion 
]

{ #category : #initialization }
OO2FileSystem >> llamado: unNombre creadoEl: aDate [
	nombre := unNombre.
	fechaCreacion := aDate.
]

{ #category : #accessing }
OO2FileSystem >> tamanio [
	^ tamanio
]

{ #category : #accessing }
OO2FileSystem >> tamanio: aSizeNumber [
	tamanio := aSizeNumber
]
