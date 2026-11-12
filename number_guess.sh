#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

GAMES_PLAYED=$($PSQL "SELECT COUNT(1) FROM GAMES WHERE USERNAME='$USERNAME'")
if [[ $GAMES_PLAYED -eq 0 ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  BEST_GAME=$($PSQL "SELECT MIN(GUESSES) FROM GAMES WHERE USERNAME='$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

RANDOM_GUESS=$(( RANDOM % 1000 + 1 ))

echo "Guess the secret number between 1 and 1000:"
read GUESS

NUMBER_GUESS=1

while [[ $RANDOM_GUESS -ne $GUESS ]]
do
  if [[ ! "$GUESS" =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  elif [[ $RANDOM_GUESS -gt $GUESS ]]
    then 
      echo "It's higher than that, guess again:"
    else 
      echo "It's lower than that, guess again:"
  fi
  read GUESS
  NUMBER_GUESS=$(( $NUMBER_GUESS + 1 ))
done

echo "You guessed it in $NUMBER_GUESS tries. The secret number was $RANDOM_GUESS. Nice job!"
INSERT=$($PSQL "INSERT INTO GAMES(USERNAME,GUESSES) VALUES('$USERNAME','$NUMBER_GUESS')")