# word_alteration method, recieves string and number arguments
# loop through the string
# for each char, get the ordinal and add the number
# if result > "z".ord, subtract "z".ord - "a".ord, else if result < "a".ord,
# then add "z".ord - "a".ord
# then transform the result into a char
# return the string, as changed

def word_alteration(word, num)
  index = 0
  while index < word.length
    ordinal = word[index].ord + num
    ordinal -= ("z".ord - "a".ord + 1) if ordinal > "z".ord
    ordinal += ("z".ord - "a".ord + 1) if ordinal < "a".ord
    word[index] = ordinal.chr

    index += 1
  end
  word
end

# encrypt method
# call word alteration method, passing it the word and +1
def encrypt(word)
  word_alteration(word, 1)
end

# decrypt method
# call word alteration method, passing it the word and +1
def decrypt(word)
  word_alteration(word, -1)
end

=begin
puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")

The above tests are commented out to leave only the interface running when this file is called at the terminal
=end

=begin
puts encrypt(decrypt("swordfish"))

The above code returns "swordfish" because, as in math, the method specified within the innermost parentheses is run first, and then
the results of running that method are passed to the outer method. Since encrypt and decrypt shift the letter by one in opposite directions, running one and then the other results in the original string being returned.
=end

def interface
  puts "Would you like to decrypt or encrypt a password? Type 'd' for decrypt and 'e' for encrypt."
  response = gets.chomp.downcase
  puts "Please type the password."
  password = gets.chomp
  puts response == "d" ? decrypt(password) : encrypt(password)
end

interface