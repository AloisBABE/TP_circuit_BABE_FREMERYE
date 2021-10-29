Class {
	#name : #Not,
	#superclass : #Porte,
	#instVars : [
		'input'
	],
	#category : #Composants
}

{ #category : #accessing }
Not >> description [
	|inid |
	inid := input ifNil:['non connecté']
	     		  ifNotNil:[input class printString, ' (', input getId printString, ')'].
	^'Not', ' (', self getId printString, ') ', 'in: ', inid
]

{ #category : #'public access' }
Not >> evaluate [
	^ (input evaluate) not
]

{ #category : #initialization }
Not >> setInput: aComposant [
	^ input := aComposant
]
