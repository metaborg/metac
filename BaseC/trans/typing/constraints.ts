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
		v: vt
	and	e: et
	and vt == et
	else error $[Incompatible types: [vt]; [et]] on e	