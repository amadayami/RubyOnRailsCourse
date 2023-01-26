# definition of method has to come before a call to it
def multiply(first_num, second_num)
  # return is implied at end or can use return keyword
  first_num * second_num.to_f
end

def divide(first_num, second_num)
  first_num / second_num.to_f
end

def add(first_num, second_num)
  first_num + second_num.to_f
end

def sub(first_num, second_num)
  first_num - second_num.to_f
end

def mod(first_num, second_num)
  first_num % second_num.to_f
end


puts "Enter first number"
first_num = gets.chomp.to_i
puts "Enter second number"
second_num = gets.chomp.to_i

puts "First number multiplied by the second number is #{multiply(first_num, second_num)}"

puts "First number divided by the second number is #{divide(first_num, second_num)}"

puts "First number added to second number is #{add(first_num, second_num)}"

puts "First number minus second number is #{sub(first_num, second_num)}"

puts "First number mod second number is #{mod(first_num, second_num)}"