require 'io/console'

  def correct_login(login,keys)
      keys.select do|status,hash|
          return person = {status:status, login:login, password:hash[login]} if hash[login] != nil
      end
    return false
  end

def login(keys)
  cls
  puts "Hello its game 'Life of dogs and hamster in korea "
  puts "Enter your login"
    while login = gets.chomp.to_sym
    if login.empty?
      puts "Empty line, try again: "
    elsif person = correct_login(login,keys)
      cls
      puts "Enter your password "
          while password = STDIN.noecho(&:gets).chomp
          if password.empty?
            puts "Empty line, try again: "
          elsif password == person[:password]
            true_person = person
            cls
            puts puts "Hello #{person[:login]}, your are #{person[:status]}"
            break
          else
            puts "Wrong password "
          end
    end
    break
    else
      puts "Login does not exist"
    end
    end
    return true_person
end

def cls
  system 'clear' or system 'cls'
end
