
monthly_calendar = {
  january: 31,
  february: 27,
  march: 31,
  april: 30,
  may: 31,
  june: 30,
  july: 31,
  august: 31,
  september: 30,
  october: 31,
  november: 30,
  december: 31
}

rooms_in_house = ["guest bathroom", "master bedroom", "master bathroom", "kitchen", "guest bedroom", "childrens bedroom", "dining room", "living room"]

p monthly_calendar
monthly_calendar.each {|month, days| puts "#{days} days in #{month}"}
p monthly_calendar

p rooms_in_house
rooms_in_house.each do |room|
  puts "#{room} is a 1 word room" unless room.include?(" ")
end
p rooms_in_house

rooms_in_house.map!{|room| room.capitalize!}
p rooms_in_house


#A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
rooms_in_house.delete_if{|room| room.length <= 7}
p rooms_in_house

monthly_calendar.delete_if{|month, days| days < 30}
p monthly_calendar
monthly_calendar[:february] = 28

#A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
copied_house = rooms_in_house.dup
copied_house.select{|room| room[-1] == "m"}
p copied_house

monthly_calendar_copy = monthly_calendar.dup
monthly_calendar_copy.select{|month, _days| month.to_s.include?('e')}
p monthly_calendar_copy

#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

p copied_house.detect{|room| room.length > 11}

p monthly_calendar_copy.detect{|month, _days|month.to_s.include?('e')}

#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).

p rooms_in_house.drop_while{|room| room.include?("i")}

p monthly_calendar.drop_while{|month, _days| month.to_s.length > 6}