Class {
	#name : #SignalHaut,
	#superclass : #Signal,
	#category : #Composants
}

{ #category : #controlling }
SignalHaut >> and: aSignal [
	^ aSignal andHaut
]

{ #category : #'as yet unclassified' }
SignalHaut >> andBas [
	^ SignalBas new
]

{ #category : #'as yet unclassified' }
SignalHaut >> andHaut [
	^ SignalHaut new
]

{ #category : #'logical operations' }
SignalHaut >> not [
	^ SignalBas new
]

{ #category : #controlling }
SignalHaut >> or: aSignal [
	^aSignal orHaut
]

{ #category : #'as yet unclassified' }
SignalHaut >> orBas [
	^ SignalHaut new
]

{ #category : #'as yet unclassified' }
SignalHaut >> orHaut [
	^ SignalHaut new
]

{ #category : #accessing }
SignalHaut >> value [
	^ true
]
