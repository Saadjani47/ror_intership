#---------------------------------Enumerable Methods--------------------------------
speed = [10, 20, 30, 40, 50]
speed.each do
  |s| puts s + 1
end

speed.map do
  |s| puts  s * s
end

odds = [1, 2, 3, 4].reject { |n| n.even? }
puts odds.inspect  # Output: [1, 3]

first_even = [1, 3, 4, 5].find { |n| n.even? }
puts first_even  # Output: 4

sum = [1, 2, 3].reduce(0) { |total, n| total + n }
puts sum  # Output: 6

# Shorter syntax for simple operations
product = [1, 2, 3, 4].reduce(:*)
puts product  # Output: 24

all_positive = [1, 2, 3].all? { |n| n > 0 }
puts all_positive  # Output: true

any_negative = [1, -2, 3].any? { |n| n < 0 }
puts any_negative  # Output: true

numbers = [1, 2, 3, 4, 5]
grouped = numbers.group_by { |n| n.even? }
puts grouped.inspect
# Output: {false=>[1, 3, 5], true=>[2, 4]}

words = ["apple", "pear", "banana"]
sorted = words.sort_by { |word| word.length }
puts sorted.inspect  # Output: ["pear", "apple", "banana"]