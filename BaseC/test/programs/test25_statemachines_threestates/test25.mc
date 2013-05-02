module test25{
	statemachine myStateMachine initial = A {
		in input(int32 x)
		state A {
			on input [ x > 50 ] -> B
			on input [ x < 50 ] -> C
		}
		state B {
			on input [ x < 40 ] -> A
			on input [ x > 50 ] -> C
		}
		state C{
			on input [ ] -> A
		}
	}
}