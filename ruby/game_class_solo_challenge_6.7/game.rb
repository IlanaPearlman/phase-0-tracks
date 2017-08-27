=begin
One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
Guesses are limited, and the number of guesses available is related to the length of the word.
Repeated guesses do not count against the user.
The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
The user should get a congratulatory message if they win, and a taunting message if they lose.
=end

class Game

  attr_reader :secret, :clue, :past_guesses, :remaining_guesses
#initialize method
#calls a string getting method and stores the string in an instance variable
#stores instance variable clue for the guess string, initially all "_", of same length as other instance string
#stores list of guessed letters in array, initially empty
  def initialize(secret = get_secret_to_guess)
    @secret = secret
    @clue = "_" * @secret.length
    @past_guesses = []
    @remaining_guesses = @secret.length
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
  def guess_character
    guess = ''
    loop do
      puts "Guess a letter. The clue is #{@clue}."
      guess = gets.chomp
      break if valid_guess(guess)
      puts "Try again! It must be a single character that was not guessed yet."
    end
    update_clue(guess)
    update_past_guesses(guess)
    update_remaining_guesses
  end

#validate input
# true if string length over 0 and wasn't previously guessed
  def valid_guess(guess)
    guess.length == 1 && !@past_guesses.include?(guess)
  end

  def update_clue(guess)
    new_clue = ''
    @secret.chars.each_with_index do |char, index|
      letter = char == guess ? guess : @clue[index]
      new_clue << letter
    end
    @clue = new_clue
  end

  def update_past_guesses(guess)
    @past_guesses << guess
  end

  def update_remaining_guesses
    @remaining_guesses -= 1
  end

  def won?
    !@clue.include?("_")
  end

  def more_guesses_remaining
    @remaining_guesses > 0
  end

  def over?
    won? || !more_guesses_remaining
  end

# game play method
#calls guessing interface once per each letter of the initial string
#congratulatory message if they win, and a taunting message if they lose.

  def play
    while !over?
      guess_character
    end
    puts "#{won? ? "Yay! It was #{@secret}!" : "Tragedy! Game over:("}"
  end
end

my_game = Game.new
my_game.play
