module test28{
	statemachine myStateMachine initial = A {
		in input(int32 x)
		var int32 y = 0
		out externalEvent(int32 param) => function
		state A {
			on input [ x > 50 ] -> B { y = 1; }
			on input [ x < 50 ] -> C { y = 2; }
		}
		state B {
			on input [ x < 40 ] -> A 
			on input [ x > 50 ] -> C { y = 3; }
		}
		state C{
			on input [ ] -> A { send externalEvent(y); y = 0; }
		}
	}
	
	void function(int32 param){
		printf("myStateMachine.y = %d\n", param);
	}
}