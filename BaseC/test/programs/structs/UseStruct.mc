module UseStruct {
	
	struct Employee
	{
	    int32 ID;
	    int32 Age;
	    int32 Wage;
	    Address *addr;
	};
	
	struct Address{
		int8 number;
		int8 street;
	};
	
	exported int32 main(int32 argc, string[] argv) { 
		
		Employee Joe;
		Address JoeAddr;
		Employee * JoePtr;
		
		JoePtr = &Joe;
		JoePtr->addr = &JoeAddr;
		
		Joe.ID = 14;
		Joe.Age = 32;	
		JoePtr->Age = 100;
		Joe.Wage = 2415;
		
		JoePtr->addr->number = 3;
		JoePtr->addr->street = 10;
		
		printf("ID: %d\n", JoePtr -> ID);
		printf("Wage: %d\n",Joe.Wage);
		printf("Age: %d\n",Joe.Age);
		printf("Addr-street: %d\n",JoePtr->addr->street);
		printf("Addr-number: %d\n",JoePtr->addr->number);
	 	return 0; 
	}
	
}
