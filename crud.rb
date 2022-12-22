require 'bcrypt'

users = [
  { username: "brettford", password: "password1"},
  { username: "christina", password: "password2"},
  { username: "brooke", password: "password3"},
  { username: "archer", password: "password4"},
  { username: "rue", password: "password5"},
]

# If there is a group of methods. can be made into a MODULE to be used as a tool kit
  # can mix in a module into a class to use those methods from the MODULE in the class.
  # MODULES ARE TOOL KITS
def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    # creates a hash of the password
    user_record[:password] = create_hash_digest(user_record[:password])
  end
  # Return is implied
  list_of_users
end

# create new users array with hash passwords
new_users = create_secure_users(users)
puts new_users

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

# Test to see if auth_user works.
puts auth_user("brettford", "password1", new_users)
# # Test if wrong password is entered
# puts auth_user("brettford", "password", new_users)