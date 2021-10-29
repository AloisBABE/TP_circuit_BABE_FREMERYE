Class {
	#name : #Signal,
	#superclass : #Object,
	#category : #Composants
}

{ #category : #controlling }
Signal >> and: aSignal [
	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Signal >> andBas [
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
Signal >> andHaut [
	^ self subclassResponsibility
]

{ #category : #'logical operations' }
Signal >> not [
	^ self subclassResponsibility
]

{ #category : #controlling }
Signal >> or: aSignal [
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
Signal >> orBas [
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
Signal >> orHaut [
	^ self subclassResponsibility
]

{ #category : #accessing }
Signal >> value [
	^self subclassResponsibility 
]
