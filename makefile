CC=g++
CFLAGS= -g -Wall
SRCS := b_plus_tree.cxx main.cxx
PSRCS := $(SRCS:.cxx=.e)
OBJ := $(SRCS:.cxx=.o)
main: $(OBJ)
	$(CC) $(CFLAGS) -o db $(OBJ)
default: main
%.o: %.hpp
%.e: %.cxx
	$(CC) $(CFLAGS) -E $< -o $@
clean:
	$(RM) -rf $(OBJ) db *.e
precompile: $(PSRCS)
