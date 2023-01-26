# use elsif not else if
puts "What is your name?"
name = gets.chomp
if name == "Mashrur"
  puts "you are the instructor"
elsif name == "Fen"
  puts "hi fen :)"
else
  puts "hi user"
end

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
puts "What do you want to do with the numbers?"
puts "Enter 1 for multiplication, 2 for addition, and 3 for subtraction"
choice = gets.chomp.to_i

if choice == 1
  puts "You have chosen to multiply"
  puts multiply(first_num, second_num)
elsif choice == 2
  puts "You have chosen to add"
  puts add(first_num, second_num)
elsif choice == 3
  puts "You have chosen to subtract"
  puts sub(first_num, second_num)
else
  puts "That's not one of the options"
end  