module test34 { 
  
  enum list{
  	var1,
  	var2
  };

  
  exported int32 main(int32 argc, string[] argv) {
	  enum list listvar;
	  listvar = var1;
	  printf("%d", listvar == var1);
	  return 0;
	} 

}