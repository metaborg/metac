module test10{
	struct myStruct{
		int32 field;
	};
	
	exported int32 main(int32 argc, string[] argv) {
		printf("software >> We are proud to present structs!\n");
		struct myStruct x;
		x.field = 31;
		printf("x.field = %d\n", x.field);
		return 0;
	}
}