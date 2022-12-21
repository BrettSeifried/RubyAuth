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

# # Tests the original example
# new_password = create_hash_digest("password1")
# puts new_password
# # Below will comeback true if they match
# puts new_password == "password1"

def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    # creates a hash of the password
    user_record[:password] = create_hash_digest(user_record[:password])
  end
  # Return is implied
  list_of_users
end

puts create_secure_users(users)