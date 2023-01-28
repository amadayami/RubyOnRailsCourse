# bcrypt and Salts
# A salt is a random chunk of data that is added to the password before it's hashed.

# in local, use 'gem install bcrypt'

# require 'bundler/inline'

# gemfile true do
#   source 'https://github.com/bcrypt-ruby/bcrypt-ruby'
#   gem 'bcrypt'
# end

require 'bcrypt'
 
my_password = BCrypt::Password.create("my password")
  #=> "$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa"
 
puts my_password
puts my_password.version              #=> "2a"
puts my_password.cost                 #=> 10
puts my_password == "my password"     #=> true
puts my_password == "not my password" #=> false
 
my_password = BCrypt::Password.new("$2a$12$aL2rByhMqBeAeBa3vrqdN./wqjHMjlFG.pxT0YzTq6dAzV9Bos3/2")
puts my_password == "my password"     #=> true
# my_password == "not my password" #=> false