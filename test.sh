echo "Running tests..."
echo

output=$(./main.out)

# Read the values into an array
readarray -t values <<< "$output"

# Assign each value to a variable
val1=${values[0]}
val2=${values[1]}
val3=${values[2]}
val4=${values[3]}
val5=${values[4]}
val6=${values[5]}
val7=${values[6]}
val8=${values[7]}



if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [ "$val1" == "17" ] ; then
  echo "Pass: nr of ones: $val1"
else
  echo "Expected '17' but got: $val1"
  exit 1
fi

if [ "$val2" == "18" ] ; then
  echo "Pass: nr of two: $val2"
else
  echo "Expected '18' but got: $val2"
  exit 1
fi

if [ "$val3" == "23" ] ; then
  echo "Pass: nr of three: $val3"
else
  echo "Expected '23' but got: $val3"
  exit 1
fi

if [ "$val4" == "18" ] ; then
  echo "Pass: nr of four: $val4"
else
  echo "Expected '18' but got: $val4"
  exit 1
fi

if [ "$val5" == "12" ] ; then
  echo "Pass: nr of five: $val5"
else
  echo "Expected '12' but got: $val5"
  exit 1
fi

if [ "$val6" == "12" ] ; then
  echo "Pass: nr of six: $val6"
else
  echo "Expected '12' but got: $val6"
  exit 1
fi

if [ "$val7" == "326" ] ; then
  echo "Pass: Sum was: $val7"
else
  echo "Expected '326' but got: $val7"
  exit 1
fi

if [ "$val8" == "3.3" ] ; then
  echo "Pass: Average was: $val8"
else
  echo "Expected '3.3' but got: $val8"
  echo "Make sure you are using float and formatting with 1 decimal"
  exit 1
fi

echo
echo "All tests passed."

exit 0
