require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

module Crud
    require 'bcrypt'
    puts "Module CRUD activated"
    
    def create_hash_digest(password)
      BCrypt::Password.create(password)
    end
    
    # these methods would use useful as a module/toolkit
    def verify_hash_digest(password)
      BCrypt::Password.new(password)
    end


    # when you call a method with its class name, it's called a class method. ex. Crud.method_name()
    # you could also use self.create_secure_users
    def create_secure_users(list_of_users)
      list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    # remember: return is implied here since it is the last line
    list_of_users
    end
    
    def authenticate_user(username, password, list_of_users)
      list_of_users.each do |user_record|
        if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
          return user_record
        end
     end
    "Credentials were not correct"
    end
end