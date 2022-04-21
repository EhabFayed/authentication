users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]
def auth(username, password,listofusers)
    listofusers.each do |user_record|
        if user_record[:username] == username &&user_record[:password] == password
            return user_record
        end
    end
    "not true"
end
puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"
attempt=1
while attempt < 4
    puts "Enter user name "
    user_input=gets.chomp
    puts "Enter password"
    password=gets.chomp
    data=auth(user_input,password,users)
    puts data
    puts "Press n to quit or any other key to continue: "
    input = gets.chomp.downcase
    break if input == "n"
    attempt += 1
end
    
        