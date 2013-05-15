module test33{
	struct myStruct{
		int32 field;
		struct nestedStruct{
			int8 nestedField;
		}nestedStruct;
	};
	
	exported int32 main(int32 argc, string[] argv) {
		printf("software >> We are proud to present nested structs!\n");
		struct myStruct x;
		x.field = 31; 
		x.nestedStruct.nestedField = 100;
		printf("x.field = %d\n", x.field);
		printf("x.nestedStruct.nestedField = %d\n", x.nestedStruct.nestedField);
		return 0;
	}
}
