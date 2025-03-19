#!/bin/bash

# Function to perform addition
add() {
    echo "Result: $(($1 + $2))"
}

# Function to perform subtraction
subtract() {
    echo "Result: $(($1 - $2))"
}

# Function to perform multiplication
multiply() {
    echo "Result: $(($1 * $2))"
}

# Function to perform division
divide() {
    if [ $2 -eq 0 ]; then
        echo "Error: Division by zero is not allowed."
    else
        echo "Result: $(($1 / $2))"
    fi
}

# Function to display the menu
show_menu() {
    echo "Select operation:"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"
}

while true; do
    show_menu
    read -p "Enter choice [1-5]: " choice

    if [ $choice -eq 5 ]; then
        echo "Exiting calculator."
        exit 0
    fi

    read -p "Enter first number: " num1
    read -p "Enter second number: " num2

    case $choice in
        1)
            add $num1 $num2
            ;;
        2)
            subtract $num1 $num2
            ;;
        3)
            multiply $num1 $num2
            ;;
        4)
            divide $num1 $num2
            ;;
        *)
            echo "Invalid choice. Please select a valid operation."
            ;;
    esac
done
