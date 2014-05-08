module types

imports
	include/MetaC	
	libstratego-lib
	lib/editor-common.generated
	lib/index/-
	lib/analysis/-
	lib/nabl/-
	BaseC/trans/naming/names
	BaseC/trans/typing/constructors
	BaseC/trans/analysis/desugar/constructors
	
relations
	
	define transitive <is:
	define transitive <widens-prim:
		
	Int8() 	<is: Int()
	Int16()	<is: Int()
	Int32() <is: Int()
	Int64() <is: Int()
	Float() <is: Float()
	
	t <is: Numeric()
	where
		t <is: Int() or t <is: Float()
	
	Int8() <widens-prim: Int16()
	Int16() <widens-prim: Int32()
	Int32() <widens-prim: Int64()
	

type rules
	
	Type(mod, Int8()): Type(mod, Int8())
	Type(mod, Int16()): Type(mod, Int16())
	Type(mod, Int32()): Type(mod, Int32())
	Type(mod, Int64()): Type(mod, Int64())
	
	Type(mod, Pointer(type)): Type(mod, Pointer(actualType))
	where
		type: actualType
	
	Type(mod, StructType(name)) : Type(mod, StructType(name))
	
	Type(mod, TypeSynonym(Identifier(name))): Type(mod, type)
	where definition of name: t 
	and t => Type(m, type)
	
	
   	//variables
   	Var(Identifier(x)) : type
   	where definition of x : type
   	
   	Param(type, name): type
   	
   	Field(_, Identifier(x)): type
   	where definition of x: type
   	
   	FieldViaPointer(_, Identifier(x)): type
	where definition of x: type  
	