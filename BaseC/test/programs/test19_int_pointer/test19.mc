module test19 { 
  exported int32 main(int32 argc, string[] argv) {
  		int32 variable=10;
  		int32 *ptr;
  		ptr = &variable;
  		printf("variable=%d\n", variable);			//should print 10
  		*ptr = 0;
  		printf("variable=%d\n", variable);			//should print 0
  		variable++;
  		printf("variable=%d\n", variable);			//should print 1
  		return 0;
	} 
}