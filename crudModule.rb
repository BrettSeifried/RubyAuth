# Create a module
module Crud
  require 'bcrypt'

  #test if module works in main.rb
  puts "Module works"

  # If there is a group of methods. can be made into a MODULE to be used as a tool kit
  # can mix in a module into a class to use those methods from the MODULE in the class.
  # MODULES ARE TOOL KITS

  # see line 21 below for why we added self.
  def self.create_hash_digest(password)
  BCrypt::Password.create(password)
  end

  def self.verify_hash_digest(password)
  BCrypt::Password.new(password)
  end

# Added self. after working on line 17 of main.rb
  # Calling a method with it's class name
  # aka CLASS METHOD
    # can also use Crud.
  def self.create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    # creates a hash of the password
    user_record[:password] = create_hash_digest(user_record[:password])
  end
  # Return is implied
  list_of_users
  end

  # Authenticate the Password

  def auth_user(username, password, list_of_users)
    # loop through each record
    list_of_users.each do |user_record|
      # Compare if username from array AND hash password matches password hash from user input
      if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
      return user_record
      end
    end
    "Crednetials were not correct"
  end
end