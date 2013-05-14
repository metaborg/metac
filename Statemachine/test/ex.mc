module stmtest
{
	int8 abc;
	statemachine counter initial = start { 
	  readable var int8 current = 0
	  in reset() 
	  in increment(int8 delta, int8 x)
	  in clear()  
	  //in increment()
	  out exitevt() => print 
	  var int8 steps = 0 
	  readable var int8 exited = 0  
	  
	  state start { 
	     
	    entry { 
	      current = 0;
	      steps = 0;
	      abc = 9; 
	    } 
	    exit { call(); }
	    on increment[]-> increasing {current +=1;}
	    //on increment [delta == 1] -> increasing { current += delta; }
	    //on reset [ a == 5 ] -> start
	     
	  }
	  
	  state increasing {} 
	}
	
	exported int8 main(int32 argc, string[] argv) {
	  
	  int8 x = y+y;
	  statemachine counter smvar;
	  sminit(smvar);
	  smvar.current = 1000;
	  smtrigger(smvar, increment(x, x+y));
	  
	  
	  return 0;
	} 
}