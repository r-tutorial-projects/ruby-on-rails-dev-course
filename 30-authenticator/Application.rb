USERS = [
    {username: 'rubeen', password: '333'},
    {username: 'tester', password: '123'}
]

def getUser(user, pass)
  USERS.select { |val| val[:username] == user && val[:password] == pass }.first
end

def login(try)
  p 'Please login'
  print 'Username: '
  user = gets.chomp
  print 'Password: '
  pass = gets.chomp
  if getUser user, pass
    p getUser user, pass
  else
    if try == 5
      exit 3
    end
    p "Enter q to quit application, any other key else"
    key = gets.chomp
    if key == 'q'
      exit 0
    else
      login try + 1
    end
  end

end

login 0
