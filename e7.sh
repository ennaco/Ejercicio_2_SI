read -p "DIME EL DIRECTORIO QUE QUERES BUSCAR " di

if [ -d "$di" ]; then

bor=`find $di -name "*.txt" | wc -l`

rm $di/*.txt

	echo "Se han borrado $bor fichero/s"

else

 	echo "El directorio $di no existe"

fi
