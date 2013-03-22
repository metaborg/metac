statemachine statemach initial = start{
	in reset()
	in switchState()
	var int8 currentState = 0
	
	state start{
		entry{
			currentState = 0;
		}
		on switchState[] -> state1
	} 
	
	state state1 {
		entry{
			currentState = 1;
		}
		on switchState[] -> state2
		on reset[] -> start 
	}
	
	state state2{
		entry{
			currentState = 2;
		}
		on switchState[] -> state1
		on reset[] -> start
	}
	
	
	
}