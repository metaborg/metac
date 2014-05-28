module test35{
	statemachine SM initial = start { 
		in reset()  
		in increment() 
		var int32 value = 0 
		state start { 
			entry { value = 0; } 
			on reset [ ] -> start 
			on increment [ ] -> incrementing { value++; }
		} 
		state incrementing { 
			on increment [ ] -> incrementing { value++; } 
			on reset [ ] -> start 
		} 
	}
	
	exported int32 main(int32 argc, string[] argv) {
	  statemachine SM sm;
	  sminit(sm);
	  return 0;
	} 
}