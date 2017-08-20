=begin
write a program that will allow an interior designer to enter the details of a given client: the client's name, client's partner, number of children, children's names, children's birthdays, decor theme, budget, whether budget very flexible
=end


def enter_and_check_client_info
  client = {
    name: get_name,
    client_partner_name: get_client_partner_name,
    children_information: get_children_information,
    decor_theme: get_decor_theme,
    budget: get_budget,
    whether_budget_flexible: get_whether_budget_flexible
  }

  print_client_info(client)

  client = update_opportunity(client)

  print_client_info(client)
end

def get_name
  puts "Type client's full name:"
  gets.chomp
end

def get_client_partner_name
  puts "Type client's partner's full name, or 'None' for none"
  input = gets.chomp
  return if ["none","n"].include?(input.downcase)
  input
end

def get_children_information
  puts "How many children does the client have?"
  number_children = gets.chomp.to_i
  array_children_info = []
  number_children.times{array_children_info << get_info_each_child}
  array_children_info
end

def get_info_each_child
  child = {
    name: get_child_name,
    age: get_child_age(:name.to_s)
  }
end

def get_child_name
  puts "What is the child's name?"
  gets.chomp
end

def get_child_age(name)
  puts "What is #{name}'s age to the nearest whole year?"
  gets.chomp.to_i
end

def get_decor_theme
  puts "What is the decor theme?"
  gets.chomp
end

def get_budget
  puts "What is the budget"
  gets.chomp
end

def get_whether_budget_flexible
  puts "Is the budget at least 20\% flexible? Y/N"
  ["yes", "y"].include?(gets.chomp.downcase)
end

def print_client_info(client)
  puts ""
  puts "*** Client info ***"
  puts "Client = #{client[:name]}"

  puts "Client's partner information:"
  if client[:client_partner_name]
    puts "#{client[:client_partner_name]} is client's partner."
  else
    puts "Client has no partner."
  end

  puts "Client's children information:"
  if client[:children_information].length >= 1
    client[:children_information].each do |child|
      puts "#{child[:name]} is #{child[:age]} years old"
    end
  else
    puts "No children."
  end
  puts "Theme: #{client[:decor_theme]}"
  puts "Budget: #{client[:budget]}"
  puts "Budget is flexible: #{client[:whether_budget_flexible]}"
  puts "*******************"
  puts ""
end

def update_opportunity(client)
  puts "Would you like to update any client information?"
  puts "Type 'none' if there are no updates, or type the field to update:  name, partner, children, decor, budget, and flexibility."
  user_input = gets.chomp
  return client if ['none', 'n'].include?(user_input.downcase)
  client = select_update_field(client, user_input)
end

def select_update_field(client, field)
  case field
  when "name"
    client[:name] = get_name
    return client
  when "partner"
    client[:client_partner_name] = get_client_partner_name
    return client
  when "children"
    client[:children_information] = get_children_information
    return client
  when "decor"
    client[:decor_theme] = get_decor_theme
    return client
  when "budget"
    client[:budget] = get_budget
    return client
  when "flexibility"
    client[:whether_budget_flexible] = get_whether_budget_flexible
    return client
  end
end


enter_and_check_client_info
