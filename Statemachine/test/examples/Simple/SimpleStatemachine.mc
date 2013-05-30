module SimpleStatemachine
{
	void print(int8 param)
	{
		printf("printing: %d\n", param);
	}
	
	int8 global=0;
	statemachine counter initial = start { 
	  readable var int8 current = 0
	  //out report(int8 x) => print 
	  in increment(int8 delta)  
	  in reset()
	  out report(int8 x) => print 
	  in increment(int8 delta)  
	  state start { 
	     
	    entry { 
	      current = 0;
	      send report(current)
	      
	    } 
	    exit {
	    	 printf("exit start\n"); 
	   	}
	    on increment[delta<15]-> increasing {current +=delta;}
	  }
	  
	  state increasing {
	  	entry{
	  		printf("in increasing: current: %d\n", current);
	  	}
	  	on reset[] -> start {printf("statemachine reset\n");}
	  	on increment[delta<15]-> increasing {current +=delta;}
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