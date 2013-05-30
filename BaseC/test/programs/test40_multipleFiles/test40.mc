module test40 imports test40_b{
	exported int32 main(int32 argc, string[] argv) {
		int32 result = compute();
		int32 array[10];
		printf("compute:%d\n",array);
		
		return 0;
	}
}