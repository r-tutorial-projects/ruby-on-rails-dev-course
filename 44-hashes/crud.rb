require 'bcrypt'

module Crud
  p "loaded CRUD"

  def self.create_hashed_pass(pass)
    BCrypt::Password.create pass
  end

  def self.verify_hash(hash)
    BCrypt::Password.new hash
  end

  def self.create_secure_users(list)
    list.each { |user| user[:password] = create_hashed_pass user[:password] }
  end

  def self.authenticate(username, password, user_list)
    user = user_list.select { |user| username == user[:username] }.select { |user| verify_hash(user[:password]) == password }
               .first
    if user == nil
      "Credentials aren't correct"
    else
      user
    end
  end
end
