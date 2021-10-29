Class {
	#name : #And,
	#superclass : #Porte2Entrees,
	#category : #Composants
}

{ #category : #'public access' }
And >> evaluate [
	^ (in1 evaluate) and: (in2 evaluate)
]
