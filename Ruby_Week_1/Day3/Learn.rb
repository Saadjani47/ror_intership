class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def greet
    puts "Hello, my name is #{@name} and I am #{@age} years old"
  end
end
Person.new("Bob", 25).greet
person1 = Person.new("Alice", 30)
person2 = Person.new("Charlie", 35)
person1.greet
person2.greet

#getters and setters

class Human
  #attr_accessor :name
  def name 
    @name
  end

  def name=(new_name)
    @name = new_name.capitalize
  end

  def hello
    puts "Hello, my name is #{@name}"
  end

end

human = Human.new
human.name = "John"
puts human.name
human.hello

class Book
  attr_accessor :title  # Creates getter + setter for title
  attr_reader :author   # Read-only for author

  def initialize(title, author)
    @title = title
    @author = author
  end
end

book = Book.new("The Great Gatsby", "F. Scott Fitzgerald")

# Use the getter for title and author
puts "Title: #{book.title}"  
puts "Author: #{book.author}"  

# Use the setter for title
book.title = "1984"
puts "Updated Title: #{book.title}"


class User
  @@count = 0

  def initialize
    @@count += 1
  end

  def self.total_users
    @@count
  end
end

10.times do
#for i in 1..10
  User.new
end
#user1 = User.new
#user2 = User.new
#user3 = User.new

puts "Total users created: #{User.total_users}"  # Output: Total users created: 3

class Multiple
  def self.square(n)
    n * n
  end
end
  puts Multiple.square(5)


#Inheritance

class Car
  def initialize(make, model)
    @make = make
    @model = model
  end

  def start_engine
    puts "Starting the engine of the #{@make} #{@model}"
  end
end

class Toyota < Car
  def start_engine
    puts "Strating the engine of the Toyota #{@model}"
  end

  def engine_sound
    puts "Vroom Vroom!"
  end
end

class Honda < Car
  def start_engine
    puts "Starting the engine of the Honda #{@model}"
  end

  def engine_status
    puts "Engine is running smoothly!"
  end
end

car1 = Toyota.new("Toyota", "Corolla")
car2 = Honda.new("Honda", "Civic")

car1.start_engine
car1.engine_sound
car2.start_engine
car2.engine_status

class Animal
  def speak
    "Sound"
  end
end

class Dog < Animal
  def speak  # Override
    "Bark"
  end
end

class Cat < Animal
  def speak
    super + " Meow"  # "Sound Meow"
  end
end

module Loggable
  def log(message)
    puts "[LOG] #{message}"
  end
end

class Product
  include Loggable  # Adds log method
end

p = Product.new
p.log("Created")  # => "[LOG] Created"