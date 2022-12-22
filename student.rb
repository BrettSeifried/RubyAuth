require_relative 'crudModule'

class Student
# New section, INCLUDE THE MODULE
include Crud

# give both getters and setters
  attr_accessor :first_name, :last_name, :username, :email, :password

# Intializer method
  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end



# Assumed method
  def to_s
  "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, Email: #{@email}"
  end
# Put all methods to interact with the Class in the class ***********
end

# create an object of the class
brettford = Student.new("Brettford", "Seifried", "RubyDev", "seifriedbrett@gmail.com", "password1")
john = Student.new("John", "Doe", "ReactDev", "johndoe@gmail.com", "password2")

# New section here
  # .password works because we have the getter and setter
hashed_password = brettford.create_hash_digest(brettford.password)

puts hashed_password