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
	
	Int8() 	<is: Int()
	Int16()	<is: Int()
	Int32() <is: Int()
	Int64() <is: Int()
	Float() <is: Float()
	
	t <is: Numeric()
	where
		t <is: Int() or t <is: Float()

type rules
	
   	//variables
   	Var(Identifier(x)) : type
   	where definition of x : type
   	
   	Param(type, name): type
   	
   	// Field(e, Identifier(fieldId)) -> type
   	// where
   	// 	//Type(_, StructType(Identifier(s))) := <type-of> e;
   	// 	StructType(Identifier(s)) := <type-of; get-puretype> e;
   	// 	field := <index-lookup-children(|Field(), fieldId); filter(match-name(|fieldId)); Hd> s;
   	// 	type := <index-type-of> field 
   	
   	Field(_, Identifier(x)): type
   	where definition of x: type
   	
   	FieldViaPointer(_, Identifier(x)): type
	where definition of x: type  
   		
   	
   		
   		
   	
   	