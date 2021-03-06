module expressions

imports
	include/MetaC
 	lib/nabl/-
 	lib/task/-
  	lib/types/-
  	lib/properties/-
  	lib/relations/-
  	BaseC/trans/naming/variables
  	BaseC/trans/analysis/desugar/constructors
  	BaseC/trans/typing/constructors
  	BaseC/trans/typing/types.generated
  	BaseC/trans/typing/constants.generated
  
type rules

	Addition(e1, e2)
  + Subtraction(e1, e2)
  + Multiplication(e1, e2)
  + Division(e1, e2) 
  + Modulo(e1, e2) : ty
	where
		e1: aty1
		and e2: aty2
		and aty1 <is: Numeric()
			else error "Expected Numeric type" on e1
		and aty2 <is: Numeric()
			else error "Expected Numeric type" on e2
		and <promote> (aty1, aty2) => ty
		
	BitwiseOr(e1, e2)
  + BitwiseXor(e1, e2)
  +	BitwiseAnd(e1, e2)
  +	BitshiftRight(e1, e2)
  +	BitshiftLeft(e1, e2) : ty
  	where
  		e1: aty1
		and e2: aty2
		and aty1 <is: Int()
			else error "Expected Integer type" on e1
		and aty2 <is: Int()
			else error "Expected Integer type" on e2
		and <promote> (aty1, aty2) => ty
	
	GreaterThan(e1, e2)
  + GreaterThanEqual(e1, e2)
  + Equal(e1, e2)
  + Inequal(e1, e2)
  + LessThan(e1, e2)
  + LessThanEqual(e1, e2) : Bool()
 	where
  		e1: ty1
  	and e2: ty2
  	and ty1 <widens: ty2
  		else error "Incompatible types" on e2
	
	DecrementPostfix(e)
  + DecrementPrefix(e)
  + IncrementPostfix(e)
  + IncrementPrefix(e) : ty
  	where
  		e: ty
  	and	ty <is: Numeric()
  		else error "Expected Numeric type" on e
	
	Or(e1, e2)
  + And(e1, e2) : Bool()
  	where	
  		e1: Bool()
  		and e2: Bool()	
			
	Address(e): Pointer(type)
	where e: type
		
	Dereference(e): type
	where e: Pointer(type)
		
	FunctionCall(Identifier(name), _): type
	where
		definition of name: t
	and ( t => FunType(paramTypes, type)
		or t => FunctionPointer(paramType, type)) 
	
	ArrayField(e, _): type
	where e: Array(type, size)
		
	Not(e): Bool()	
	where e: type
	
	Return(e): type
	where e: type
	
	Var(Identifier(x)) : type
   	where definition of x : type
   	
   	Var(Identifier(x)) has modifiers mod
   	where definition of x has modifiers mod
   	
   	Param(t, name): type
   	where t: type
   	
   	Field(_, Identifier(x)): type
   	where definition of x: type

   	FieldViaPointer(_, Identifier(x)): type
	where definition of x: type
	
	FunctionRef(Identifier(x)): FunctionPointer(paramTypes, returnType)
	where definition of x: t
	and t => FunType(paramTypes, returnType)
			
type functions
	
	promote: (t1, t2) -> t
	where 
		((t1 == Float() or t2 == Float()) and Float() => t)
	or 	((t1 == Int64() or t2 == Int64()) and Int64() => t)
	or	((t1 == Int32() or t2 == Int32()) and Int32() => t)
	or	((t1 == Int16() or t2 == Int16()) and Int16() => t)
	or	Int8() => t
		
	