#Question 1
def method_each(array)
  array.map { |element| yield(element) }
end

result = method_each([10, 20, 30, 40]) { |x| x * x }
puts result.inspect

#Question 2
product = [1, 2, 3, 4].reduce(0) { |total, n| total + n}
puts product
products = [1, 2, 3, 4].reduce(:+)
puts products


