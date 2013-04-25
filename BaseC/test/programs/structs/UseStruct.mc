module UseStruct {
	
	struct Employee
	{
	    int32 ID;
	    int32 Age;
	    int32 Wage;
	};
	
	exported int32 main(){//int32 argc, string[] argv) { 
		Employee Joe;
		Joe.ID = 14;
		Joe.Age = 32;
		Joe.Wage = 2415;
		printf("%d",Joe.Wage);
	 	return 0; 
	}
	
}
