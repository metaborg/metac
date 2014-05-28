module test18 { 
  int32 *globalpx, globalx = 43;
  
  exported int32 main(int32 argc, string[] argv) {
  		int32 x = 42, *px;
  	  	px = &x;
  	  	globalpx = &globalx;
  	  	printf("*px = %d\n", *px);						//should print 42
  	  	printf("*globalpx = %d\n", *globalpx);			//should print 43
	  	return 0;
	} 
}