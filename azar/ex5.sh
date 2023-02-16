echo "Please Select Your Job Type"
echo "Eg :-"
echo "1.Fulltime Job"
echo "2.Parttime Job"
read typeOfJob

isFullTime="1"
isPartTime="2"
perHourCost=100
logHourPerDay=8
salary=0
selectedJob=""

if [ $typeOfJob == $isFullTime ]
then
salary=$((perHourCost*logHourPerDay))
selectedJob="Fulltime"
elif [ $typeOfJob == $isPartTime ]
then
salary=$((perHourCost*logHourPerDay))
salary=$((salary/2))
selectedJob="Parttime"
else
echo "Please Select Valid Job Type"
fi

if [[ $typeOfJob -gt 0 && $typeOfJob -lt 3 ]]
then
echo "You Selected as $selectedJob and Income as $salary"
fi
