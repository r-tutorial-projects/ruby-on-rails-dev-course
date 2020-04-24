require 'bcrypt'

class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  @first_name
  @last_name
  @email
  @username = 'Unknown'
  @password

  def initialize(first_name, lastname, username, email, password)
    @first_name = first_name
    @last_name = lastname
    @username = username
    @email = email
    @password = BCrypt::Password.create password
  end

  def to_s
    "(first name: #{first_name}, last name: #{last_name}, username: #{username}, email: #{email}, " +
        "password-checksum: #{password.checksum})"
  end

end

student = Student.new 'First', 'Last', 'User', 'Email', '333'
student.first_name = "rubeen".capitalize

puts student
