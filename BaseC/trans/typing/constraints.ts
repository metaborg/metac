module constraints

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
  	
  	
type rules

	Assign(v, _, e):-
	where v: vt
	and	e: et 
	and ( et == vt or et <widens-prim: vt)
		else error $[Incompatible types: [vt]; [et]] on e
		
	TypedefDecl(Type(mod, type), name):- 
    where mod => []
      else error "Type qualifiers are meaningless in this declaration." on mod					//TODO change error to warning
		
	If(cond, _)
	+While(cond, _):-
	where cond: Bool()
		else error "Type of expression needs to be boolean." on cond
	
	ArrayField(e, index):-
	where index: type	
	and type <is: Int()
		else error "Type of expression needs to be integer." on index 	
		
	Not(e):-
	where e: Bool()
		else error "Type of expression needs to be boolean." on e 
		
	FunctionCall(Identifier(name), params):-
	where
	(	definition of name: FunType(expectedTypes, rt)
		or definition of name: FunctionPointer(expectedTypes, rt))
	and params: actualTypes
	and (actualTypes == expectedTypes or actualTypes <widens-prim: expectedTypes )
	else error $[Incompatible parameter types: ([expectedTypes]); ([actualTypes])] on params
	
	Init(Identifier(name), exp):-
	where definition of name: type
	and (exp: etype or definition of exp: etype)
	and (type == etype or etype <widens-prim: type)
		else error $[Incompatible types: [type]; [etype]] on exp
		