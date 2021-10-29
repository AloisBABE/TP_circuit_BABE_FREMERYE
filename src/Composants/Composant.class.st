Class {
	#name : #Composant,
	#superclass : #Object,
	#category : #Composants
}

{ #category : #adding }
Composant >> addToCircuit: aCircuit [
	aCircuit addComposant: self
]

{ #category : #accessing }
Composant >> getId [	
	^self hash
]
