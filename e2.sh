dias=`cat precipitaciones.txt | wc -l`
cont=0
lluvia=0
final=0


for i in `seq 1 $dias`;do
precip=`cat precipitaciones.txt | head -$i | tail -1`

if [ $precip -gt 0 ] ; then
cont=$((cont+precip))
lluvia=$((lluvia+1))


fi



done

final=$((cont/lluvia))
echo "Ha llovido $lluvia dias"
echo "Ha llovido un total de $cont litros"
echo "Con una media de $final litros"
