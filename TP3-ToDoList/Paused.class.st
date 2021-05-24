Class {
	#name : #Paused,
	#superclass : #ToDoItemState,
	#category : #'TP3-ToDoList'
}

{ #category : #accessing }
Paused >> finish [
	toDoItem state: (Finished createStateWith: toDoItem)
]

{ #category : #accessing }
Paused >> start [ 
	toDoItem state: (InProgress createStateWith: toDoItem)
]

{ #category : #accessing }
Paused >> togglePause [
	toDoItem state: (InProgress createStateWith: toDoItem )
]
