Class {
	#name : #SignalBas,
	#superclass : #Signal,
	#category : #Composants
}

{ #category : #controlling }
SignalBas >> and: aSignal [
	^ aSignal andBas
]

{ #category : #'as yet unclassified' }
SignalBas >> andBas [
	^ SignalBas new
]

{ #category : #'as yet unclassified' }
SignalBas >> andHaut [
	^ SignalBas new
]

{ #category : #'logical operations' }
SignalBas >> not [
	^ SignalHaut new
]

{ #category : #controlling }
SignalBas >> or: aSignal [
	^ aSignal orBas
]

{ #category : #'as yet unclassified' }
SignalBas >> orBas [
	^ SignalBas new
]

{ #category : #'as yet unclassified' }
SignalBas >> orHaut [
	^ SignalHaut new
]

{ #category : #accessing }
SignalBas >> value [
	^ false
]
