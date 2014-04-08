module expressions

imports
	include/MetaC
 	lib/nabl/-
 	lib/task/-
  	lib/types/-
  	lib/properties/-
  	lib/relations/-
  	BaseC/trans/analysis/desugar/constructors
  	BaseC/trans/typing/constructors
  	BaseC/trans/typing/types.generated
  	BaseC/trans/typing/constants.generated
  
type rules

	Addition(e1, e2)
  + Subtraction(e1, e2)
  + Multiplication(e1, e2)
  + Division(e1, e2) 
  + Modulo(e1, e2) : Type([], ty)
	where
		e1: Type(_, aty1)
		and e2: Type(_, aty2)
		and aty1 <is: Numeric()
			else error "Expected Numeric type" on e1
		and aty2 <is: Numeric()
			else error "Expected Numeric type" on e2
		and <promote> (aty1, aty2) => ty
		
	BitwiseOr(e1, e2)
  + BitwiseXor(e1, e2)
  +	BitwiseAnd(e1, e2)
  +	BitshiftRight(e1, e2)
  +	BitshiftLeft(e1, e2) : Type([], ty)
  	where
  		e1: Type(_, aty1)
		and e2: Type(_, aty2)
		and aty1 <is: Int()
			else error "Expected Integer type" on e1
		and aty2 <is: Int()
			else error "Expected Integer type" on e2
		and <promote> (aty1, aty2) => ty
	
	Or(e1, e2)
  + And(e1, e2) : Boolean()
  	where	
  		e1: Boolean()
  		and e2: Boolean()	
			
type functions
	
	promote: (t1, t2) -> t
	where 
		((t1 == Float() or t2 == Float()) and Float() => t)
	or 	((t1 == Int64() or t2 == Int64()) and Int64() => t)
	or	((t1 == Int32() or t2 == Int32()) and Int32() => t)
	or	((t1 == Int16() or t2 == Int16()) and Int16() => t)
	or	Int8() => t
		
	