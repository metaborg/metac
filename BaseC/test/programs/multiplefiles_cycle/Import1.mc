module Import1 imports MultipleFilesCycle, Import2{
	exported int32 duplicate(int32 input){
		return input+doStuff(input,input+1);
	}
}