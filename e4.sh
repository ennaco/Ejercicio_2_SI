numeros=`cat numeros.txt | wc -l `
pares=0
impares=0

tablapar=""
tablaimpar=""

echo "NUMEROS PARES"
for i in `seq 1 $numeros` ;do

numero=`cat numeros.txt | head -$i | tail -1`

if [ $((numero%2)) -eq 0 ]; then

echo $numero
pares=$((pares+1))
fi
done

echo "Total Pares " $pares

echo "Numeros Impares"
 
for i in `seq 1 $numeros` ;do

numero=`cat numeros.txt | head -$i | tail -1`

if [ $((numero%2)) -eq 1 ]; then

echo $numero
impares=$((impares+1))

fi


done

echo "Total Impraes " $impares

echo $tablapar
