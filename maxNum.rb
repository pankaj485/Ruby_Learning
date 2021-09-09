def calcMaxNum(num1, num2, num3)
  if num1 > num2 and num1 > num3
    return num1
  elsif num2 > num1 and num2 > num3
    return num2
  else
    return num3
  end
end

puts calcMaxNum(4, 5, 6)
