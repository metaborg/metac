module Main imports Other, c_stdio {
	exported int32 main(int32 argc, string[] argv){
		int32 a;
		a = times3(times2(3));
		//a = Other.times2(3);
		printf("%d",a); // should print 18
		return 0;
	}
}