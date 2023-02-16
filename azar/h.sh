seq 0 100 | grep -oE `([0-9])\1`
echo $seq
