#!/bin/bash
# Define a variable and except the value from the user and store the values in variables
NAME=$1
LAST_NAME=$2
SHOW=$3
# Use an if statement to check if the value SHOW is TRUE.
if [[ $SHOW == "true" ]]
then 
	echo " $NAME $LAST_NAME"
else
	echo " Not allowed to show the Names "
fi

# Print a message indicating that the script is finished
echo "Script finished."
