Class {
	#name : #Directorio,
	#superclass : #OO2FileSystem,
	#instVars : [
		'contenido'
	],
	#category : #'TP3-O2-FileSystem'
}

{ #category : #initialization }
Directorio class >> llamado: unNombre creadoEl: aDate [
	^ (self new llamado: unNombre creadoEl: aDate) tamanio: 32.
]

{ #category : #accessing }
Directorio >> agregar: unObjetoDelFileSystem [
	contenido add: unObjetoDelFileSystem 
]

{ #category : #accessing }
Directorio >> getCantidadArchivos [
	^ (contenido reject: [ :each | each class = self class ]) size
]

{ #category : #accessing }
Directorio >> imprimir [
	^	self getCantidadArchivos > 0 ifTrue:[
			self imprimirNombre, self imprimirCantidadArchivos]
		ifFalse: [ self imprimirNombre ]
]

{ #category : #accessing }
Directorio >> imprimirCantidadArchivos [
 	^ ' (', self getCantidadArchivos asString, ' archivos)'

]

{ #category : #accessing }
Directorio >> imprimirNombre [
	^ '/', nombre
]

{ #category : #accessing }
Directorio >> initialize [ 
	contenido := OrderedCollection new.
]

{ #category : #accessing }
Directorio >> listadoDeContenido [
		
	^ self listadoDeContenido: ''.
]

{ #category : #accessing }
Directorio >> listadoDeContenido: padresString [
	| result padres directoriosInternos |
	
	result := WriteStream on: String new.
	padres := padresString, self imprimirNombre  .
	
	result << self imprimir .
	
	directoriosInternos := contenido select: [ :each | each class = self class ].
	directoriosInternos do: [ :each | result cr; << padres; << (each listadoDeContenido: padres) ].
	
	^ result contents
	
]

{ #category : #accessing }
Directorio >> tamanio [
	^ 32 + (contenido inject: 0 into: [ :resultado :each | each tamanio + resultado])
]
