echo "please slect your job Type"
echo "Eg;-"
echo "1.Fulltime Job"
echo "2.Parttime Job"
read typeofjob

isFullTime="1"
isPartTime="2"
PerHourCost=100
PerDayHours=8
Salary=0
selectedjob=""

case $typeofjob in
    1)
      Salary=$((PerHourCost*PerDayHours))
      Salary=$((Salary))      
      selectedjob="Fulltimejob"
      ;;
    2)
      Salary=$((PerHourCost*PerDayHours))
      Salary=$((Salary/2))
      slectedjob="PartTimejob"
      ;;
    *)
      echo "your job is invalid"
      ;;
esac

if [ $salary !=0 ]
then 
echo type of eshift $slectedjob salary is $salary
fi
