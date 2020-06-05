password = [nil]

def set_password(pswd)
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  pswd[0] = new_password
end

def verify_password(pswd)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == pswd[0]
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password[0]
  set_password(password)
end

verify_password(password)
