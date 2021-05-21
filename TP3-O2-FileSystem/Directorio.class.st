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
Directorio >> archivoMasGrande [
	|archivoMax |
	
	archivoMax := self archivoMasGrandePropio.
	self getSubdirectorios do: [ :each | 
		archivoMax tamanio < (each archivoMasGrandePropio tamanio)
			ifTrue: [archivoMax := each archivoMasGrandePropio]
	].

	^ archivoMax 
	
	
]

{ #category : #private }
Directorio >> archivoMasGrandePropio [
	|archivo archivosPropios|
	
	archivo := Archivo llamado: '' creadoEl: Date today kBytes: 0.
	archivosPropios := self getArchivosPropios.
	archivosPropios do: [ :each | archivo tamanio < each tamanio ifTrue: [ archivo := each ] ].
	
	^ archivo
]

{ #category : #private }
Directorio >> getArchivosPropios [
	^ contenido reject: [ :each | each class = self class ].
	
]

{ #category : #private }
Directorio >> getCantidadArchivos [
	^ (contenido reject: [ :each | each class = self class ]) size
]

{ #category : #private }
Directorio >> getSubdirectorios [
	^ contenido select: [ :each | each class = self class ].
	
]

{ #category : #private }
Directorio >> imprimir [
	^	self getCantidadArchivos > 0 ifTrue:[
			self imprimirNombre, self imprimirCantidadArchivos]
		ifFalse: [ self imprimirNombre ]
]

{ #category : #private }
Directorio >> imprimirCantidadArchivos [
 	^ ' (', self getCantidadArchivos asString, ' archivos)'

]

{ #category : #private }
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

{ #category : #private }
Directorio >> listadoDeContenido: padresString [
	| result padres directoriosInternos |
	
	result := WriteStream on: String new.
	padres := padresString, self imprimirNombre  .
	
	result << self imprimir .
	
	directoriosInternos := self getSubdirectorios.
	directoriosInternos do: [ :each | result cr; << padres; << (each listadoDeContenido: padres) ].
	
	^ result contents
	
]

{ #category : #accessing }
Directorio >> tamanio [
	^ 32 + (contenido inject: 0 into: [ :resultado :each | each tamanio + resultado])
]
