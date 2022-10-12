#!/bin/bash

i=1
argsed="p"
nbligne=$(($(cat $1 | wc -l)+1))

while [ $i -le $nbligne ]
do
l="sed -n $i$argsed $1"
REQUETE="$($l)"
if [ "${REQUETE:0:2}" = "##" ]
then
echo ""
echo "comment: ${REQUETE:2}"
echo ""
elif [ ! "$REQUETE" = "" ]
then
xmllint --xpath "$($l)" $2
else
echo ""
fi
i=$(($i+1))
done

