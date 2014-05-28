module test20 { 
  exported int32 main(int32 argc, string[] argv) {
  		int32 variable;
  		int32 *ptr[10];
  		int32 i;
  		int32 acc;
  		for (i = 0; i < 10; i++)
  			ptr[i] = &variable;
  		
  		variable = 1;
  		acc = 0;
  		for (i = 0; i < 10; i++)
  			acc += *ptr[i];
  		printf("acc=%d\n", acc);				//should be 10
  		return 0;
	} 
}