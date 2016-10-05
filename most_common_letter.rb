# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.



def most_common_letter(string)
  wordsArray = string.split(' ')

  uniqueLetters = Hash.new()
  wordsArray.each { |e| e.each_char { |x| if uniqueLetters.include?(x)
                                            uniqueLetters[x] += 1
                                          else
                                            uniqueLetters[x] = 1
                                          end
                                    } }

  return uniqueLetters.max_by { |k, v| v }

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #most_common_letter")
puts("===============================================")
puts(
    'most_common_letter("abca") == ["a", 2]: ' +
        (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
    'most_common_letter("abbab") == ["b", 3]: ' +
        (most_common_letter('abbab') == ['b', 3]).to_s
)
puts("===============================================")