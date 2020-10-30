# Write a simple calculator program that allows user to enter two numeric values and operand as follows. The program should then print out the sum of two numbers. Make sure it works according to entered operand.

read -p "Enter two values : " operandA operandB
read -p "Enter operand ( +, -, /, *) : " operation

ans=$(( $operandA $operation $operandB ))

echo "$operandA $operation $operandB = $ans"
