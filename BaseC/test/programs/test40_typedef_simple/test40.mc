module test40{
	typedef int32 integer;
	
	exported integer main(integer argc, string[] argv)
	{
	    integer myInteger = 42;
	    
	    printf("%d\n", myInteger);
	    return 0;
	}
}