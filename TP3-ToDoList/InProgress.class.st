Class {
	#name : #InProgress,
	#superclass : #ToDoItemState,
	#category : #'TP3-ToDoList'
}

{ #category : #accessing }
InProgress >> finish [
	toDoItem state: (Finished createStateWith: toDoItem)
]

{ #category : #accessing }
InProgress >> start [ 

]

{ #category : #accessing }
InProgress >> togglePause [
	toDoItem state: (Paused createStateWith: toDoItem )
]
