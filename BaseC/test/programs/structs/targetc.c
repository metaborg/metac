
int32_t main (int32_t argc, int8_t * argv [])
{
	struct Employee Joe;
	Joe.ID = 14;
	// Joe.Age = 32;
	// Joe.Wage = 2415;
	// printf("%d",Joe.Wage);
	return(0);
}

// struct doesnt work in c syntax?
struct Employee
{
    // int32 nID;
    // int32 nAge;
    int32 fWage;
};
