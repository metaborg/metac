module SimpleStatemachine
{
	
	statemachine counter initial = start { 
	  readable var int8 current = 0
	  out report(int8 x) => print 
	  in increment(int8 delta)  
	  in reset()
	  state start { 
	     
	    entry { 
	      current = 0;
	      
	    } 
	    exit {
	    	 printf("exit start\n");
	   	}
	    on increment[delta<0]-> increasing {current +=delta;}
	  }
	  
	  state increasing {
	  	entry{
	  		printf("in increasing: current: %d\n", current);
	  	}
	  	on reset[delta<0] -> start {printf("statemachine reset\n");}
	  	on increment[]-> increasing {current +=delta;}
	  } 
	}
	
	exported int8 main(int32 argc, string[] argv) {
	  
	  statemachine counter smvar;
	  sminit(smvar);
	  smtrigger(smvar, increment(5));
	  smtrigger(smvar, increment(3));
	  smtrigger(smvar, increment(1));
	  smtrigger(smvar, reset());
	  smtrigger(smvar, increment(10));
	  
	  return 0;
	} 
}