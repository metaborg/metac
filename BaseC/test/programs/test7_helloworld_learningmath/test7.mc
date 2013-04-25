module test7 { 
  exported int32 main(int32 argc, string[] argv) {
  	  printf("user >> Hey MetaC program, can you compute 5! ?\n");
  	  printf("software >> yes I can, 5! is %d \n", fact(5));
	  return 0;
	}
  int32 fatc(int32 x){
  	int32 a = 1;
  	while (x >= 1) 
  		a *= x--;
  } 
}