module test14 { 
  exported int32 main(int32 argc, string[] argv) {
  		printf("software >> Let\'s work with some binary numbers!\n");
  		int32 binA;
  	  	binA = 0b0000;
  	  	printf("binA = %d\n", binA, binA);
  	  	binA = 0b01010101;
  	  	printf("binA = %d\n", binA, binA);
	  	return 0;
	} 
}