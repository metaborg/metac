module test42{
	exported int32 main(int32 argc, string[] argv){
		int32 x = 10;
	haveFun:
		x ++;
		printf("%d\n",x);
		if (x < 20)
			goto haveFun;
		return 0;		
	}
}