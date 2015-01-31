
#################################################
# Makefile format
# target: dependencies
# <tab>	 Command to generate target
#################################################

# -----------------------------------------------
# Super useful shortcuts:
#   $@ matches the target;
#   $< matches the first dependent
#   $^ Matches all dependencies
# -----------------------------------------------

# -----------------------------------------------
# But first, some definitions.

# -----------------------------------------------
# Flag to replace gcc,  $(CC) = gcc
CC= gcc
# -----------------------------------------------
# CLEAN definition - git rid of compiled stuff
CLEAN= rm -rf *.o story
CLEANWIN = del /f /s *.o *.exe story
# -----------------------------------------------
# TEST definition - write to file and cat file
TEST= (./story | tee the_story.txt)

# -----------------------------------------------
# The standard default target is 'all'
# This target has no command, only a dependency.
# We will execute test   though, when it's built.
# -----------------------------------------------

all: story

test:
	@$(TEST)

# -----------------------------------------------
# When you type 'make clean', you get rid of
# all of the *.o and the 'story' file.
# -----------------------------------------------

clean:
	$(CLEAN)

cleanwin:
	$(CLEANWIN)
# -----------------------------------------------
# Now we bring in our dependencies.
# 'all' needs 'story'. What does story need?
# And how do we make it?
# -----------------------------------------------

story: story.o \
	scottgs.o \
	bpbkt7.o \
	tehww4.o \
	jpvc4.o \
	blhtkd.o \
	wfbc77.o \
	bjt2p3.o \
	amd2b7.o \

	$(CC) -o story $^


#pawprint.o -  where is your .c derived object file

# -----------------------------------------------

story.o: story.c
	$(CC) -c $^

# -----------------------------------------------
# Add an target of your object file, with your source as the dependency
bpbkt7.o: sentences/bpbkt7.c
	$(CC) -c $<

scottgs.o: sentences/scottgs.c
	$(CC) -c $<

tehww4.o: sentences/tehww4.c
	$(CC) -c $<

jpvc4.o: sentences/jpvc4.c
	$(CC) -c $<
	
#acfr47.o: sentences/acfr47.c
#	$(CC) -c $<
	
blhtkd.o: sentences/blhtkd.c
	$(CC) -c $<

wfbc77.o: sentences/wfbc77.c
	$(CC) -c $<
bjt2p3.o: sentences/bjt2p3.c
	$(CC) -c $<
amd2b7.o: sentences/amd2b7.c
	$(CC) -c $<
