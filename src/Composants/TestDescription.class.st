Class {
	#name : #TestDescription,
	#superclass : #TestCase,
	#category : #Composants
}

{ #category : #tests }
TestDescription >> testAndDescription1 [
	| and |
	and := And new.
	self 
		assert: and description
		equals: 'And (', and getId printString, ') in1: non connecté in2: non connecté'
]

{ #category : #tests }
TestDescription >> testAndDescription2 [
	| and composant |
	and := And new.
	composant := Not new.
	and setInput1: composant.
	self 
		assert: and description
		equals: 'And (', and getId printString, ') in1: ', 
			'Not (', composant getId printString, ') in2: non connecté'.
]

{ #category : #tests }
TestDescription >> testAndDescription3 [
	| and composant |
	and := And new.
	composant := Not new.
	and setInput2: composant.
	self 
		assert: and description
		equals: 'And (', and getId printString, ') in1: non connecté in2: Not (', 
		composant getId  printString, ')'.
]

{ #category : #tests }
TestDescription >> testInterrupteurDescription [
	| interrupteur |
	interrupteur := Interrupteur new.
	self 
		assert: interrupteur description
		equals: 'Interrupteur (', interrupteur getId printString, ')'
]

{ #category : #tests }
TestDescription >> testNotDescription1 [
	| not |
	not := Not new.
	self 
		assert: not description
		equals: 'Not (', not getId printString, ') in: non connecté'
]

{ #category : #tests }
TestDescription >> testNotDescription2 [
	| not composant|
	not := Not new.
	composant := Interrupteur new.
	not setInput: composant.
	self 
		assert: not description
		equals: 'Not (', not getId printString, ') in: Interrupteur (',
		composant getId printString, ')'
]

{ #category : #tests }
TestDescription >> testVanneDescription1 [
	| vanne |
	vanne := Vanne new.
	self 
		assert: vanne description
		equals: 'Vanne (', vanne getId printString, ') in: non connecté'
]

{ #category : #tests }
TestDescription >> testVanneDescription2 [
	| vanne composant|
	vanne := Vanne new.
	composant := Interrupteur new.
	vanne setInput: composant.
	self 
		assert: vanne description
		equals: 'Vanne (', vanne getId printString, ') in: Interrupteur (',
		composant getId printString, ')'
]
