module test11 { 
  exported int32 main(int32 argc, string[] argv) {
  		printf("software >> Here are some bitwise computations... Enjoy..\n");
  	  int32 a, b;
  	  a = 0;
  	  b = 1;
  	  printf("a = %d (%X), b = %d (%X)\n", a, a, b, b);
  	  a = a | b;
  	  printf("a = a | b => a = %d (%X), b = %d (%X)\n", a, a, b, b);
  	  a = a & b;
  	  printf("a = a & b => a = %d (%X), b = %d (%X)\n", a, a, b, b);
  	  a = a ^ b;
  	  printf("a = a ^ b => a = %d (%X), b = %d (%X)\n", a, a, b, b);
  	  a = a >> 1;
  	  printf("a = a >> 1 => a = %d (%X), b = %d (%X)\n", a, a, b, b);
  	  b = b << 2;
  	  printf("b = b << 2 => a = %d (%X), b = %d (%X)\n", a, a, b, b);
  	  b = b >> 2;
  	  printf("b = b >> 2 => a = %d (%X), b = %d (%X)\n", a, a, b, b);
	  return 0;
	} 
}