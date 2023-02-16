#!/bin/bash

mediaTotal=0
read -p "Escribe una ciudad:" ciudad

total=`cat consumos.txt | wc -l`

for i in `seq 1 $total`
do
    linea=`cat consumos.txt | head -n$i | tail -n1`
    primera=$(echo $linea | awk '{print $1}')
    segunda=$(echo $linea | awk '{print $2}')
    cuarta=$(echo $linea | awk '{print $4}')
    if [ $primera = $ciudad ]
    then
    mediaTotal=$((cuarta+cuarta))
    fi
done
echo $mediaTotal