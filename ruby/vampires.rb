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

def allergy_check
  puts "Please list your allergies, one at a time."
  allergy = nil
  until allergy == "done"
    puts "List an allergy or type 'done' if you are done."
    allergy = gets.chomp.downcase
    puts "the allergy is #{allergy}"
    return "Probably a vampire." if allergy == "sunshine"
    return "Probably a vampire." if allergy == "sunshine"
  end
  nil
end

def vampire_identification_survey
  puts "How many employees are there to process"
  employees = gets.chomp.to_i
  index = 1

  while index <= employees
    name = get_name
    age_right = get_age_info
    garlic_bread = get_garlic_bread_info
    health_ins = get_health_ins_info

    allergy_check
    #puts (!allergy_check.nil? ? allergy_check : result(name, age_right, garlic_bread, health_ins))

    result(name, age_right, garlic_bread, health_ins)

    index += 1
  end
    puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end

vampire_identification_survey