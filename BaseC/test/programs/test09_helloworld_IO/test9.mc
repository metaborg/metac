module test9 { 
  exported int32 main(int32 argc, string[] argv) {
  	  printf("software >> Hey user, what\'s your name?\n");
  	  
  	  string userName; 
  	  do{
  	  	scanf("%s", &userName);
  	  }while(userName != "");
  	  
  	  printf("software >> nice to meet you, %s", userName);
	  return 0;
	}
}