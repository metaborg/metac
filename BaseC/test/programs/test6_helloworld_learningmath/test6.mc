module test6 { 
  exported int32 main(int32 argc, string[] argv) {
  	  printf("user >> Hey MetaC program, can you compute 5! ?\n");
  	  printf("software >> yes I can, 5! is %d \n", fact(5));
	  return 0;
	}
	
  int32 fatc(int32 x){
  	if (x >= 1)
  	  return 1;
  	return x * fatc(x-1);
  } 
}