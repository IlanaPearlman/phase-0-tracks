=begin
One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
Guesses are limited, and the number of guesses available is related to the length of the word.
Repeated guesses do not count against the user.
The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
The user should get a congratulatory message if they win, and a taunting message if they lose.
=end

#method to allow testing of IO stream
  def capture_standard_output(&block)
    original_stream = $stdout
    $stdout = mock = StringIO.new
    yield
    mock.string.chomp
  ensure
    $stdout = original_stream
  end


class Game

  attr_reader :secret, :clue, :past_guesses, :remaining_guesses
#initialize method
#calls a string getting method and stores the string in an instance variable
#stores instance variable clue for the guess string, initially all "_", of same length as other instance string
#stores list of guessed letters in array, initially empty
  def initialize(secret = "default")
    @secret = secret
    @past_guesses = []
  end

#initial string method
#returns instance variable for initial string, updates inital values for clue and remaining guesses
  def get_secret_to_guess
    puts "Player 1: what is the secret to be guessed?"
    @secret = gets.chomp
  end

  def set_initial_clue_and_remaining_guesses
    @clue = "_" * @secret.length
    @remaining_guesses = @secret.length
  end

#guessing inteface method
#prints the current clue
#prints number of remaining guesses
# loop until guess input valid
#updates current clue if guessed letter is included
  def guess_character
    puts "Player 2: You now have #{@remaining_guesses} guesses"
    guess = ''
    puts "Guess a letter. The clue is #{@clue}."
    loop do
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

  def congratulatory_message
    "WINNER! It was '#{@secret}'!"
  end

  def taunting_message
    "NOPE, it was '#{@secret}'. You lost :("
  end

# game play method
#calls guessing interface once per each letter of the initial string
#congratulatory message if they win, and a taunting message if they lose.

  def play
    get_secret_to_guess
    set_initial_clue_and_remaining_guesses
    while !over?
      guess_character
    end
    puts "#{won? ? congratulatory_message: taunting_message}"
  end
end

if __FILE__ == $PROGRAM_NAME
  new_game = Game.new
  new_game.play
end