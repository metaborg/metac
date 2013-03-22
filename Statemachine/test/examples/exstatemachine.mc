module stmachine{

	statemachine counter initial = start { 
	  in reset()
	  in increment(int8 delta, int8 x) 
	  out exitevt() => print 
	  readable var int8 current = 10 
	  var int8 steps = 0 
	  readable var int8 exited = 0 
	  state start { 
	    
	    entry { 
	      current = 0; 
	      steps = 0; 
	      print2();
	    } 
	    exit { print(); }
	    on increment [delta == 1] -> increasing { current += delta; }
	    on reset [ ] -> start  
	     
	  } 
	  
	  state increasing2{
	  	entry { steps++; }
		on increment [ ] -> increasing { current += delta; }
		on reset [ ] -> start
	  }
	   
	}
}
