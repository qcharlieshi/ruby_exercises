# Write a method that takes in a string and an array of indices in the
# string. Produce a new string, which contains letters from the input
# string in the order specified by the indices of the array of indices.
#
# Difficulty: medium.

def scramble_string(string, positions)
  newString = ""
  positions.each { |e| newString.concat(string[e]) }
  puts newString
  return newString

end

=begin
   #lettersArray = []

   #lettersArray = string.each_char { |e| lettersArray.push(e) }

  lettersArray = string.each_char {}


  newString = []
  newString = positions.map { |e| newString[e] = lettersArray[e] }

  puts newString

  return  newString.join()
=end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #scramble_string")
puts("===============================================")
puts(
    'scramble_string("abcd", [3, 1, 2, 0]) == "dbca": ' +
        (scramble_string("abcd", [3, 1, 2, 0]) == "dbca").to_s
)
puts(
    'scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vkaorm"): ' +
        (scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vkaorm").to_s
)
puts("===============================================")