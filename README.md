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

### Multiple files

[metac/BaseC/test/programs/multiplefiles](https://github.com/metaborg/metac/tree/master/BaseC/test/programs/multiplefiles) contains an example using multiple modules.

Open the Main.mc file and select the builder 'to-compiled-exe' from the transform menu to generate an executable. The 'execute' will directly generate the executable and run it. In this case the result of the calculation should be 18 and is visible in the console.