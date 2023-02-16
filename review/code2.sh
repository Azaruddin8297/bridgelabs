cd ../
mkdir main
cd main
mkdir sub1 sub2 sub3
cd sub2
cd ~/Desktop/item
for i in `ls`
do
foldername=`echo $i | awk -F. '{print $1}'`
folder=`echo $i | awk -F. '{print $2}'`
mkdir -p ~/Desktop/main/sub2/$foldername/$folder
cp -r $i ~/Desktop/main/sub2/$foldername/$folder
done