require 'Date'

def get_name
  puts "What is your name?"
  gets.chomp
end

def get_age_info
  puts "How old are you?"
  age = gets.chomp.to_f
  puts "What year were you born?"
  birth_year = gets.chomp.to_f
  age == Date.today.year - birth_year
end

def get_garlic_bread_info
  puts "Our company cafeteria serves garlic bread. Should we order some for you? Y/N"
  garlic_bread = gets.chomp
  garlic_bread == "y" ? true : false
end

def get_health_ins_info
  puts "Would you like to enroll in the company’s health insurance? Y/N"
  health_ins = gets.chomp.downcase
  health_ins == "y" ? true : false
end

def result(name, age_right, garlic_bread, health_ins)
  results = "Results inconclusive."
  results = "Probably not a vampire." if age_right && (garlic_bread || health_ins)
  results = "Probably a vampire." if !age_right && (!garlic_bread || !health_ins)
  results = "Almost certainly a vampire." if !age_right &&
  !garlic_bread && !health_ins
  results = "Definitely a vampire" if name == "Drake Cula" || name == "Tu Fang"
  results
end

def vampire_identification_survey
  name = get_name
  age_right = get_age_info
  garlic_bread = get_garlic_bread_info
  health_ins = get_health_ins_info

  puts result(name, age_right, garlic_bread, health_ins)
end

vampire_identification_survey