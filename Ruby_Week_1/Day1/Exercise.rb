# Question 1
def even_numbers(numbers)
  numbers.select { |number| number % 2 == 0}
end
def odd_numbers(numbers)
  numbers.select { |number| number % 2 != 0}
end
num_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
even_array = even_numbers(num_array)
odd_array = odd_numbers(num_array)

puts "The even numbers are: #{even_array}"
puts "The odd numbers are: #{odd_array}"

# Question 2
puts "Write a Word: "
text = gets.chomp
if(text == text.reverse)
  puts "#{text} is a palindrome"
else
  puts "#{text} is not a palindrome"
end

