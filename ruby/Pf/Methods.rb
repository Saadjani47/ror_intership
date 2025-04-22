def my_name(name)
  "hello " + name + "!"
end

puts my_name("Muhammad Saad")

def whats_up
  "Whatsssuppppp"
end

puts whats_up

def greet(stranger = "Unknown Person")
  "Hello #{stranger} .How are you?"
end

puts greet("Muhammad Saad")
puts greet

def evenodd(number)
  if number % 2 == 0
    "This is an even number"
  else
    "This is an odd number"
  end
end

puts evenodd(16)
puts evenodd(17)
  
