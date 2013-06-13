module factorial{
	exported int32 fact(int32 x){
		if (x <= 1)
			return 1;
		return x * fact(x-1);
	} 
}