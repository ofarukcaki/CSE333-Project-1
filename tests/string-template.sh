#!/bin/bash

char='%'
count=5
result=$( printf "%${count}s" ' ' )
echo -e ${result// /$char}