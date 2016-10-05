#Create a method that takes in an Array of Strings and uses inject to return the concatenation of the strings.

concatenate = ["Yay ", "for ", "strings!"]
# => "Yay for strings!"

puts concatenate.inject { |sum, n| sum + n}
puts concatenate.reduce(:+)