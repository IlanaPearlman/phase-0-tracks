# pair programming with Diem

def hamster_santuary
  puts "What is the hamster's name?"
  hamster_name = gets.chomp

  puts "What is the hamster's volume level from 1 to 10?"
  volume_level = gets.chomp
  volume_level = volume_level.to_f

  puts "What is the hamster's fur color?"
  fur_color = gets.chomp

  puts "Is the hamster a good candidate for adoption (y/n)?"
  adoption = gets.chomp
  adoption = adoption.downcase
  if adoption == "y" || adoption == "yes"
    adoption = true
  else
    adoption = false
  end

  puts "What is the hamster's estimated age?"
  estimated_age = gets.chomp
  if estimated_age.empty?
    estimated_age = nil
  else
    estimated_age = estimated_age.to_f
  end

  puts "The hamster's name is #{hamster_name}."
  puts "The hamster's volume_level is #{volume_level}."
  puts "The hamster's fur color is #{fur_color}."
  puts "The hamster is a good candidate for adoption: #{adoption}."
  if estimated_age.class == Float
    puts "The hamster's estimated_age is #{estimated_age}."
  else
    puts "The hamster's estimated age is unknown."
  end

end

hamster_santuary
