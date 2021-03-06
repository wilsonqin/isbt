
PROG = main

# Setup
LIBS = \

CAMLC = ocamlc
CAMLDOC = ocamldoc
CAMLFLAGS = -g
#CAMLPROF = ocamlcp

%.cmo: %.ml
	$(CAMLC) $(CAMLFLAGS) -c $<

# Source and Object files
SRC = \
	main.ml \

OBJ = $(SRC:.ml=.cmo)

#Executable:

$(PROG): $(OBJ)
	$(CAMLC) $(CAMLFLAGS) unix.cma $(OBJ) -o $(PROG)

doc: $(OBJ)
	$(CAMLDOC) -html $(SRC)

#prof: $(OBJ)
#	$(CAMLPROF) $(CAMLFLAGS) unix.cma $(OBJ) -o $(PROG)

# Other

all: $(PROG)

clean: 
	rm -rf *.cmo *.cmi *.html *.css $(PROG)

.DEFAULT_GOAL := $(PROG)
.PHONY: doc build run clean prof
