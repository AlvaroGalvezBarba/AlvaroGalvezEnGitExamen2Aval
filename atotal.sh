#!/bin/bash

consumoTotal=0
read -p "Escribe una ciudad:" ciudad

while read linea
do
    primera=$(echo $linea | awk '{print $1}')
    cuarta=$(echo $linea | awk '{print $4}')
    if [ $primera = $ciudad ]
    then
    consumoTotal=$((consumoTotal+cuarta))
    fi
done < consumos.txt

echo $consumoTotal