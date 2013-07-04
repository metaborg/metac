MetaC
=====

A safe/clean version of the C language with domain-specific extensions. Sub-languages are defined in separate sub-directories of the project:

- BaseC: definition of the base language 
- Statemachine: a language for defining statemachines

You can get up to speed by working through this tutorial or by reading the [user guide](MetaC_User_Guide.pdf?raw=true).

## Get up and running


### Get Spoofax

In order to build this project get Eclipse 3.7/3.8 and [install Spoofax](http://metaborg.org/wiki/spoofax/download).

The nightly version of Spoofax is required to work with the template language files (*.tmpl).


### Checkout project

Clone [this git repo](https://github.com/metaborg/metac.git) in Eclipse-Spoofax.


### First build

The first build is actually building the project. Everything should work out of the box, including the template language.


## Examples

### Basic examples

[metac/BaseC/test/programs](https://github.com/metaborg/metac/tree/master/BaseC/test/programs) contains a lot of test programs.
The following list of test programs works when calling the 'execute' builder from the transform menu:

* test01 - test08b (hello world, basic math)
* test10 - test20 (structs, nondecimal numbers, arrays and pointers)
* test33 - test34 (nested structs, enums)

### Compiling multiple files (with imports)

* [metac/BaseC/test/programs/multiplefiles](https://github.com/metaborg/metac/tree/master/BaseC/test/programs/multiplefiles) contains an example using multiple modules.

Open the Main.mc, Other.mc and Other2.mc files.
Open Main.mc and select the builder 'to-compiled-exe' from the transform menu to generate an executable.
The 'execute' will directly generate the executable and run it.
In this case the result of the calculation should be 18 and is visible in the console.

* [metac/BaseC/test/programs/multiplefiles_cycle](https://github.com/metaborg/metac/tree/master/BaseC/test/programs/multiplefiles_cycle) contains an example using multiple modules with cyclic imports, this gives no errors.

### Statemachine DSL examples

[metac/Statemachine/test/programs](https://github.com/metaborg/statemachine/tree/master/BaseC/test/programs) contains the statemachine test programs.
The following programs can be build and executed through the 'Statemachine execute' builder. The generated C code can be seen by using the 'Statemachine to C' builder.

* [metac/Statemachine/test/examples/Simple](https://github.com/metaborg/metac/blob/master/Statemachine/test/examples/Simple/SimpleStatemachine.mc)
* [metac/Statemachine/test/examples/AnalyzeFlight] (https://github.com/metaborg/metac/blob/master/Statemachine/test/examples/AnalyzeFlight/AnalyzeFlight.mc)

## Statemachine inner workings


Statemachine declaration:

```
   Statemachine name initial=start
   {
      in event1()
      var int8 x = 0
      state start{
      }
   }
```

- declares a statemachine with 1 state, 1 incoming event and 1 internal variable
- <b>note: variable modifiers: readable & writable are not implemented yet<b>. 
- each statemachine desugars into 2 functions (init and execute), 1 struct (data - contains variables declared + 1 variable for the current state) and 2 enums (states and events).
- <b>At the moment, the functions, struct and enums are generated in the same file as the rest of the code (ran into some import-related problems when trying to generate them in another file). Mbeddr generates struct, enums and execute function prototype in a header file.</b>
- thus, the statemachine above generates the struct ("statemachine3" is the name of the module; "name" is the name of the statemachine):

```   
    struct statemachine3_sm_data_name
    {
       enum statemachine3_sm_states_name __currentState;
       int8_t x;
    };

```
- init function: 
   
```
   void statemachine3_sm_init_name (struct statemachine3_sm_data_name * instance)
   {
       instance->__currentState = name__state_start;
       instance->x = 0;
   }
```

- states enum:
   
```
   enum statemachine3_sm_states_name 
   { 
       name__state_start 
   };
```

- event enum:
   
```
   enum statemachine3_sm_events_name 
   { 
       name__event_event1 
   };
```

- execute function:
   
```
   void statemachine3_sm_execute_name (struct statemachine3_sm_data_name * instance, enum statemachine3_sm_events_name event, void * * arguments)
   {
      switch ( instance->__currentState )
      {
          case name__state_start : 
          {
              switch ( event )
              {
              }
              break ;
          }
     }
   }
```
- events with parameters are declared by:
```
   in event1(int8 delta)
```
- <b>Note: at the moment, statemachine variables and event parameters are declared in the same scope so declaring a parameter and a variable with the same name will cause a duplicate definition error.</b>
- states can have entry and exit blocks which are executed upon entering or exiting the state:
```
   state start { 
       
	    entry { 
	      x = 0;  
	    } 
	    exit {
	    	 printf("exit start\n");
	   	}
      
   }
```
- transition from one state to another is determined by events. A transition from state "start" to state "exit" determined by event "quit":
```
   state start {
      on quit[]-> exit
   }
```
- transitions from one state to another can be restricted by specifying conditions. Variables in conditions can refer to global variables, statemachine variables and event parameters. 
- the following transition from state start to state exit will take place only if variable x is less than 10
```
   state start {
      on quit[x<10]-> exit
   }
```
- <b>Note: currently, variables in the condition of one event (i.e. event2() - declared without parameters) can refer to the parameters of another event (i.e. event1(int8 param)) without giving an error in the editor. Naturally, the code generated in this case does not work.</b> 
- transitions can be 'customized' with specific actions by declaring a transition block:
```
   state start {
      on quit[]-> exit { x++; }
   }
```
- <b>Note: statements in the transition block (here: x++; ) will be executed before the statements declared in the entry block of the target state.</b>

