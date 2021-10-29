Class {
	#name : #Circuit,
	#superclass : #Object,
	#instVars : [
		'composants',
		'interrupteurs',
		'vannes'
	],
	#category : #Composants
}

{ #category : #adding }
Circuit >> addComposant: aComposant [
	composants add: aComposant
]

{ #category : #adding }
Circuit >> addComposants: comp [
	comp do:[:c| c addToCircuit: self]
]

{ #category : #adding }
Circuit >> addInterrupteur: aInterrupteur [
	interrupteurs add: aInterrupteur
]

{ #category : #adding }
Circuit >> addVanne: aVanne [
	vannes add: aVanne
]

{ #category : #accessing }
Circuit >> composants [
 ^ composants
]

{ #category : #'public access' }
Circuit >> evaluate [
	^vannes collect: [ :vanne | vanne evaluate]
]

{ #category : #initialization }
Circuit >> initialize [
	composants := SortedCollection sortBlock: [:c1 :c2 | c1 getId <= c2 getId].
	interrupteurs := SortedCollection sortBlock: [:c1 :c2 | c1 getId <= c2 getId].
	vannes := SortedCollection sortBlock: [:c1 :c2 | c1 getId <= c2 getId]
]

{ #category : #accessing }
Circuit >> interrupteurs [
	^ interrupteurs
]

{ #category : #accessing }
Circuit >> vannes [
	^ vannes
]
