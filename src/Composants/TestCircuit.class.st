Class {
	#name : #TestCircuit,
	#superclass : #TestCase,
	#category : #Composants
}

{ #category : #tests }
TestCircuit >> testComposantsEmpty [
	| circuit |
	circuit := Circuit new.
	self assert: circuit composants isEmpty
]

{ #category : #tests }
TestCircuit >> testInterrupteursEmpty [
	| circuit |
	circuit := Circuit new.
	self assert: circuit interrupteurs isEmpty
]

{ #category : #tests }
TestCircuit >> testListeCOmposantsComplete [
	|inter1 inter2 vanne1 vanne2 and1 or1 not1 composants circuit contient trueSet|
	inter1 := Interrupteur new on. 
	inter2 := Interrupteur new.
	not1 := Not new.
	not1 setInput: inter2.
	and1 := And new.
	and1 setInput1: inter1; setInput2: not1.
	or1 := Or new.
	or1 setInput1: inter1; setInput2: inter2.
	vanne1 := Vanne new.
	vanne1 setInput: and1.
	vanne2 := Vanne new.
	vanne2 setInput: or1.
	composants := Set new.
	composants add:inter1; add:inter2; add:vanne1; add:vanne2; add:and1; add:or1; add:not1.
	circuit := Circuit new addComposants: composants.
	contient := composants collect: [:c | (circuit composants) includes: c ].
	trueSet := Set new.
	trueSet add: true.
	self assert: contient equals: trueSet
]

{ #category : #tests }
TestCircuit >> testListeInterrupteursSorted [
	|inter1 inter2 vanne1 vanne2 and1 or1 not1 composants circuit composantsHash sorted|
	
	inter1 := Interrupteur new on. 
	inter2 := Interrupteur new.
	not1 := Not new.
	not1 setInput: inter2.
	and1 := And new.
	and1 setInput1: inter1; setInput2: not1.
	or1 := Or new.
	or1 setInput1: inter1; setInput2: inter2.
	vanne1 := Vanne new.
	vanne1 setInput: and1.
	vanne2 := Vanne new.
	vanne2 setInput: or1.
	
	composants := Set new.
	composants add:inter1; add:inter2; add:vanne1; add:vanne2; add:and1; add:or1; add:not1.
	circuit := Circuit new addComposants: composants.
	
	composantsHash := (circuit composants) collect: [:c | c getId ].
	sorted := true.
	1 to: (composantsHash size -1) do: [:i | sorted := sorted and: ((composantsHash at:i) < (composantsHash at:(i+1)) )].
	self assert: sorted
]

{ #category : #tests }
TestCircuit >> testListeVInterrupteursComplete [
	|inter1 inter2 vanne1 vanne2 and1 or1 not1 composants interrupteurs circuit contient trueSet|
	inter1 := Interrupteur new on. 
	inter2 := Interrupteur new.
	not1 := Not new.
	not1 setInput: inter2.
	and1 := And new.
	and1 setInput1: inter1; setInput2: not1.
	or1 := Or new.
	or1 setInput1: inter1; setInput2: inter2.
	vanne1 := Vanne new.
	vanne1 setInput: and1.
	vanne2 := Vanne new.
	vanne2 setInput: or1.
	composants := Set new.
	composants add:inter1; add:inter2; add:vanne1; add:vanne2; add:and1; add:or1; add:not1.
	interrupteurs := Set new.
	interrupteurs add:inter1; add:inter2.
	circuit := Circuit new addComposants: composants.
	contient := interrupteurs collect: [:i | (circuit interrupteurs) includes: i ].
	trueSet := Set new.
	trueSet add: true.
	self assert: contient equals: trueSet
]

{ #category : #tests }
TestCircuit >> testListeVannesComplete [
	|inter1 inter2 vanne1 vanne2 and1 or1 not1 composants vannes circuit contient trueSet|
	inter1 := Interrupteur new on. 
	inter2 := Interrupteur new.
	not1 := Not new.
	not1 setInput: inter2.
	and1 := And new.
	and1 setInput1: inter1; setInput2: not1.
	or1 := Or new.
	or1 setInput1: inter1; setInput2: inter2.
	vanne1 := Vanne new.
	vanne1 setInput: and1.
	vanne2 := Vanne new.
	vanne2 setInput: or1.
	composants := Set new.
	composants add:inter1; add:inter2; add:vanne1; add:vanne2; add:and1; add:or1; add:not1.
	vannes := Set new.
	vannes add:vanne1; add:vanne2.
	circuit := Circuit new addComposants: composants.
	contient := vannes collect: [:v | (circuit vannes) includes: v ].
	trueSet := Set new.
	trueSet add: true.
	self assert: contient equals: trueSet
]

{ #category : #tests }
TestCircuit >> testVannesEmpty [
	| circuit |
	circuit := Circuit new.
	self assert: circuit vannes isEmpty
]
