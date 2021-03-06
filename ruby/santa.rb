=begin
A speak method that will print "Ho, ho, ho! Haaaappy holidays!" (Santa has been working on being more inclusive.)
An eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!"
An initialize method that prints "Initializing Santa instance ...".
Add a bit of code below your class declaration to check that you're able to initialize a Santa instance and call its methods.
=end

class Santa

  attr_reader :age, :ethnicity, :reindeer_ranking
  attr_accessor :gender, :age

  def initialize(gender="female", ethnicity="Thai")
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking.push(reindeer)
  end

end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

1000.times do
  new_santa = Santa.new(example_genders.sample, example_ethnicities.sample)
  num = Random.new
  new_santa.age = num.rand(0..140)
  puts "gender = #{new_santa.gender}; ethnicity = #{new_santa.ethnicity}; reindeer_ranking = #{new_santa.reindeer_ranking}; age = #{new_santa.age}"
  puts ""
end


lucy = Santa.new("nonbinary","Japanese")
p lucy.celebrate_birthday
p lucy.age
p lucy.get_mad_at("Rudolph")
p lucy.reindeer_ranking
p lucy.gender = "male"
p lucy.ethnicity

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

p santas

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

p santas

mark = Santa.new #prints 'Initializing Santa instance ...'"
mark.speak #prints "Ho, ho, ho! Haaaappy holidays!"
mark.eat_milk_and_cookies("chocolate chip cookie") #prints "That was a good chocolate chip cookie!"

