#!/bin/bash

printf "Enter a commit message\n> "
read -r COMMIT_MESSAGE


if [ -v COMMIT_MESSAGE ]; then
    # printf "COMMIT MESSAGE\n>> \"%s\"\n" "$COMMIT_MESSAGE"
    git add .
    git commit -m "$COMMIT_MESSAGE"
    git push
else
    echo "Something strange happened... COMMIT_MESSAGE does not exist"
    exit 1
fi



while true; do
    read -r -p "Do you want to deploy to firebase? (y/n): " -n 1 ANSWER
    echo

    case "$ANSWER" in
        [Yy]) 
            echo "Building to firebase."
            npm run build # Build 
            firebase deploy # Deploy
            break
            ;;
        [Nn]) 
            echo "Canceling"
            break
            ;;
        *) 
            echo "Invalid input. Please enter 'y' or 'n'."
            ;; 
    esac
done

printf "\n\nDONE!\n\n"