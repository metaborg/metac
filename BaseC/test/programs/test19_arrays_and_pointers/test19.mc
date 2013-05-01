module test19 { 
  exported int32 main(int32 argc, string[] argv) {
  		printf("software >> Are you ready for pointers?\n");
  		int32 var;
  		int32 *ptr;
  		ptr = &var;
  		printf("var=%d\n", var);
  		*ptr = 0;
  		printf("var=%d\n", var);
  		var++;
  		printf("var=%d\n", var);
  		return 0;
	} 
}