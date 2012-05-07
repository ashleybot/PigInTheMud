puts "The Ultimate Fibonator"

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
# find the sum of the even-valued terms.

def GetMeMyNumber(first, second)
  first + second
end

sum = 0
first = 0
second = 1
i = GetMeMyNumber(first, second)
while  i <= 4000000 do
  puts i
  sum += i if i.even?
  first = second
  second = i
  i = GetMeMyNumber(first, second)
end

puts "TOTAL #{sum}"
