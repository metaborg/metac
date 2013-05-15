module SimpleStatemachine
{
	statemachine counter initial = start { 
	  readable var int8 current = 0
	  in reset() 
	  in increment()//int8 delta)  
	  state start { 
	     
	    entry { 
	      current = 0;
	    } 
	    exit {
	    	 printf("exit start\n"); 
	   	}
	    on increment[]-> increasing {current +=1;}
 
	  }
	  
	  state increasing {
	  	entry{
	  		printf("in increasing: current: %d\n", current);
	  	}
	  	on reset[] -> start
	  	on increment[]-> increasing {current +=1;}
	  } 
	}
	
	exported int8 main(int32 argc, string[] argv) {
	  
	  statemachine counter smvar;
	  sminit(smvar);
	  smtrigger(smvar, increment());
	  smtrigger(smvar, increment());
	  smtrigger(smvar, increment());
	  
	  
	  return 0;
	} 
}