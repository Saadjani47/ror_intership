my_hash = {
  "a random word" => "ahoy",
  "Dorothy's math test score" => 94,
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {}
}
puts my_hash

my_hash1 = Hash.new
puts my_hash1               #=> {}

#hash = { 9 => "nine", :six => 6 }

shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

shoes["summer"]   #=> "sandals"
shoes["hiking"]   #=> nil
#shoes.fetch("hiking")   #=> KeyError: key not found: "hiking"
#shoes.fetch("hiking", "hiking boots") #=> "hiking boots"
shoes["fall"] = "sneakers"
puts shoes     #=> {"summer"=>"sandals", "winter"=>"boots", "fall"=>"sneakers"}
shoes["summer"] = "flip-flops"
puts shoes     #=> {"summer"=>"flip-flops", "winter"=>"boots", "fall"=>"sneakers"}
shoes.delete("summer")    #=> "flip-flops"
puts shoes                     #=> {"winter"=>"boots", "fall"=>"sneakers"}


books = {
  "Infinite Jest" => "David Foster Wallace",
  "Into the Wild" => "Jon Krakauer"
}

puts books.keys      #=> ["Infinite Jest", "Into the Wild"]
puts books.values    #=> ["David Foster Wallace", "Jon Krakauer"]


hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
puts hash1.merge(hash2)      #=> { "a" => 100, "b" => 254, "c" => 300 }


# 'Rocket' syntax
american_cars = {
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}
# 'Symbols' syntax
japanese_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}
puts american_cars[:ford]    #=> "Mustang"
puts japanese_cars[:honda]   #=> "Accord"


