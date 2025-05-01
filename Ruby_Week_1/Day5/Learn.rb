module  Greetable
  def initialize(name)
    @name = name
  end
  def greet
    "Hello, greetings from #{@name}!"
  end
end

class Person
  include Greetable
end

class Robot
  extend Greetable
end
# The Robot class can use the greet method without an instance
person = Person.new("Muhammad Saad")
puts person.greet
puts Robot.greet

module A
  def identify
    "A"
  end
end

module B
  def identify
    "B"
  end
end

class Test
  include A
  include B
end

test = Test.new
puts test.identify
# This will call the method from the last included module (B)
class Test2
  prepend A
  include B
end

test2 = Test2.new
puts test2.identify

#Exception Handling
def raise_and_rescue
  begin
    raise "An error occurred!"
  rescue 
    puts "Rescued from an error!"
  end
  puts "After the rescue block"
end

raise_and_rescue

