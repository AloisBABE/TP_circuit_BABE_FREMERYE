Class {
	#name : #Porte2Entrees,
	#superclass : #Porte,
	#instVars : [
		'in1',
		'in2'
	],
	#category : #Composants
}

{ #category : #accessing }
Porte2Entrees >> description [
	|in1id in2id|
	in1id := in1 ifNil:['non connecté ']
	     		  ifNotNil:[in1 class printString, ' (', in1 getId printString, ') '].
	in2id := in2 ifNil:['non connecté']
	     		  ifNotNil:[in2 class printString, ' (', in2 getId printString, ')'].
	^self class printString, ' (', self getId printString, ') in1: ', in1id, 'in2: ', in2id
]

{ #category : #initialization }
Porte2Entrees >> setInput1: aComposant [
	^ in1 := aComposant
]

{ #category : #initialization }
Porte2Entrees >> setInput2: aComposant [
	^ in2 := aComposant
]
