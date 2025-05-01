#-------------------------------------------------Encapsulation--------------------------------------------------------
class BankAccount
  def initialize(balance)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if amount <= @balance
      @balance -= amount
      log_transaction("withdraw", amount)
    else
      puts "Insufficiant amount"
    end
  end

  protected
  def balance
    @balance
  end

  private
  def log_transaction(type, amount)
    puts "Transaction: #{type} of #{amount}. New balance is #{@balance}"
  end
end

account = BankAccount.new(1000)
account.deposit(500)
account.withdraw(200)
account.withdraw(2000)
#puts account.balance
#puts account.log_transaction("withdraw", 200)

#-------------------------------------------------Inheritance--------------------------------------------------------
class Animal
  def speak
    "Some sound"
  end
end

class Dog < Animal
  def speak
    "Bark!"
  end
end

class Cat < Animal
  def speak
    "Meow!"
  end
end

animals = [Dog.new, Cat.new]
animals.each { |animal| puts animal.speak }

#-------------------------------------------------Method Overriding--------------------------------------------------------
class Bird < Animal
  def speak
    super + " Chirp!"
  end
end

puts Bird.new.speak

#-------------------------------------------------Inheritance Chain--------------------------------------------------------
module Flyable
  def fly
    "Flying high!"
  end
end

class Bat < Animal
  include Flyable
end

bat = Bat.new
puts bat.speak  
puts bat.fly   

#-------------------------------------------------Polymorphism--------------------------------------------------------
class Vehicle
  def move
    "Moving"
  end
end

class Car < Vehicle
  def move
    "Driving"
  end
end

class Bike < Vehicle
  def move
    "Pedaling"
  end
end

#Duck typing
class Plane 
  def move 
    "Flying"
  end
end

vechicles = [Car.new, Bike.new, Plane.new]
vechicles.each { |vehicle| puts vehicle.move }
