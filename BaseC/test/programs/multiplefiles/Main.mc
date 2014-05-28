module Main imports Other, Other2 {
	exported int32 main(int32 argc, string[] argv){
		int32 a, b;
		b = 3;
		a = times3(times2(b));
		printf("%d", a); 			// should print 18 (assuming b = 3)
		return 0;
	}
}