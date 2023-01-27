a = [1,2,3,4,5,6,7,8,9]
print a
puts ""
print a.last
puts ""

x = 1..100
xs = x.to_a.shuffle
# ! is used to mutate the caller (so x.to_a.shuffle! would mutate the .to_a instead of x)
# this can be equivalent to x = x.reverse

b = ("a".."e").to_a
b << "f" # adds to the end of the array
print b
print b.last
print b.first
b.unshift("z") # adds to the beginning of the array
print b.first
b.append("g")
print b

b.uniq # shows the unique elements of an array
b.uniq! # mutates the array with the !

puts b.include?("a")
puts b.include?("m")

c = (1..10).to_a
c = c.push(11)
ci = c.pop # .pop returns the item removed
print c
print ci
# push/pop are LIFO

puts ""
print c.join("-")
d = c.join(",")
print d
d = d.split(",")
print d

# %w turns into an array of strings
e = %w(ruby sure is neato)
print e
e.each do |food|
  print food + " "
end
puts ""
# e.each {|food| print food + " "}

f = (1..100).to_a.shuffle
print f.select{|number| number.odd?}