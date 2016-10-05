# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

def reverse(string)
  letters = string.chars
  new_string_a = []

  letters.reverse_each { |i| new_string_a.push(i) }
  return new_string_a.join()

  #letters.at(letters.length - i)
end

reverse("abc")

# These are tests to check that your code is working. After writing
# your solution, they should all print true.


=begin
puts("\nTests for #reverse")
puts("===============================================")
puts(
    'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
)
puts(
    'reverse("a") == "a": ' + (reverse("a") == "a").to_s
)
puts(
    'reverse("") == "": ' + (reverse("") == "").to_s
)
puts("===============================================")

=end