module test18 { 
  exported int32 main(int32 argc, string[] argv) {
  		printf("software >> Are you ready for pointers?\n");
  		int32 var;
  		int32 *ptr[10];
  		int32 i;
  		int32 acc;
  		for (i = 0; i < 10; i++)
  			ptr[i] = &var;
  		
  		var = 1;
  		acc = 0;
  		for (i = 0; i < 10; i++)
  			acc += *ptr[i];
  		printf("acc=%d\n", acc);
  		return 0;
	} 
}