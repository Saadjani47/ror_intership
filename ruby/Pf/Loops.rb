=begin
i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end

while i < 10 do
  "i is #{i}"
  i += 1
end

  j = 0
  until j >= 10 do
  puts "j is #{j}"
  j += 1
end

=end

until gets.chomp == "Yes" do
 puts "do you like Pizza?"
end

for i in 0..5
  puts "#{i} zombies incoming!"
end

5.times do
  puts "Hello, world!"
end

5.times do |number|
  puts "Alternative fact number #{number}"
end
