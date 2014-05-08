module constraints

imports
	include/MetaC
 	lib/nabl/-
 	lib/task/-
  	lib/types/-
  	lib/properties/-
  	lib/relations/-
  	BaseC/trans/analysis/desugar/constructors
  	BaseC/trans/typing/constructors	
  	
  	
type rules

	Assign(v, _, e):-
	where 
		v: vt and vt => Type(m1, vt')
	and	e: et and et => Type(m2, et') 
	and ( et' == vt' or et' <widens-prim: vt')
		else error $[Incompatible types: [vt]; [et]] on e
	
	TypedefDecl(Type(mod, type), name):- 
    where 
      mod => []
      else error "Type qualifiers are meaningless in this declaration." on mod					//TODO change error to warning
		
	If(cond, _)
	+While(cond, _):-
	where
		cond: t
	and	t => Type(mod, type)
	and type == Bool()
		else error "Type of the expression needs to be boolean" on cond