Class {
	#name : #Finished,
	#superclass : #ToDoItemState,
	#category : #'TP3-ToDoList'
}

{ #category : #accessing }
Finished >> finish [
]

{ #category : #accessing }
Finished >> initialize [
	toDoItem endDate: DateAndTime now.
]

{ #category : #accessing }
Finished >> start [ 
	
]

{ #category : #accessing }
Finished >> togglePause [
	self error: 'No se puede pausar una tarea finalizada'
]
