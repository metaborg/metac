module test37{
	statemachine SM initial = start { 
		in reset()  
		in increment(int32 x) 
		var int32 value = 0 
		state start { 
			entry { value = 0; } 
			on reset [ ] -> start 
			on increment [ ] -> incrementing { value += x; } 
		} 
		state incrementing { 
			on increment [ ] -> incrementing { value += x; }
			on reset [ ] -> start 
		} 
	}
	
	exported int32 main(int32 argc, string[] argv) {
	  SM sm;
	  sminit(sm);
	  smtrigger(sm, increment(5));
	  return 0;
	} 
}