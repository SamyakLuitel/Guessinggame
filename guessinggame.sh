#!/usr/bin/env bash
# Peer review Assignment guessinggame.sh

true_count=$(ls -a|wc -l)
let true_count=$true_count-2

echo "if you don't want to include hidden file enter 1 else  enter anything other than 1"
read hi
if [[ $hi -eq 1 ]]
then 
    true_count=$(ls|wc -l)
   
   
fi 


function guess {
    if  [[ $guessed_count -lt $true_count ]]
    then 
        echo "your guess is low"
    elif [[ $guessed_count -gt $true_count ]]
    then 
        echo "your guess is high"
    else
        echo "your  guess is correct"
           
     fi
}


while [[ $true_count -ne $guessed_count ]];
do 

  echo "Enter the number of files in the directory "
  read guessed_count
  echo $(guess $guessed_count $true_count)
  echo ""
done

