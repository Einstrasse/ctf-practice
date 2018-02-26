list=`ls /home/guest/`
file=""
cd /home/guest/
echo `pwd`

for listData in `echo $list`
do
	file="$file $listData " 	
done


echo "cp $file /home/flag/backup/"

cp $file /home/flag/backup/

