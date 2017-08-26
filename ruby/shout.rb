=begin
module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_hapily(words)
    words + "!" + " :) :) :)"
  end

end



p Shout.yell_angrily("bummer")

p Shout.yell_hapily("yay")
=end

#mixin version of shout module
module Shout

  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_hapily(words)
    words + "!" + " :) :) :)"
  end

end

class Team
  include Shout
end

class ElementarySchoolRoom
  include Shout
end

warriors = Team.new
p warriors.yell_hapily("we won")

first_grade = ElementarySchoolRoom.new
p first_grade.yell_angrily("recess is over")