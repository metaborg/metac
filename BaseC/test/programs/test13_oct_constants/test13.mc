module test13 { 
  exported int32 main(int32 argc, string[] argv) {
  		int32 octA;
  	  	octA = 00;
  	  	printf("octA = %d (%o)\n", octA, octA);
  	  	octA = 0123;
  	  	printf("octA = %d (%o)\n", octA, octA);
	  	return 0;
	} 
}