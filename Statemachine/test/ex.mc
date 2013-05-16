module stmtest
{
	void print(int8 s, int8 u){}
	void print2(int8 s, int32 u){}
	
	int8 add(){
		return 1;
	}
	
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
	
	  int8 y;
	  int8 x = y+z;
	  int32 z;
	  statemachine counter smvar;
	  sminit(smvar);
	  sminit(y);
	  smvar.current = 1000;
	  smtrigger(smvar, increment(x, x+y));
	  smtrigger(y, increment(x, x+y));
	  
	  if(smIsInState(smvar,start)){
	  	y=9;
	  }
	  
	  print(3,4);	//fine
	  print(x,y);	//fine
	  print(x, smvar);	//error on smvar
	  print(x,z);	//error on z
	  print2(x,x);	//fine- subtyping
	  
	  int32 time = add();	//fine
	  smvar = add();
	  
	  return 0;
	} 

}