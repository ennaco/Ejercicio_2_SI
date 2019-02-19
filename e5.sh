so=`cat listado.txt | wc -l`
usuLin=0
procLin=0
usuWin=0
procWin=0

for i in `seq 1 $so` ;do

 no=`cat listado.txt | head -$i | tail -1 | awk '{print $2 }'`

if [ $no = "Linux" ]; then
	usuLin=$((usuLin+1))
	proc=`cat listado.txt | head -$i | tail -1 | awk '{print $3 }'`
	procLin=$((procLin+proc))

else
	usuWin=$((usuWin+1))
	proc=`cat listado.txt | head -$i | tail -1 | awk '{print $3 }'`
	procWin=$((procWin+proc))

fi

done

echo "SISTEMA		USUARIOS	PROCESOS"
echo "LINUX		$usuLin		$procLin" 
echo "WINDOWS		$usuWin		$procWin" 

