# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(number1, number2)

  #should add a switch up here
  if number1 <= number2
    i = number1
  else
    i = number2
  end


  number1Array = gcd_helper(number1)
  number2Array = gcd_helper(number2)

  number1Array.reverse_each { |e| if number2Array.include?(e)
                                    return e
                                  end
                            }

end


def gcd_helper(number)
  count = 1
  numberArray = []

  while count <= number
    #puts count
    if number % count == 0
      numberArray.push(count)
    end

    count += 1
  end

  return numberArray

end



greatest_common_factor(16, 24)

=begin

#much more efficient
def greatest_common_factor(number1, number2)
  # start i at smaller of number1, number2
  i = nil
  if number1 <= number2
    i = number1
  else
    i = number2
  end

  while true
    if (number1 % i == 0) && (number2 % i == 0)
      return i
    end

    i -= 1
  end
end



# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #greatest_commmon_factor")
puts("===============================================")
puts(
    'greatest_common_factor(3, 9) == 3: ' +
        (greatest_common_factor(3, 9) == 3).to_s
)
puts(
    'greatest_common_factor(16, 24) == 8: ' +
        (greatest_common_factor(16, 24) == 8).to_s
)
puts(
    'greatest_common_factor(3, 5) == 1: ' +
        (greatest_common_factor(3, 5) == 1).to_s
)
puts("===============================================")
=end