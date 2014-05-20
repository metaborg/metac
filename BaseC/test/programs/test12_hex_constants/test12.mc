module test12 { 
  exported int32 main(int32 argc, string[] argv) {
  		int32 hexA;
  		hexA = 0x00;
  	  	printf("hexA = %d (%X)\n", hexA, hexA);
  	  	hexA = 0x6F;
  	  	printf("hexA = %d (%X)\n", hexA, hexA);
	  	return 0;
	} 
}