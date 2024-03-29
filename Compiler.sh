#!/bin/bash

export FORTRAN_COMPILER=IFORT
export SI3DDIR=../psi3d
export GOTMDIR=../gotm
#export SI3DDIR=/home/sv/GitHub/psi3d
#export GOTMDIR=/home/sv/GitHub/gotm
export MODDIR=$GOTMDIR/modules
export INCDIR=$GOTMDIR/include
export BINDIR=$GOTMDIR/bin
export LIBDIR=$GOTMDIR/lib

#IF IFGOTM=false --> The modules 'util' and 'turbulence' are not compiled
export IFGOTM=false
#IF IFSI3D=false --> Only SI3D is compiled
export IFSI3D=true

if $IFGOTM
then
	cd $GOTMDIR/src/util
	make clean
	make
	cd $GOTMDIR/src/turbulence
	make clean
	make
fi

if $IFSI3D
then
	cd $SI3DDIR
	make omp
	rm *.o
else
	cd $SI3DDIR
	make si3d
	rm *.o
fi
