CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_LessThanHelloWorld=LessThanHelloWorld.o
OBJ_LessThanHelloWorld=$(patsubst %,$(ODIR)/%,$(_OBJ_LessThanHelloWorld))


all: removeStuffFromLibraries clean LessThanHelloWorld 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean LessThanHelloWorld
LessThanHelloWorld: $(OBJ_LessThanHelloWorld)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
