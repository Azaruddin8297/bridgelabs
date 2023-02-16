for item in `ls`
do
   FolderName=`echo $item | awk -F. '{ print $1 }'`
   Folderwork=`echo $item | awk -F. '{ print $2 }'` 
   mkdir -p $FolderName/$Folderwork
   cp -r $item $FolderName/$Folderwork
done
