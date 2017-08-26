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