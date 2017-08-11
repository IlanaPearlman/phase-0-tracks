require 'Date'

def vampire_identification_survey
  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_f
  puts "What year were you born?"
  birth_year = gets.chomp.to_f
  age_right = age == (Date.today.year - birth_year)

  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  garlic_bread = gets.chomp
  garlic_bread = (garlic_bread == y ? true : false)

  puts "Would you like to enroll in the company’s health insurance? Y/N"
  health_ins = gets.chomp.downcase
  health_ins = (health_ins == y ? true : false)

  results = "Results inconclusive."
  results = "Probably not a vampire." if age_right && (garlic_bread || health_ins)
  results = "Probably a vampire." if !age_right && (!garlic_bread || !health_ins)
  results = "Almost certainly a vampire." if !age_right &&
  !garlic_bread && !health_ins
  results = "Definitely a vampire" if name == "Drake Cula" || name == "Tu Fang"
  puts results

end

get_employee_info

current_year = Date.today.year