#!/bin/bash

IMAGE=opensuse42-r-base-v3.6.1-BiocManager.simg
DEFINITION=Singularity

if [ -f $IMAGE ]; then
	rm -fv $IMAGE
fi

sudo singularity build $IMAGE $DEFINITION
