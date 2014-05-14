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
	Int8() <widens-prim: Int32()
	Int8() <widens-prim: Int64()
	Int16() <widens-prim: Int32()
	Int16() <widens-prim: Int64()
	Int32() <widens-prim: Int64()
	
type rules
	
	Void(): Void()
	Int8(): Int8()
	Int16(): Int16()
	Int32(): Int32()
	Int64(): Int64()
	
	Type(mod, t): type																//TODO store modifiers
	where t: type
	
	Pointer(type): Pointer(actualType)
	where type: actualType
	
	StructType(name) : StructType(name)
	
	Array(t, s): Array(type, size)
	where t: type
	and s => Decimal(size)
	
	TypeSynonym(Identifier(name)): type
	where definition of name: type 
	
	FunctionPointer(paramTypes, returnType): FunctionPointer(pTypes, rType)
	where paramTypes: pTypes
	and returnType: rType
	