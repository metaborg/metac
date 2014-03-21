module FunctionCall { 
	exported int32 main(int32 argc, string[] argv) { 
		int32 a, b;
		printf("Calling a mehod!");
		a = times2(4);
		printf("%d",a); 			//should print 4
		return 0;
	}
	
	exported int32 times2( int32 inVar ){
		return inVar *2 ;
	}
}