require_relative 'crud'

# this is if crud isn't in the same directory?
#$LOAD_PATH << "."
#require 'crud'

users = [
  { username: "mashrur", password: "password1" },
  { username: "jack", password: "password2" },
  { username: "arya", password: "password3" },
  { username: "jonsnow", password: "password4" },
  { username: "heisenberg", password: "password5" }
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users