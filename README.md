# Number Guessing Game

A terminal-based number guessing game built with Bash scripting and PostgreSQL as part of the freeCodeCamp Relational Database Certification.

## Description

This project is a number guessing game where players try to guess a randomly generated number between 1 and 1000.

The game stores player information and statistics in a PostgreSQL database, including the number of games played and the best number of attempts.

## Technologies Used

- Bash
- PostgreSQL
- SQL
- Git and GitHub

## Features

- Random number generation.
- Interactive terminal gameplay.
- User registration and recognition.
- Persistent player statistics.
- Tracking of games played.
- Tracking of best game scores.

## Files

- `number_guess.sh` – Bash script containing the game logic.
- `number_guess.sql` – PostgreSQL database dump containing the game data and user records.

## How to Run

1. Create the PostgreSQL database:

   ```sql
   CREATE DATABASE number_guess;
   ```

2. Restore the database:

   ```bash
   psql -U postgres -d number_guess < number_guess.sql
   ```

3. Run the game:

   ```bash
   ./number_guess.sh
   ```

## Author

Created as part of the [freeCodeCamp](https://www.freecodecamp.org/) Relational Database Certification.
