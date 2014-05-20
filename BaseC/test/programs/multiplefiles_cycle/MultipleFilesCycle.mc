module MultipleFilesCycle imports Import1 {
	exported int32 main(int32 argc, string[] argv){
		int32 a, b;
		b = 3;
		a = duplicate(b);
		printf("%d",a); 			// should print 15 (assuming b=3)
		return 0;
	}
}