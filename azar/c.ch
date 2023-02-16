echo "please slect your favorite cricket team"
echo "rcb csk mi gt sr"
read teamName
matchPlayed=14
won=0
lose=0
position=o
nrr=""
points=0
function errorHandler() {
    echo "please check your teamname $1,its not playing the game"
}
function finalEligibilty() {
if [ $1 -le 4 ]
then
   echo "$2 is eligible for playoffs"
else
   echo "$2 is not eligible playoffs"
fi
}
function pointCalculator() {
lose=$(($matchPlayed-$3))
points=$(($3*2))
echo "Name of Team $1"
echo "place is $2"
echo "total number of matches played is $matchPlayed"
echo "wins are $3 and lost are $lose"
echo "runRate is $4"
echo "secured points are $points"
finalsEligibility $2 $1
}

if [ $teamName == "rcb" ]
then 
    position=6
elif [ $teamName == "csk" ]
then
    position=7
elif [ $teamName == "mi" ]
then
    position=8
elif [ $teamName == "sr" ]
then
    position=3
else
    errorHandler $teamName
fi
if [ $position -gt 0 ]
then
case $position in
1)
  win=5
  nrr="-0.203"
  pointCalculator $iteamName $position $win $nrr
  ;;
2)
  win=6
  nrr="-1.111"
  pointCalculator $iteamName $position $win $nrr
  ;;
3)
  win=7
  nrr="+1.222"
  pointCalculator $iteamName $position $win $nrr
  ;;
4)
  win=10
  nrr="+1.555"
  pointCalculator $iteamName $position $win $nrr
  ;;
*)
  echo " "
  ;;
esac
fi
