=begin
One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
Guesses are limited, and the number of guesses available is related to the length of the word.
Repeated guesses do not count against the user.
The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
The user should get a congratulatory message if they win, and a taunting message if they lose.
=end

class Game
#initialize method
#calls a string getting method and stores the string in an instance variable
#stores instance variable clue for theguess string, initially all "_", of same length as other instance string
#stores list of guessed letters in array, initially empty
  def initialize
    @secret = get_secret_to_guess
    @clue = "_" * @secret.length
    @past_guesses = []
  end

#initial string method
#returns instance variable for initial string
  def get_secret_to_guess
    puts "What is the secret to be guessed?"
    gets.chomp
  end

#guessing inteface method
#prints the current clue
#prints number of remaining guesses
# loop until guess input valid
#updates current clue if guessed letter is included

#validate input
# true if string length over 0 and wasn't previously guessed

# game play method
#calls guessing interface once per each letter of the initial string
#congratulatory message if they win, and a taunting message if they lose.
end
