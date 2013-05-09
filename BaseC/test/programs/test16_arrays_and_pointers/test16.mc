module test16 { 
  exported int32 main(int32 argc, string[] argv) {
  		printf("software >> Let\'s build an int32 array!\n");
  		int32 array[12];
  		int32 i;
  	  	array[0] = 0;
  	  	array[1] = 1;
  	  	for (i = 0; i < 12; i++)
  	  		array[i] = i;
  	  	for (int32 j = 0; j < 12; j++)
  	  		printf("array[%d] = %d\n",array[j],j);
	  	return 0;
	} 
}