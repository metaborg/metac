module test6 { 
  exported int32 main(int32 argc, string[] argv) {
  	  printf("5! = %d \n", fact(5));
	  return 0;
	}
	
  int32 fact(int32 x){
  	if (x <= 1)
  	  return 1;
  	return x * fact(x-1);
  } 
}