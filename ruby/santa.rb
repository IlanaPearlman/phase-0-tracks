=begin
A speak method that will print "Ho, ho, ho! Haaaappy holidays!" (Santa has been working on being more inclusive.)
An eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!"
An initialize method that prints "Initializing Santa instance ...".
Add a bit of code below your class declaration to check that you're able to initialize a Santa instance and call its methods.
=end

class Santa

  def initialize
    p "Initializing Santa instance ..."
  end

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}!"
  end

end

mark = Santa.new #prints 'Initializing Santa instance ...'"
p mark.speak == "Ho, ho, ho! Haaaappy holidays!"
p mark.eat_milk_and_cookies("chocolate chip cookie") == "That was a good chocolate chip cookie!"