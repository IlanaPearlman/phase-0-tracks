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
    ordinal -= ("z".ord - "a".ord) if ordinal > "z".ord
    ordinal += ("z".ord - "a".ord) if ordinal < "a".ord
    word[index] = ordinal.chr
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

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")