puts ("enter num between 1 to 7")
day = gets.chomp()

day_name = ""
case day
when "1"
  day_name = "Monday"
when "2"
  day_name = "Tuesday"
when "3"
  day_name = "Wednesday"
when "4"
  day_name = "Thrusday"
when "5"
  day_name = "Friday"
when "6"
  day_name = "Saturday"
when "7"
  day_name = "Sunday"
else
  puts "invalid input !"
end

puts ("day is " + day_name)
