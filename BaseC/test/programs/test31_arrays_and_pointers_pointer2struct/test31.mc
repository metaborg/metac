module test31 {
	struct myStruct{
		int32 myField;
	};
  exported int32 main(int32 argc, string[] argv) {
  		printf("software >> Are you ready for pointers?\n");
  		myStruct x;
  		x.myField = 32;
  		printf("x.myField = %d\n",x.myField);
  		myStruct *ptr = &x;
  		ptr->myField++;
  		printf("ptr->myField = %d\n",ptr->myField);
  		return 0;
	} 
}