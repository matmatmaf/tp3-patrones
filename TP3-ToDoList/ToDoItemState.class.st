Class {
	#name : #ToDoItemState,
	#superclass : #Object,
	#instVars : [
		'toDoItem'
	],
	#category : #'TP3-ToDoList'
}

{ #category : #initializing }
ToDoItemState class >> createStateWith: aToDoItem [
	^ self new toDoItem: aToDoItem
]

{ #category : #accessing }
ToDoItemState >> finish [
	self subclassResponsibility 
]

{ #category : #accessing }
ToDoItemState >> start [ 
	self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
ToDoItemState >> toDoItem: aToDoItem [ 
	toDoItem := aToDoItem
]

{ #category : #accessing }
ToDoItemState >> togglePause [
	self subclassResponsibility 
]
