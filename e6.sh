read -p "DIME EL DIRECTORIO QUE QUERES BUSCAR " di

bor=`find $di -name "*.txt" | wc -l`

rm $di/*.txt

echo "Se han borrado $bor fichero/s"


