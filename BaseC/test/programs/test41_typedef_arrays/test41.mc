module test41{
	typedef int32 intarray[5];
	typedef int32[] intarray2;
	
	exported int32 main(int32 argc, string[] argv)
	{
	    intarray array1;
	    intarray2 array2;
	    array1[0] = 42;
	    array2[0] = 43;
	    printf("array1[0] = %d\n", array1[0]);			//should print 42
	    printf("array2[0] = %d\n", array2[0]);			//should print 43
	    return 0;
	}
}