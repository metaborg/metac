module test24{
	statemachine myStateMachine initial = A {
		in input(int32 x)
		state A {
			on input [ x > 50 ] -> B
		}
		state B {
			on input [ x < 40 ] -> A
		}
	}
}