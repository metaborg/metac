module MultipleFilesCycle imports Import1 {
	exported int32 main(int32 argc, string[] argv){
		int32 a;
		a = duplicate(3);
		printf("%d",a); // should print 3+3*(3+1)=15
		return 0;
	}
}