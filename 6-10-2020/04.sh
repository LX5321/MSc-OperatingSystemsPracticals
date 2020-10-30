# find a number in an array of numbers.
numbers=(0, 3, 1)
for i in "${numbers[@]}"; do
  if [[ ${numbers[i]}=="$1" ]]; then
	  echo "$i is in the arr."
	  fi
done
