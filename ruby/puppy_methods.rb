class Puppy
  def fetch(toy)
    p "I brought back the #{toy}!"
    toy
  end
  def speak(integer)
    response = ""
    integer.times do
      response << "Woof!/n"
    end
    p response
  end
  def roll_over
    p "*roll over*"
  end
  def dog_years(human_years)
    p 7 * human_years
  end
  def sit
    p "*sit*"
  end
  def initialize
    puts "Initializing new puppy instance..."
  end
end
lab = Puppy.new
pit_bull = Puppy.new
p lab.fetch("ball") == "I brought back the ball!"
p lab.speak(3) == "Woof!"
p lab.speak(3) == "Woof!/nWoof!/nWoof!/n"
p lab.roll_over == "*roll over*"
p lab.dog_years(2) == 14
p lab.sit == "*sit*"
class Fruit
  def initialize(sound)
    puts sound
  end
  def rots(days)
    days.downto(1) do |count_down|
      puts count_down
    end
    p "Rotten!"
  end
  def grow(name)
    puts name.downcase
    puts name.upcase
  end
end
# 50.times do |num|
#   num.to_sym = Fruit.new("crunch")
# end
# 50.times do |num|
#   num_string = num.to_s
#   num_string= Fruit.new("crunch")
# end
fruit_list = {}
50.times do |num|
  fruit_list[num] = Fruit.new("splat")
  end
p fruit_list
p fruit_list[49.to_s]
fruit_list.each do |num_name, a_fruit|
    a_fruit.rots(num_name + 1)
    a_fruit.grow(num_name.to_s + "apple")
  end