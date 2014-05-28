module FunctionCall { 
	exported int32 main(int32 argc, string[] argv) { 
		int32 a, b;
		b = 2;
		printf("Calling times2 mehod on %d\n", b);
		a = times2(b);
		printf("result: %d\n",a); 					//should print 4 (assuming b = 2)
		return 0;
	}
	
	exported int32 times2( int32 inVar ){
		return inVar *2 ;
	}
}