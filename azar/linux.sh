for item in `ls`
do 
     File=`echo $item | awk -F. '{ print $1 }'`
     File1=`echo $item | awk -F. '{ print $2 }'`
     mkdir -p $File/$File1
     cp -r $item $File/$File1
done

