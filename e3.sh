dias=`cat precipitaciones.txt | wc -l`

nolluvia=0
dia=1


for i in `seq 1 $dias` ; do

precip=`cat precipitaciones.txt | head -$i | tail -1`

if [ $dia -gt 7 ]; then
		dia=1
	fi
	
if [ $precip -eq 0 ] ;then

	

	if [ $dia -eq 1 ]; then
		echo "Lunes"
	elif [ $dia -eq 2 ]; then
		echo "Martes"
	elif [ $dia -eq 3 ]; then
		echo "Miercoles"
	elif [ $dia -eq 4 ]; then
		echo "Jueves"
	elif [ $dia -eq 5 ]; then
		echo "Viernes"
	elif [ $dia -eq 3 ]; then
		echo "Sabado"
	else
		echo "Domingo"
	fi
fi
dia=$((dia+1))
done



