#!/bin/bash


#if (...) then ... fi
a=$1
if (( $a > 0 ))
then
echo "izdruka no galvenā zara (Jā gadījumā), tad, kad $a ir lielaks par 0"
else
echo " Izdrukā no galvenā zara (Nē gadījumā), tad, kad $a nav >0"
fi
echo "Šis teksts tiks attēlots jebkurā gadījumā" 





: <<'END'
#if (...) then ... fi
a=$1
if (( $a > 0 ))
then
echo "izdruka no galvenā zara (Jā gadījumā), tad, kad $a ir lielaks par 0"
fi
echo "Šis teksts tiks attēlots jebkurā gadījumā" 
END
