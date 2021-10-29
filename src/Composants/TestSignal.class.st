Class {
	#name : #TestSignal,
	#superclass : #TestCase,
	#category : #Composants
}

{ #category : #tests }
TestSignal >> testAndBasBas [
	self assert: (SignalBas new and: SignalBas new) class equals: SignalBas
]

{ #category : #tests }
TestSignal >> testAndBasHaut [
	self assert: (SignalBas new and: SignalHaut new) class equals: SignalBas
]

{ #category : #tests }
TestSignal >> testAndHautBas [
	self assert: (SignalHaut new and: SignalBas new) class equals: SignalBas
]

{ #category : #tests }
TestSignal >> testAndHautHaut [
	self assert: (SignalHaut new and: SignalHaut new) class equals: SignalHaut
]

{ #category : #tests }
TestSignal >> testInitBas [
	self assert: SignalBas new value equals: false
]

{ #category : #tests }
TestSignal >> testInitHaut [
	self assert: SignalHaut new value equals: true
]

{ #category : #tests }
TestSignal >> testNotBas [
	self assert: SignalBas new not class equals: SignalHaut
]

{ #category : #tests }
TestSignal >> testNotHaut [
	self assert: SignalHaut new not class equals: SignalBas
]

{ #category : #tests }
TestSignal >> testOrBasBas [
	self assert: (SignalBas new or: SignalBas new) class equals: SignalBas
]

{ #category : #tests }
TestSignal >> testOrBasHaut [
	self assert: (SignalBas new or: SignalHaut new) class equals: SignalHaut
]

{ #category : #tests }
TestSignal >> testOrHautBas [
	self assert: (SignalHaut new or: SignalBas new) class equals: SignalHaut
]

{ #category : #tests }
TestSignal >> testOrHautHaut [
	self assert: (SignalHaut new or: SignalHaut new) class equals: SignalHaut
]
