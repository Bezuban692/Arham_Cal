#!/bin/bash

# Clear screen
clear

# Display X_GHOST banner with different colors
echo -e "\e[1;35m _  _  ____  _  _   _   _  ____  ____  ____ \e[0m"
echo -e "\e[1;36m( \/ )(_  _)( \/ ) / ) ( )(_  _)( ___)(  _ \ \e[0m"
echo -e "\e[1;33m \  /  _)(_  \  / / /   \ \  )(   )__)  )   /\e[0m"
echo -e "\e[1;32m  \/  (____)  \/ (_/     \_)(__) (____)(_)\_)\e[0m"
echo -e "\e[1;31m=============================================\e[0m"
echo -e "\e[1;34m          COLORFUL CALCULATOR BY X_GHOST      \e[0m"
echo -e "\e[1;37m=============================================\e[0m"

# Calculator functions
while true; do
    # Display menu
    echo -e "\n\e[1;35m1. Addition (+)\e[0m"
    echo -e "\e[1;36m2. Subtraction (-)\e[0m"
    echo -e "\e[1;33m3. Multiplication (*)\e[0m"
    echo -e "\e[1;32m4. Division (/)\e[0m"
    echo -e "\e[1;31m5. Exit\e[0m"

    # Get user input
    echo -en "\n\e[1;34mEnter your choice (1-5): \e[0m"
    read choice

    # Exit condition
    if [ $choice -eq 5 ]; then
        echo -e "\n\e[1;31mExiting... Thanks for using X_GHOST's calculator!\e[0m\n"
        exit 0
    fi

    # Get numbers
    echo -en "\n\e[1;36mEnter first number: \e[0m"
    read num1
    echo -en "\e[1;36mEnter second number: \e[0m"
    read num2

    # Perform calculation
    case $choice in
        1)
            result=$(echo "$num1 + $num2" | bc)
            echo -e "\e[1;32mResult: $num1 + $num2 = $result\e[0m"
            ;;
        2)
            result=$(echo "$num1 - $num2" | bc)
            echo -e "\e[1;33mResult: $num1 - $num2 = $result\e[0m"
            ;;
        3)
            result=$(echo "$num1 * $num2" | bc)
            echo -e "\e[1;35mResult: $num1 * $num2 = $result\e[0m"
            ;;
        4)
            if [ $(echo "$num2 == 0" | bc) -eq 1 ]; then
                echo -e "\e[1;31mError: Division by zero!\e[0m"
            else
                result=$(echo "scale=2; $num1 / $num2" | bc)
                echo -e "\e[1;34mResult: $num1 / $num2 = $result\e[0m"
            fi
            ;;
        *)
            echo -e "\e[1;31mInvalid choice! Please select 1-5\e[0m"
            ;;
    esac

    # Pause before clearing screen
    echo -e "\n\e[1;37mPress Enter to continue...\e[0m"
    read
    clear
    # Redisplay banner
    echo -e "\e[1;35m _  _  ____  _  _   _   _  ____  ____  ____ \e[0m"
    echo -e "\e[1;36m( \/ )(_  _)( \/ ) / ) ( )(_  _)( ___)(  _ \ \e[0m"
    echo -e "\e[1;33m \  /  _)(_  \  / / /   \ \  )(   )__)  )   /\e[0m"
    echo -e "\e[1;32m  \/  (____)  \/ (_/     \_)(__) (____)(_)\_)\e[0m"
    echo -e "\e[1;31m=============================================\e[0m"
    echo -e "\e[1;34m          COLORFUL CALCULATOR BY X_GHOST      \e[0m"
    echo -e "\e[1;37m=============================================\e[0m"
done


