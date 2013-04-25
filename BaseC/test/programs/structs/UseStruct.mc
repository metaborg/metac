module UseStruct {
	
	exported int32 main(){//int32 argc, string[] argv) { 
		Employee Joe;
		Joe.ID = 14;
		Joe.Age = 32;
		Joe.Wage = 2415;
		printf("%d",Joe.Wage);
	 	return 0; 
	}
	
	struct Employee
	{
	    int32 nID;
	    int32 nAge;
	    int32 fWage;
	};
}
