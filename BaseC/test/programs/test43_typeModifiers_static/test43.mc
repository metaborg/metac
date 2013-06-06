module test43{
	int32 foo(int32 n){
	    static int32 x;
	    if (n == 0)
	        x = 0;
	    if (n == 1)
	        x++;
	    return x;
	} 
	exported int32 main(int32 argc, string[] argv) {
  		printf("software >> Are you ready for type modifiers? Let's go with STATIC!\n");
      	printf("foo.x = %d\n", foo(0));
    	printf("foo.x = %d\n", foo(1));
    	return 0;
	}    
  	
}