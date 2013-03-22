CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_HelloWorld=HelloWorld.o
OBJ_HelloWorld=$(patsubst %,$(ODIR)/%,$(_OBJ_HelloWorld))


all: removeStuffFromLibraries clean HelloWorld 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean HelloWorld
HelloWorld: $(OBJ_HelloWorld)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
