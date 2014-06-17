module test34b imports enums{ 
 
   exported int32 main(int32 argc, string[] argv) {
	  enum list listvar;
	  listvar = var1;
	  printf("%d \n", listvar == var1);
	  printf("%d \n", listvar == var2);
	  listvar = var2;
	  printf("%d \n", listvar == var1);
	  printf("%d \n", listvar == var2);
	  return 0;
	} 

}