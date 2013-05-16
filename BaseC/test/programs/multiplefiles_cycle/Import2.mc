module Import2 imports Import1, MultipleFilesCycle{
	exported int32 doStuff(int32 a, int32 b){
		return times(a,b);
	}
	
	int32 times(int32 a, int32 b){
		return a*b;
	}
}