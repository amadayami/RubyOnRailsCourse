# Hash -> dictionary
# key value pairs
sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}
my_details = {'name' => 'fen', 'favcolor' => 'purple'}
print my_details['favcolor']

# here a,b,c are symbols (rather than Strings)
another_hash = {a: 1, b: 2, c: 3}
print another_hash[:a]
#sample_hash.keys
#sample_hash.values

my_details.each do |key, value|
  puts "The class for key is #{key.class} and the class for value is #{value.class}"
end

# adds the element with the given key and value
# can also be used to change a value
another_hash[:d] = 4
#another_hash[:d] = 5
p another_hash[:d]

mixed_hash = {a: 1, b: 2, c: "Ruby", d: 4, e: "Fen"}
p mixed_hash.select {|k, v| v.is_a?(String)}

p mixed_hash.each {|k,v| mixed_hash.delete(k) if v.is_a?(String)}