
mkdir ~/Desktop/main
cd ~/Desktop/main
mkdir sub1 sub2 sub3
cd sub2
for file in `ls ~/Desktop/item`
do

   folder1=`echo $file | awk -F. '{ print $1 }'`
   folder2=`echo $file | awk -F. '{ print $2 }'`
   mkdir -p $folder1/$folder2
   cp -r $file $folder1/$folder2

done 
