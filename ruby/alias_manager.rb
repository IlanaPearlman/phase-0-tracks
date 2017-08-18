=begin
In phase-0-tracks/ruby/alias_manager.rb, pseudocode and write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name with it by doing the following:

Swapping the first and last name.
Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.
=end

def fake_name(name)
  #switch first and last
  swapped = swap(name)
  #Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet.
  swapped.chars.inject([]) do |array, char|
    if 'aeiou'.include?(char)
      array << vowel_sub(char)
    elsif char == ' '
      array << char
    else
      array << char.next
    end
    array
  end.join('')
end

def swap(name)
  name.split(' ').reverse.join(' ')
end

def vowel_sub(char)
  index  = 'aeiou'.index(char)
  index <= 4 ? 'aeiou'[index + 1] : 'a'
end

def fake_name_interface
  loop do
    puts "Please type a name to convert, format must be firstname<space>lastname, or type 'Quit' to exit"
    user_input = gets.chomp

    break if ['quit', 'Quit','Q','q'].include?(user_input)

    puts fake_name(user_input)
  end
end

fake_name_interface