Class {
	#name : #ToDoItem,
	#superclass : #Object,
	#instVars : [
		'name',
		'state',
		'startDate',
		'endDate'
	],
	#category : #'TP3-ToDoList'
}

{ #category : #initialization }
ToDoItem class >> name: aName [
	^ self new name: aName
]

{ #category : #accessing }
ToDoItem >> endDate: aDateAndTime [
	endDate := aDateAndTime 
]

{ #category : #accessing }
ToDoItem >> finish [
	state finish
]

{ #category : #accessing }
ToDoItem >> initialize [
	state := (Pending createStateWith: self)
]

{ #category : #accessing }
ToDoItem >> name: aName [
	name := aName 
]

{ #category : #accessing }
ToDoItem >> start [
	state start
]

{ #category : #accessing }
ToDoItem >> startDate: aDateAndTime [
	startDate := aDateAndTime 
]

{ #category : #accessing }
ToDoItem >> state: setState [
	state := setState
]

{ #category : #accessing }
ToDoItem >> togglePause [
	state togglePause 
]

{ #category : #accessing }
ToDoItem >> workedTime [
	"Esto se puede pasar a los estados, pero me parece que es bastante general"
	startDate ifNotEmpty: [ 
		endDate ifNotEmpty: [ 
			^ startDate - endDate.
		]
		ifEmpty: [ 
			^ startDate - DateAndTime now
		 ]
	]
	ifEmpty: [ 
		self error: 'La tarea aún no se inició'	
	 ]
]
