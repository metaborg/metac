MetaC
=====

A safe/clean version of the C language with domain-specific extensions. Sub-languages are defined in separate sub-directories of the project:

- BaseC: definition of the base language 
- Statemachine: a language for defining statemachines

## Get up and running


### Get Spoofax

In order to build this project get Eclipse 3.7/3.8 and [install Spoofax](http://metaborg.org/wiki/spoofax/download).

The nightly version of Spoofax is required to work with the template language files (*.tmpl).


### Checkout project

Clone [this git repo](https://github.com/metaborg/metac.git) in Eclipse-Spoofax.


### First build

The first build requires manually editing saving of all template files. After the first time the generation of files from the template files will be done automatically on build.

Change, wait 1 second and hit save for the following files.
To check if it worked <filename>.tmpl should generate <filename>generated.sdf in the same folder.

* metac/BaseC/syntax/*.tmpl
* metac/Statemachine/syntax/*.tmpl


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
The following programs can be build and executed through the 'Statemachine execute' builder.

* [metac/Statemachine/test/examples/Simple](https://github.com/metaborg/metac/blob/master/Statemachine/test/examples/Simple/SimpleStatemachine.mc)

## Statemachine inner workings

TODO write this.
