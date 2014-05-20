module test7 { 
  exported int32 main(int32 argc, string[] argv) {
  	  printf("5! = %d \n", fact(5));
	  return 0;
	}
  int32 fact(int32 x){
  	int32 a = 1;
  	while (x >= 1) 
  		a *= x--;
  } 
}