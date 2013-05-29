module test50 imports c_stdio{
	exported int32 main(int32 argc, string[] argv){
		int32 a = 3;
		printf("%d",a); // should print 3
		return 0;
	}
}