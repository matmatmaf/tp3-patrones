Class {
	#name : #Pending,
	#superclass : #ToDoItemState,
	#category : #'TP3-ToDoList'
}

{ #category : #accessing }
Pending >> finish [

]

{ #category : #accessing }
Pending >> start [ 
	toDoItem startDate: DateAndTime now.
	toDoItem state: (InProgress createStateWith: toDoItem)
]

{ #category : #accessing }
Pending >> togglePause [
	self error: 'La tarea todavia no inició'
]
