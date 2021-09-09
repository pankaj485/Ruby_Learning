puts "enter first num:"
first_num = gets.chomp().to_f

puts "enter operators  \"+\",\"-\",\"*\",\"/\" "
operator = gets.chomp()

puts "enter second num:"
second_num = gets.chomp().to_f

if operator == "+"
  puts(first_num + second_num)
elsif operator == "-"
  puts(first_num - second_num)
elsif operator == "*"
  puts(first_num * second_num)
elsif operator == "/"
  puts(first_num / second_num)
else
  puts "invalid input !"
end
