#!/bin/bash

#pour appeller le script : "./script-xpath.sh file.xpath file2.xml"

#si ca ne fonctionne pas essayer la commande "chmod +x script-xpath.sh" puis reessayer
#si ca ne fonctionne toujours pas verifier que l'invité de commande interprete bien le bash (expl git-bash)

#quelle que soit la terminaison du premier fichier (expl .txt) de file, ca marche
#file.xpath doit contenir ligne par ligne les commandes xpath sans guillemets
#les lignes commencant par "##" ne sont pas interpretées (commentaire)

#file2.xml est le fichier xml dans lequel les commandes xpath seront executees




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
echo "commentaire: ${REQUETE:2}"
echo ""
elif [ ! "$REQUETE" = "" ]
then
xmllint --xpath "$($l)" $2
fi
i=$(($i+1))
done

