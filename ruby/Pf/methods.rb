def greet(name)
  puts "Hello #{name}"
end
greet("Saad")
#-------------------------------------------------
def calculate_ammount(amount, rate = 0.5)
  amount * rate
end
puts calculate_ammount(100)
puts calculate_ammount(100, 0.70)
#------------------------------------------------
def split_name(full_name)
  first, last = full_name.split
  [first, last]
end
first_name , last_name = split_name("Muhammad Saad")
puts first_name
puts last_name
#-------------------------------------------------

