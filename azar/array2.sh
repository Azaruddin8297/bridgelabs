# Function to generate a random number between 100 and 999
generate_random_number() {
    echo $(( $RANDOM % 900 + 100 ))
}

# Generate 10 random 3-digit numbers and store them in an array
numbers=()
for (( i=0; i<10; i++ )); do
    numbers+=($(generate_random_number))
done

# Print the generated numbers
echo "Generated numbers: ${numbers[@]}"

# Find the second largest and second smallest numbers without sorting the array
largest=${numbers[0]}
second_largest=${numbers[0]}
smallest=${numbers[0]}
second_smallest=${numbers[0]}

for num in "${numbers[@]}"; do
    if (( num > largest )); then
        second_largest=$largest
        largest=$num
    elif (( num > second_largest && num != largest )); then
        second_largest=$num
    fi
    if (( num < smallest )); then
        second_smallest=$smallest
        smallest=$num
    elif (( num < second_smallest && num != smallest )); then
        second_smallest=$num
    fi
done

# Print the results
echo "Second largest: $second_largest"
echo "Second smallest: $second_smallest"