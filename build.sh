#!/bin/bash

# include versioning
. version.sh

# The chained makefiles use in the kernel module build won't allow any
# CPPFLAG defines here, or at least I can't make it work, so we will do our
# own preprocessor step for getting the version in the code.
SRCFILE=./src/scuzzball.c
sed -i s/MODULEVERSION/\"${MODULEVERSION}\"/g $SRCFILE 

make clean
make all

# Now undo our super messy forced versioning
sed -i s/\"${MODULEVERSION}\"/MODULEVERSION/g $SRCFILE 
