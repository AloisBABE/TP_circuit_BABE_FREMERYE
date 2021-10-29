"
I represent an Interrupteur
"
Class {
	#name : #Interrupteur,
	#superclass : #Composant,
	#instVars : [
		'state'
	],
	#category : #Composants
}

{ #category : #adding }
Interrupteur >> addToCircuit: aCircuit [
	super addToCircuit: aCircuit.
	aCircuit addInterrupteur: self
]

{ #category : #accessing }
Interrupteur >> description [
	^'Interrupteur (', self getId printString, ')'
]

{ #category : #'public access' }
Interrupteur >> evaluate [
	^ state
]

{ #category : #initialization }
Interrupteur >> initialize [
	state := SignalBas new
]

{ #category : #accessing }
Interrupteur >> off [
	state := SignalBas new
]

{ #category : #accessing }
Interrupteur >> on [
	state := SignalHaut new
]
