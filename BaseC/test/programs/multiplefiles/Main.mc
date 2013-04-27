module Main imports Other {
	exported int32 main(int32 argc, string[] argv){
		int32 a;
		a = times2(3);
		//a = Other.times2(3);
		printf("%d",a); // should print 6
		return 0;
	}
}