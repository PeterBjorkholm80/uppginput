echo "Running tests..."
#echo

result=$(echo -e "John\n17" | ./main.out)

# Read the resulting values into an array
readarray -t values <<< "$result"

# Assign each value to a variable
name=${values[0]}
age=${values[1]}

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [ "$name" == "John" ] ; then
  echo "Pass: Expected 'John' and got $name"
else
  echo "Expected 'John' but got: $name"
  exit 1
fi

if [ "$age" == "17" ] ; then
  echo "Pass: Expected '17' and got: $age"
else
  echo "Expected '17' but got: $age"
  exit 1
fi

echo
echo "All tests passed."
exit 0
