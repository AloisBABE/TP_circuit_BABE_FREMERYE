Class {
	#name : #TestSignalCircuit,
	#superclass : #TestCase,
	#category : #Composants
}

{ #category : #tests }
TestSignalCircuit >> testEvaluate [
	|inter1 inter2 vanne1 vanne2 and1 or1 not1 composants vannes circuit |
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

	self assert: (circuit evaluate collect: [ :each | each class ]) equals: (OrderedCollection with: SignalHaut with: SignalHaut)
]
