class Student
  attr_accessor :first_name, :last_name, :email, :username
  
  # @first_name
  # @last_name
  # @email
  # @username
  # @password

  # def first_name=(name)
  #   @first_name = name
  # end

  # def first_name
  #   @first_name
  # end

  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
    @password = password
  end
  
  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}"
  end
end


# fen.first_name = "Fen"
# fen.last_name = "Michael"
# fen.email = "fen@armadillo-codes.com"
# puts fen
# p fen.first_name
fen = Student.new("Fen", "Michael", "fenuser", "fen@armadillo-codes.com", "password2")
puts fen