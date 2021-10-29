Class {
	#name : #TestState,
	#superclass : #TestCase,
	#category : #Composants
}

{ #category : #tests }
TestState >> testAndState1 [
    | and inter1 inter2 |
    and := And new.
    inter1 := Interrupteur new on.
    inter2 := Interrupteur new off.
    and setInput1: inter1;
        setInput2: inter2.
    self assert: and evaluate value equals: false
]

{ #category : #tests }
TestState >> testAndState2 [
    | and inter1 inter2 |
    and := And new.
    inter1 := Interrupteur new on.
    inter2 := Interrupteur new on .
    and setInput1: inter1;
        setInput2: inter2.
    self assert: and evaluate value equals: true
]

{ #category : #tests }
TestState >> testInterrupteurState1 [
	| interrupteur |
	interrupteur := Interrupteur new.
	self assert: interrupteur evaluate value equals: false
]

{ #category : #tests }
TestState >> testInterrupteurState2 [
	| interrupteur |
	interrupteur := Interrupteur new on.
	self assert: interrupteur evaluate value equals: true
]

{ #category : #tests }
TestState >> testNotState1 [
	| notComp composant |
	notComp := Not new.
	composant := Interrupteur new off.
	notComp setInput: composant.
	self assert: notComp evaluate value equals: true
]

{ #category : #tests }
TestState >> testNotState2 [
	| notComp composant |
	notComp := Not new.
	composant := Interrupteur new on.
	notComp setInput: composant.
	self assert: notComp evaluate value equals: false
]

{ #category : #tests }
TestState >> testOrState1 [
	| or composant1 composant2 |
	or := Or new.
	composant1 := Interrupteur new on.
	composant2 := Interrupteur new off.
	or setInput1: composant1;
		setInput2: composant2.
	self assert: or evaluate value equals: true
]

{ #category : #tests }
TestState >> testOrState2 [
	| or composant1 composant2 |
	or := Or new.
	composant1 := Interrupteur new off.
	composant2 := Interrupteur new off.
	or setInput1: composant1;
		setInput2: composant2.
	self assert: or evaluate value equals: false
]

{ #category : #tests }
TestState >> testState [
	| inter1 inter2 interSecur orComp andComp notComp vanne |
	inter1 := Interrupteur new on.
	inter2 := Interrupteur new off.
	interSecur := Interrupteur new on.
	orComp := Or new 
		setInput1: inter1;
		setInput2: inter2.
	notComp := Not new setInput: interSecur.
	andComp := And new 
		setInput1: orComp;
		setInput2: notComp.	
	vanne := Vanne new setInput: andComp.
	self assert: vanne evaluate value equals: true
]

{ #category : #tests }
TestState >> testVanneState1 [
	| vanne composant |
	vanne := Vanne new.
	composant := Interrupteur new on.
	vanne setInput: composant.
	self assert: vanne evaluate value equals: true
]

{ #category : #tests }
TestState >> testVanneState2 [
	| vanne composant |
	vanne := Vanne new.
	composant := Interrupteur new off.
	vanne setInput: composant.
	self assert: vanne evaluate value equals: false
]
