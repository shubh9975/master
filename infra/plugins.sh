#!/bin/bash

filename=".terraform"

if [ -d $filename ]
then
	exit 
else
        
	 terraform init
	 
fi
