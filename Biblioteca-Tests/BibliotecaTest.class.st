"
A BibliotecaTest is a test class for testing the behavior of Biblioteca
"
Class {
	#name : #BibliotecaTest,
	#superclass : #TestCase,
	#instVars : [
		'miBiblioteca'
	],
	#category : #'Biblioteca-Tests'
}

{ #category : #initialization }
BibliotecaTest >> initialize [
	miBiblioteca := Biblioteca new
]

{ #category : #test }
BibliotecaTest >> testAgregarSocio [
	| arya tyron |
	arya := Socio
		nombre: 'Arya Stark'
		email: 'needle@stark.com'
		legajo: '5234/5'.
	tyron := Socio
		nombre: 'Tyron Lannister'
		email: 'tyron@thelannisters.com'
		legajo: '2345/2'.
	miBiblioteca agregarSocio: arya.
	miBiblioteca agregarSocio: tyron.
	self assert: miBiblioteca socios size equals: 2
]

{ #category : #test }
BibliotecaTest >> testExportarSocios [
| arya tyron |
miBiblioteca:= Biblioteca new: Adapter new.
arya:= Socio nombre:'Arya Stark' email:'needle@stark.com' legajo: '5234/5'.
tyron:= Socio nombre:'Tyron Lannister' email:'tyron@thelannisters.com' legajo:'2345/2'.
miBiblioteca agregarSocio: arya.
miBiblioteca agregarSocio: tyron.
	self assert: miBiblioteca exportarSocios equals: '[
	{
		"nombre" : "Arya Stark",
		"email" : "needle@stark.com",
		"legajo" : "5234/5"
	},
	{
		"nombre" : "Tyron Lannister",
		"email" : "tyron@thelannisters.com",
		"legajo" : "2345/2"
	}
]'
]
