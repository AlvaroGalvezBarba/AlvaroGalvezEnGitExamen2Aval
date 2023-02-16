#!/bin/bash
minima=0

while read linea
do
    primera=$(echo $linea | awk '{print $1}')
    segunda=$(echo $linea | awk '{print $2}')
    cuarta=$(echo $linea | awk '{print $4}')
    cuarta1=$(echo $cuarta | awk '{print $4}')
    echo $cuarta1
    if [ $cuarta -lt $cuarta ]
    then
    minima = $cuarta
    fi
done < consumos.txt

echo $primera,$segunda,$minima