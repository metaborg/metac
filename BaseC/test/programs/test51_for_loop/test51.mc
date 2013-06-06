module test51 { 
  
  void print_numbers(){
  	int8 i = 2;
  	for(int8 i=1;i<6;i++){
  		printf("%d ",i);
  		}
  	printf("\nThe initial i: %d.", i);
  } 
  
  exported int32 main(int32 argc, string[] argv) {
  	  printf("user >> Hey MetaC program, can you print numbers from 1 to 5 ?\n");
  	  print_numbers();
	  return 0;
	}
  
}