require 'bcrypt'

module Crud
  puts "loaded CRUD"

  def create_hashed_pass(pass)
    BCrypt::Password.create pass
  end

  def verify_hash(hash)
    BCrypt::Password.new hash
  end

  def create_secure_users(list)
    list.each { |user| user[:password] = create_hashed_pass user[:password] }
  end

  def authenticate(username, password, user_list)
    user = user_list.select { |user| username == user[:username] }.select { |user| verify_hash(user[:password]) == password }
               .first
    if user == nil
      "Credentials aren't correct"
    else
      user
    end
  end
end
