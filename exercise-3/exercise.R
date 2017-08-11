# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c('blue', 'green', 'black', 'red', 'yellow', 'purple')

# Use the `sample` function to select a single marble
sample(marbles)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
marble.guess <- function(a) {
  marble <- sample(marbles, 1)
  if(all(a != marbles)) {
    result.error <- 'Error: this value is not included in the domain. Please select one of the values included in the vector `marbles`.'
    return(result.error)
  } else if(a == marble) {
    result.1a <- 'You win! Yes,'
    result.1b <- 'is the correct answer.'
    result.1c <- paste(result.1a, marble, result.1b)
    return(result.1c)
  } else if(a != marble) {
    result.2a <- 'You lose! The correct answer is'
    result.2b <- paste(result.2a, marble)
    result.2c <- paste0(result.2b, '.')
    return(result.2c)
  } 
}

# Play the marble game!
marble.guess('blue')

# Bonus: Play the marble game until you win, keeping track of how many tries you take
marble.guess('blue') # Won on second attempt

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability
