cont=`cat nombres.txt | wc -l`

for i in `seq 1 $cont`; do
 

 l=`cat nombres.txt | head -$i | tail -1`

 mkdir $l
 	for z in `seq 1 $1`;do

 		mkdir $l/directorio$z

 	done

done
