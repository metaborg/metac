module test19 { 
  exported int32 main(int32 argc, string[] argv) {
  		printf("software >> Are you ready for pointers?\n");
  		int32 variable=10;
  		int32 *ptr;
  		ptr = &variable;
  		printf("variable=%d\n", variable);
  		*ptr = 0;
  		printf("variable=%d\n", variable);
  		variable++;
  		printf("variable=%d\n", variable);
  		return 0;
	} 
}