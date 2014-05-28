module test21 { 
  struct Array
  {
  	int32 data[3][3];
  };
  
  exported int32 main(int32 argc, string[] argv) {
  		struct Array varArray;
  		
  		for(int8 i = 0; i < 3; i++)
  	  	{	
  	  		for(int8 j = 0; j < 3; j++ )
  	  			varArray.data[i][j] = i+j;
  	  	}
  		
  		for(int8 i = 0; i < 3; i++)
  	  	{	
  	  		for(int8 j = 0; j < 3; j++ )
  	  			printf("%d ", varArray.data[i][j]);
  	  		printf("\n");
  	  	}
  		return 0;
	} 
}