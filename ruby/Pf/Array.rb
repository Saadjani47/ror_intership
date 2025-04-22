num_array = [1, 2, 3, 4, 5]
str_array = ["One", "Two", "Three", "Four", "Five"]

str_array[0]            #=> "This"
str_array[1]            #=> "is"
str_array[4]            #=> "array"
str_array[-1]           #=> "array"
str_array[-2]           #=> "small"
str_array.first         #=> "This"
str_array.first(2)      #=> ["This", "is"]
str_array.last(2)       #=> ["small", "array"]


a1 = Array.new               #=> []
a2 = Array.new(3)            #=> [nil, nil, nil]
a3 = Array.new(3, 7)         #=> [7, 7, 7]
a4 = Array.new(3, true)      #=> [true, true, true]

number_array = [1, 2]

number_array.push(3, 4)      #=> [1, 2, 3, 4]
number_array << 5            #=> [1, 2, 3, 4, 5]
number_array.pop             #=> 5
number_array                 #=> [1, 2, 3, 4]

num1_array = [2, 3, 4]

num1_array.unshift(1)      #=> [1, 2, 3, 4]
num1_array.shift           #=> 1
num1_array                 #=> [2, 3, 4]

a = [1, 2, 3]
b = [3, 4, 5]

a + b         #=> [1, 2, 3, 3, 4, 5]
a.concat(b)   #=> [1, 2, 3, 3, 4, 5]

[1, 2, 3, 4, 4, 4, 6, 6, 7, 8]-[4, 7]

#Array.Methods
[].empty?               #=> true
[[]].empty?             #=> false
[1, 2].empty?           #=> false

[1, 2, 3].length        #=> 3

[1, 2, 3].reverse       #=> [3, 2, 1]

[1, 2, 3].include?(3)   #=> true
[1, 2, 3].include?("3") #=> false

[1, 2, 3].join          #=> "123"
[1, 2, 3].join("-")     #=> "1-2-3"
