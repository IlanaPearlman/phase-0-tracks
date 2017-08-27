=begin
One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
Guesses are limited, and the number of guesses available is related to the length of the word.
Repeated guesses do not count against the user.
The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
The user should get a congratulatory message if they win, and a taunting message if they lose.
=end

require_relative "game.rb"



describe Game do

    let(:new_game){Game.new("apple")}

    it "is an instance of Game class" do
      expect(:new_game).to be_instance_of Game
    end

    it "first user can enter a string to be guessed" do
      output = capture_standard_output { :new_game.get_secret_to_guess }
      expect(output).to eq "Player 1: what is the secret to be guessed?"
      game.input.stub(:gets.chomp) { 'apples' }
      expect(game.secret).to eq 'apples'
    end

    it "second user attepts to guess the string, and recieves feedback on the current state of the word" do
      output = capture_standard_output { :new_game.guess_character }
      expect(output).to eq "Player 2: You now have #{:new_game.remaining_guesses} guesses:\nGuess a letter. The clue is _______."
      :new_game.input.stub(:gets.chomp) { 'd' }
      expect(:new_game.clue).to eq 'd______'
    end

    it "number of guesses is limited, and related to length of word" do
      expect(:new_game.remaining_guesses).to be <= (:new_game.secret.length)
    end

    it "user should get a congratulatory message if they win" do
      expect(:new_game.congratulatory_message).to eq     "WINNER! It was '#{:new_game.secret}'!"
    end

    it "user should get a taunting message if they lose" do
      expect(:new_game.taunting_message).to eq "NOPE, it was '#{:new_game.secret}'. You lost :("
    end

end


