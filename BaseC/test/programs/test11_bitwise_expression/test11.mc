module test11 { 
  exported int32 main(int32 argc, string[] argv) {

  	  printf("0 | 0 = %d --- 0 | 1 = %d --- 1 | 0 = %d --- 1 | 1 = %d\n", 0 | 0, 0 | 1, 1 | 0, 1 | 1);				// or
  	  
  	  printf("0 & 0 = %d --- 0 & 1 = %d --- 1 & 0 = %d --- 1 & 1 = %d\n", 0 & 0, 0 & 1, 1 & 0, 1 & 1);				// and
  	  
  	  printf("0 ^ 0 = %d --- 0 ^ 1 = %d --- 1 ^ 0 = %d --- 1 ^ 1 = %d\n", 0 ^ 0, 0 ^ 1, 1 ^ 0, 1 ^ 1);				// xor
  	  
  	  printf("2 >> 1 = %d --- 3 >> 1 = %d --- 4 >> 1 = %d --- 8 >> 1 = %d\n", 2 >> 1, 3 >> 1, 4 >> 1, 8 >> 1);		// bit-shift right
  
  	  printf("2 << 1 = %d --- 3 << 1 = %d --- 4 << 1 = %d --- 8 << 1 = %d\n", 2 << 1, 3 << 1, 4 << 1, 8 << 1);		// bit-shift left
	  
	  return 0;
	} 
}