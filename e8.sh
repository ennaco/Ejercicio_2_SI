pin1=$1
pin2=$2
pin3=$3

prueba=0

for i in `seq 1 255`; do

	p=`ping $pin1.$pin2.$pin3.$i -c 1 | head -5 | tail -1 | awk '{ print $4 }'`

	if [ $p -eq 1 ]; then

		echo "$pin1.$pin2.$pin3.$i"

fi
	
	



done
