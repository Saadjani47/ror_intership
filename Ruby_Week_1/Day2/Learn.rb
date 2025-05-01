#---------------------------------------Methods---------------------------------------
# Methods are reusable pieces of code that perform a specific task.
def greet(name)
  puts "Hello, #{name}!"
end

puts greet("Saad")

def greet_with_default(name = "World")
  puts "Hello, #{name}!"
end

puts greet_with_default
puts greet_with_default("Saad")

def name_input
  puts "Please enter your name:"
  name = gets.chomp
  greet(name)
end

puts name_input

def square(number)
  number * number
end

puts square(5)

def square_root(number)
  return Math.sqrt(number)
end

puts square_root(25)
#---------------------------------------Blocks---------------------------------------
# Blocks are chunks of code that can be passed to methods.
# They are enclosed in curly braces {} or do...end.
3.times do
  puts "Hi"
end

3.times {puts "He"}

5.times do |i|
  puts i
end

5.times {|j| puts j}

def my_method
  puts "Before yield"
  yield  # Executes the block
  puts "After yield"
end

my_method do 
  puts "Inside the block" 
end

def greet
  yield("Alice")
end

greet { |name| puts "Hello, #{name}!" }
# Output: "Hello, Alice!"

def maybe_yield
  if block_given?
    yield
  else
    puts "No block given"
  end
end

maybe_yield { puts "Block given" }  # Output: "Block given"
maybe_yield                         # Output: "No block given"