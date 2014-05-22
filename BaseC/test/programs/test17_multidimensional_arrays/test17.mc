module test17 { 
  exported int32 main(int32 argc, string[] argv) {
  		int32 array[2][3] = { 	{1, 2, 3},
  								{4, 5, 6}
  							 };
  	  	for(int8 i = 0; i < 2; i++)
  	  	{	
  	  		for(int8 j = 0; j < 3; j++ )
  	  			printf("%d ", array[i][j]);
  	  		printf("\n");
  	  	}
  	  	
  	  	return 0;
	} 
}