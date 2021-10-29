Class {
	#name : #Vanne,
	#superclass : #Composant,
	#instVars : [
		'input'
	],
	#category : #Composants
}

{ #category : #adding }
Vanne >> addToCircuit: aCircuit [
	super addToCircuit: aCircuit.
	aCircuit addVanne: self
]

{ #category : #accessing }
Vanne >> description [
	|inid|
	inid := input ifNil:['non connecté']
	     		  ifNotNil:[input class printString, ' (', input getId printString, ')'].
	^'Vanne', ' (', self getId printString, ') ', 'in: ', inid
]

{ #category : #'public access' }
Vanne >> evaluate [
	^ input evaluate
]

{ #category : #initialization }
Vanne >> setInput: aComposant [
	^ input := aComposant
]
