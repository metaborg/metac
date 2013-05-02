module test12 { 
  exported int32 main(int32 argc, string[] argv) {
  		printf("software >> Let\'s work with some hexadecimal numbers!\n");
  		int32 hexA;
  		hexA = 0x00;
  	  	//hexA = hex<0000>;
  	  	printf("hexA = %d (%X)\n", hexA, hexA);
  	  	hexA = 0xcacca;
  	  	//hexA = hex<cacca>;
  	  	printf("hexA = %d (%X)\n", hexA, hexA);
	  	return 0;
	} 
}