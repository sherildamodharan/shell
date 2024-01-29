#TEST 1
# This test will check if all the numbers from 1 to 10 are included in the output
result=$(./random_numbers.sh)
expected="1\n2\n3\n4\n5\n6\n7\n8\n9\n10"
if [ "$result" == "$expected" ]; then
    echo "Test Passed: All numbers from 1 to 10 included."
else
    echo "Test Failed: All numbers from 1 to 10 not included."
fi

#TEST 2
# This test will check if the outputs are really random
result1=$(./random_numbers.sh)
result2=$(./random_numbers.sh)
if ["$result1" != "$result2"]; then
   echo "test passed- Output is random"
else
   echo "Test failed- outputs are NOT random"
fi

# TEST 3
# This test will check if the number of numerics in the output never less/more than 10
result=$(./random_numbers.sh)
numlines=$(echo "$result"|wc -l)
if [ "$numlines" -eq 10 ] ; then
echo "Test Passed: Number of lines in output is correct."
else
echo "Test Failed: Incorrect number of lines in output."
fi
