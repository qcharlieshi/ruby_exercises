# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

=begin
#Ruby Way
def num_repeats(string)
  string_a = string.chars
  puts string_a.select { |i| string_a.count(i) > 1 }.uniq.length
end
=end

#CS Way
def num_repeats(string)
  string_a = string.chars
  count_index = 0
  repeated_letters = 0

  while count_index > string_a.length
    compare = string_a[count_index]




    count_index += 1
  end


end

def isuniq(string_array, compare)



  num_repeats("abdbc")


=begin
# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts("\nTests for #num_repeats")
puts("===============================================")
puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
puts("===============================================")
=end