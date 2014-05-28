module UseStruct {
	
	struct Employee
	{
	    int32 ID;
	    int32 Age;
	    int32 Wage;
	    struct Address *addr;
	};
	
	struct Address{
		int8 number;
		int8 street;
	};
	
	exported int32 main(int32 argc, string[] argv) { 
		
		struct Employee Joe;
		struct Address JoeAddr;
		struct Employee * JoePtr;
		
		JoePtr = &Joe;
		JoePtr->addr = &JoeAddr;
		
		Joe.ID = 14;
		Joe.Age = 32;	
		JoePtr->Age = 100;
		Joe.Wage = 2415;
		
		JoePtr->addr->number = 3;
		JoePtr->addr->street = 10;
		
		printf("ID: %d\n", JoePtr -> ID);						//should print 14
		printf("Wage: %d\n",Joe.Wage);							//should print 2415
		printf("Age: %d\n",Joe.Age);							//should print 100
		printf("Addr-street: %d\n",JoePtr->addr->street);		//should print 10
		printf("Addr-number: %d\n",JoePtr->addr->number);		//should print 3
	 	return 0; 
	}
	
}
