#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games, teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
  if [[ $WINNER != "winner" ]]
  then
    # Get winner_team
    WINNER_TEAM=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
    # If null, add new winner_team
    if [[ -z $WINNER_TEAM ]]
    then 
      # Insert new winner_name
      INSERT_WINNER_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      # Inserted winner_name
      if [[ $INSERT_WINNER_TEAM == "INSERT 0 1" ]]
      then
        echo Insert Winner $WINNER
      fi
    fi
  fi

  # Get opponent_team
  if [[ $OPPONENT != "opponent" ]]
  then
    # Get opponent_team
    OPPONENT_TEAM=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
    # If null, add opponent_team
    if [[ -z $OPPONENT_TEAM ]]
    then
      # Insert new opponent_team
      INSERT_OPPONENT_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      # Inserted opponent_name
      if [[ $INSERT_OPPONENT_TEAM == "INSERT 0 1" ]]
      then
        echo Insert Opponent $OPPONENT
      fi
    fi
  fi

  # Insert match_info
  if [[ $YEAR != "year" ]]
  then
    # Get winner_id
    WINNER_ID=$($PSQL"SELECT team_id FROM teams WHERE name='$WINNER'")

    # Get opponent_id
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    # Insert into new row
    INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
    if [[ $INSERT_GAME = "INSERT 0 1" ]]
    then
      echo Inserted $YEAR $ROUND $WINNER_ID $OPPONENT_ID $WINNER_GOALS $OPPONENT_GOALS
    fi
  fi

done
