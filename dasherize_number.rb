# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
  numArray = num.to_s.split('').map! { |e| e.to_i }
  newString = ""
  index = 0

  while index < numArray.length()
    #puts "first number #{numArray[index]}"

    if numArray[index] % 2 == 0
      newString += numArray[index].to_s
      index += 1
      next
    elsif numArray[index] % 2 != 0
      newString.concat('-') if numArray[index - 1] % 2 == 0

      newString += numArray[index].to_s

      #puts "#{index}, #{numArray.length}"
      newString.concat('-') if index < numArray.length - 1

      index += 1
    end
  end



  puts newString
  return newString

end

dasherize_number(3003367967)


# These are tests to check that your code is working. After writing
# your solution, they should all print true.


puts("\nTests for #dasherize_number")
puts("===============================================")
puts(
    'dasherize_number(203) == "20-3": ' +
        (dasherize_number(203) == '20-3').to_s
)
puts(
    'dasherize_number(303) == "3-0-3": ' +
        (dasherize_number(303) == '3-0-3').to_s
)
puts(
    'dasherize_number(333) == "3-3-3": ' +
        (dasherize_number(333) == '3-3-3').to_s
)
puts(
    'dasherize_number(3223) == "3-22-3": ' +
        (dasherize_number(3223) == '3-22-3').to_s
)
puts("===============================================")
