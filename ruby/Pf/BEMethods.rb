def even_odd(number)
  unless number.is_a? Numeric
    return "A number was not entered."
  end

  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(20) 
puts even_odd("Ruby") 

def return_squared(number)
  number * number
end

x = return_squared(20) 
y = 100
sum = x + y 

puts "The sum of #{x} and #{y} is #{sum}."

phrase = ["be", "to", "not", "or", "be", "to"]

puts phrase.reverse.join(" ").capitalize
#=> "To be or not to be"

puts 5.even?  #=> false
puts 6.even?  #=> true
puts 17.odd?  #=> true

puts 12.between?(10, 15)  #=> true

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
#Each method
friends.each{|friend| puts "Hello " + friend + "!"}

array_num = [1, 2]

array_num.each do |num|
  num *= 2
  puts "The number is #{num}."
end


invited_list = []
for friend in friends do
  if friend != 'Brain'
    invited_list.push(friend)
  end
end

puts invited_list
#friends.reject { |friend| friend == 'Brian' } #Reject Method
#friends.select { |friend| friend != 'Brian' } #Select Method
responces = ["Saad" => "yes", "Ali" => "no", "Khokhar" => "yes"]
responces.select{|person, responce| responce == "yes"}

friends.map { |friend| friend.upcase } #Map Method
puts friends
my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

my_order.map { |item| item.gsub('medium', 'extra large') }
#=> ["extra large Big Mac", "extra large fries", "extra large milkshake"]
puts my_order

salaries = [1200, 1400, 2000, 1800]
salaries.map {|salary| salary - 800}

puts salaries

#Reduce Method
#before reduce
my_numbers = [5, 6, 7, 8]
sum = 0

my_numbers.each { |number| sum += number }

sum
#after reduce
my_numbers.reduce{|sum, number| sum + number}#output 26

my_numbers.reduce(1000) { |sum, number| sum + number }#output 1026

#Bang Method
#Before Bang
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
#After Bang
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map! { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

friends
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`
friends.map! { |friend| friend.downcase }

friends
#=> `['sharon', 'leo', 'leila', 'brian', 'arun']`
