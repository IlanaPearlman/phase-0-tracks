def get_employee_info
  puts "What is your name?"
  name = gets.chomp
  puts "How old are you?"
  age = gets.chomp.to_f
  puts "What year were you born?"
  birth_year = gets.chomp.to_f
  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  wants_garlic_bread = gets.chomp
  puts "Would you like to enroll in the company’s health insurance?"
  wants_health_insurance = gets.chomp
end

get_employee_info