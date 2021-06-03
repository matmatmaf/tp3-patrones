Class {
	#name : #DispositivoTest,
	#superclass : #TestCase,
	#category : #'TP4-Ejercicio3-tests'
}

{ #category : #tests }
DispositivoTest >> setUp [
	Transcript clear.
]

{ #category : #tests }
DispositivoTest >> testConectarCon [
	|dispositivo|
	
	dispositivo := Dispositivo new.
	dispositivo conectarCon: (Connection4GAdapter new).
	self assert: (Transcript contents includesSubstring: '4G' caseSensitive: false).
	dispositivo conectarCon: (WIFIConn new).
	self assert: (Transcript contents includesSubstring: 'WIFI' caseSensitive: false).
]

{ #category : #tests }
DispositivoTest >> testConfigurarCRC [
	
]

{ #category : #tests }
DispositivoTest >> testSend [
|d|
d := Dispositivo new.
d conectarCon: WIFIConn new.
d configurarCRC: CRC16_Calculator new.
d send: 'Hola Pablo'.
self assert: (Transcript contents includesSubstring: 'Se envia la cadena: "Hola Pablo" con crc: 5384 con una conexion WIFI' caseSensitive: false).

d conectarCon: Connection4GAdapter new.
d send: 'Hola Maxi'.
self assert: (Transcript contents includesSubstring: 'Se envia la cadena: "Hola Maxi" con crc: 18321 con una conexion 4G' caseSensitive: false).
]
