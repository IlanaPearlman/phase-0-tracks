=begin
write a program that will allow an interior designer to enter the details of a given client: the client's name, client's partner, number of children, children's names, children's birthdays, decor theme, budget, whether budget very flexible
=end

def enter_new_client_info
  client = {
    name: get_name,
    client_partner_name: get_client_partner_name,
    children_information: get_children_information,
    decor_theme: get_decor_theme,
    budget: get_budget,
    whether_budget_flexible: get_whether_budget_flexible
  }
end

