# / does integer division by default
puts 10 / 2
puts 10 / 4

puts 10.0 / 4 #prints 2.5
puts 10.to_f / 4 #prints 2.5
puts (10 / 4).to_f #prints 2.0

# you can't implicitly convert String into Integer
# so "5" * "5" does not work
# and 2 * "5" does not work
# BUT "5" * 2 does work

#puts "-"*20

20.times {print "-"}
puts ""
rep = 10
rep.times { puts rand(10) }

20.times {print "-"}
puts ""
# this is me trying a thought out
#dierolls = [rand(6), rand(6), rand(6), rand(6)]
#puts dierolls
def createstat
  dierolls = [rand(1..6), rand(1..6), rand(1..6), rand(1..6)]
  dierolls.delete_at(dierolls.index(dierolls.min))
  dierolls.inject(0, :+)
end  
#print "Your stat roll is" + createstat.to_s + '\n'
print "Your stat roll is #{createstat.to_s} \n"

20.times {print "-"}
puts #does the same as puts ""

# i'm off my tangent now
# if a string cannot be converted to an integer, to_i returns 0
# homework assignment: create a calculator

# in the solution, they convert everything to a float, but I included the integer AND float division instead

puts "Simple calculator"
puts "Enter the first number"
num_1 = gets.chomp.to_i
puts "Enter the second number"
num_2 = gets.chomp.to_i

puts "The first number multiplied by the second number is #{num_1 * num_2}"

puts "The first number divided by the second number is #{num_1 / num_2} or #{(num_1.to_f) / num_2}"

puts "The first number minus the second number is #{num_1 - num_2}"

puts "The first_number added to the second number is #{num_1 + num_2}"

puts "The modulus of the first number and the last number is #{num_1 % num_2}"