
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

rooms_in_house = ["kitchen", "guest bathroom", "master bedroom", "master bathroom", "guest bedroom", "childrens bedroom", "dining room", "living room"]

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
