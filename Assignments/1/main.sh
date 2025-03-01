#!/usr/bin/env bash

display_menu() {
    echo "==============================="
    echo "  Git & Linux commands    "
    echo "==============================="
    echo "1. Initialize a Git Repository"
    echo "2. Clone a Git Repository"
    echo "3. Commit Changes"
    echo "4. Push Changes"
    echo "5. Create a Directory"
    echo "6. Delete a File"
    echo "7. Delete a Directory"
    echo "8. List Directory Contents"
    echo "9. Exit"
    echo "==============================="
}

process_user_input() {
    case $1 in\
    1)
        ./mygit-init.sh
        ;;
    2)
        ./mygit-clone.sh
        ;;
    3)
        ./mygit-commit.sh
        ;;
    4)
        ./mygit-push.sh
        ;;
    5)
        ./mygit-create-directory.sh
        ;;
    6)
        ./mygit-delete-file.sh
        ;;
    7)
        ./mygit-delete-directory.sh
        ;;
    8)
        ./mygit-list-contents.sh
        ;;
    9)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "$1 is not a valid option. Please enter a number from the presented list."
        ;;
    esac
}

while true; do
    display_menu
    read -p "Enter the number next to the script you want to run: " user_input
    process_user_input $user_input
    echo ""
done