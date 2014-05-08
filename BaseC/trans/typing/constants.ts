module constants

imports
	include/MetaC	
	
type rules
	
	Float(val) : Type([], Float())
	
	True(): Type([], Bool())
	False(): Type([],Bool())