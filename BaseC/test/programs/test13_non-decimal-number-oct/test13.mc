module test13 { 
  exported int32 main(int32 argc, string[] argv) {
  		printf("software >> Let's work with some octal numbers!\n");
  		int32 octA;
  	  	octA = oct<0000>;
  	  	printf("octA = %d (%X)\n", octA, octA);
  	  	octA = oct<0123>;
  	  	printf("octA = %d (%X)\n", octA, octA);
	  	return 0;
	} 
}