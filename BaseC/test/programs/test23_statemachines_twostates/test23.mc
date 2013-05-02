module test23{
	statemachine myStateMachine initial = A {
		in input()
		state A {
			on input [] -> B
		}
		state B {
		}
	}
}