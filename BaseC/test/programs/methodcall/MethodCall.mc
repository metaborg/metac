module MethodCall { 
	exported int32 main(int32 argc, string[] argv) { 
		int32 a, b;
		printf("Calling a mehod!");
		a = times2(4);
		printf("%d",a); // should print 4
		return 0;
	}
	
	exported int32 times2(int32 in){
		return in *2 ;
	}
}