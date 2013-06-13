module test30 {
	struct myStruct{
		int32 myField;
	};
  exported int32 main(int32 argc, string[] argv) {
  		printf("software >> Are you ready for pointers?\n");
  		struct myStruct x;
  		x.myField = 32;
  		struct myStruct *ptr = &x;
  		return 0;
	} 
}