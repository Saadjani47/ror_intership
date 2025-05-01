#-----------------------------------------Strings in Ruby
single_quoted = 'Hello'
double_quoted = "World"

# String interpolation (only works with double quotes)
greeting = "#{single_quoted}, #{double_quoted}!"
puts greeting 

# Common string methods
puts greeting.length      # 13
puts greeting.upcase      # "HELLO, WORLD!"
puts greeting.downcase    # "hello, world!"
puts greeting.reverse     # "!dlroW ,olleH"
puts greeting.include?("World")  # true
greeting2 = single_quoted + ", " + double_quoted + "!"
puts greeting2  # "Hello, World!"
puts greeting[0..4]  # "Hello"
puts greeting[7..11]  # "World"
words = greeting.split(", ")
puts words.inspect  # ["Hello", "World!"]
joined_string = words.join(" ")
puts joined_string  # "Hello World!"
formatted_string = "Hello, %s!" % double_quoted
puts formatted_string  # "Hello, World!"
puts single_quoted == "Hello"  # true

#-----------------------------------------Arrays in Ruby
empty_array = []
numbers = [1, 2, 3 ,4 , 5]
mixed = [1, "two", 3.0, [1, 2, 3]]

puts numbers.inspect  # [1, 2, 3, 4, 5]
puts mixed.inspect  # [1, "two", 3.0, [1, 2, 3]]
puts numbers.length  # 5
puts numbers.include?(3)  # true
puts numbers.join(", ")   # "1, 2, 3, 4, 5, 6"
# Accessing elements
puts numbers[0]  # 1
puts numbers[-1]  # 5
puts numbers[1..3].inspect  # [2, 3, 4]
# Adding elements
numbers << 6
numbers.push(7)
numbers.unshift(0)
numbers.insert(3, 3.5)
puts numbers.inspect  # [0, 1, 2, 3.5, 3, 4, 5, 6, 7]
# Removing elements
numbers.delete(3.5)
numbers.delete_at(0)
numbers.pop
numbers.shift
puts numbers.inspect  # [1, 2, 3, 4, 5, 6]

# Iterating over arrays
numbers.each do |number|
  puts number
end

# Using map to create a new array
squared_numbers = numbers.map { |number| number ** 2 }
puts squared_numbers.inspect  # [1, 4, 9, 16, 25, 36]
# Using select to filter elements
even_numbers = numbers.select { |number| number.even? }
puts even_numbers.inspect  # [2, 4, 6]

#-----------------------------------------Hashes in Ruby
person = {
  name: "John",
  age: 30,
  city: "New York"
}


puts person.inspect
puts person[:name]
puts person["age"]
puts person.fetch(:age)
puts person[:city]
puts person.keys.inspect
puts person.values.inspect
puts person.length
puts person.include?(:name)
puts person.include?(:country)
person[:occupation] = "Engineer"
person[:age] = 31
person.delete(:city)


#------------------------------------------Example in Ruby
# Create an array of hashes representing people
people = [
  { name: "Alice", age: 28, occupation: "Engineer" },
  { name: "Bob", age: 35, occupation: "Teacher" },
  { name: "Charlie", age: 22, occupation: "Student" },
  { name: "Diana", age: 42, occupation: "Doctor" }
]

# Loop through each person and print information
people.each do |person|
  puts "Name: #{person[:name]}"
  puts "Age: #{person[:age]}"
  
  # Conditional based on age
  if person[:age] < 25
    puts "Status: Young #{person[:occupation]}"
  elsif person[:age] > 40
    puts "Status: Experienced #{person[:occupation]}"
  else
    puts "Status: #{person[:occupation]}"
  end
  
  puts "-" * 20
end

# Filter people over 30
over_30 = people.select { |person| person[:age] > 30 }
puts "People over 30: #{over_30.map { |p| p[:name] }.join(', ')}"