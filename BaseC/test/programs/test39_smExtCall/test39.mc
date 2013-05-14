module test39{
	statemachine SM initial = start { 
		in reset()  
		in increment()
		out started() -> myExtListener
		var int32 value = 0 
		state start { 
			entry { value = 0; } 
			on reset [ ] -> start 
			on increment [ ] -> incrementing { value++; }
			exit { send started() } 
		} 
		state incrementing { 
			on increment [ ] -> incrementing { value++; }
			on reset [ ] -> start 
		} 
	}
	
	void myExtListener(){
		return;
	}
	
	exported int32 main(int32 argc, string[] argv) {
	  SM sm;
	  sminit(sm);
	  smtrigger(sm, increment());
	  return 0;
	} 
}