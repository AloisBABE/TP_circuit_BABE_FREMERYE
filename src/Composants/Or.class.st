Class {
	#name : #Or,
	#superclass : #Porte2Entrees,
	#category : #Composants
}

{ #category : #'public access' }
Or >> evaluate [
	^ (in1 evaluate) or: (in2 evaluate)
]
