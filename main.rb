# Require a file
require_relative 'crudModule'

# Alternate method
  # # If in another directory
    # $LOAD_PATH << "."
    # require 'crudModuel'

users = [
  { username: "brettford", password: "password1"},
  { username: "christina", password: "password2"},
  { username: "brooke", password: "password3"},
  { username: "archer", password: "password4"},
  { username: "rue", password: "password5"},
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users