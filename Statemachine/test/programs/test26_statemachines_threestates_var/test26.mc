module test26{
	statemachine myStateMachine initial = A {
		in input(int32 x)
		var int32 y = 0
		state A {
			on input [ x > 50 ] -> B { y = 1; }
			on input [ x < 50 ] -> C { y = 2; }
		}
		state B {
			on input [ x < 40 ] -> A 
			on input [ x > 50 ] -> C { y = 3;}
		}
		state C{
			on input [ ] -> A { y = 0; }
		}
	}
}