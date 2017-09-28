#!/bin/bash

#4.piemērs
echo -e "\n"

echo "Atbilde uz jautājumu - kas tiek pildīts? " $0
echo "Skriptam nodoto argumentu skaits " $#
echo "Argumentu saraksts (attēlošana/grupēšana) 1.veids " $*
#eco "Argumentu saraksts (attēlošana/grupēšana) 1.veids " $*
echo "argumentu saraksts (attēlošana/grupēšana) 2 veids " $@
echo "Iepriekšējās komandas izpildes rezultāta kļūdas kods (0-nav kļūdas) " $?
echo "Tekošā procesa numurs"  $$
echo "Ēnā palaistā procesa numurs : "$!

#3. piemērs
#NAME="Vārds Uzvārds"
#echo $NAME
#unset NAME
#echo $NAME

#2. piemērs
#NAME="Vārds Uzvārds"
#readonly NAME
#echo $NAME
#NAME="Vārds Uzvārds"
#echo $NAME

#1. piemērs
#NAME="Vārds Uzvārds"
#echo $NAME
echo -e "\n"
