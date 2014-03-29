module BaseC/trans/typing/types

imports
	include/MetaC	
	libstratego-lib
	lib/editor-common.generated
	lib/index/-
	lib/analysis/-
	lib/nabl/-
	BaseC/trans/naming/names
	BaseC/trans/typing/subtyping
	BaseC/trans/typing/constructors
	BaseC/trans/typing/expressions/arithmetic
	

type rules
	
	Decimal(val): Int64()
	Float(val): Float() 
	
	 
	// operators
	
	Plus() 		: 	(Numeric(), Numeric())
	Minus()		:	(Numeric(), Numeric())
	Mul() 		: 	(Numeric(), Numeric())
	Div() 		: 	(Numeric(), Numeric())
	Mod() 		: 	(Int(), Int(), Int())
	
	BWAnd() 	: 	(Int(), Int(), Int())
   	BWOr() 		: 	(Int(), Int(), Int())
   	BWXor() 	: 	(Int(), Int(), Int())	
    BitshiftR()	: 	(Int(), Int(), Int())
   	BitshiftL()	: 	(Int(), Int(), Int())
   	
   	//Neg() 		: 	(IntOrFloat(), IntOrFloat())
   	
   // variables
   	Var(Identifier(x)) : type
   	where definition of x : type
