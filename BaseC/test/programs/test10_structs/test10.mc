module test10{
	struct myStruct{
		int32 field;
	};
	
	exported int32 main(int32 argc, string[] argv) {
		struct myStruct x;
		x.field = 31;
		printf("x.field = %d\n", x.field);			//should be 31
		return 0;
	}
}