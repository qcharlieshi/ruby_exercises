#Write a method named crazy_sum(numbers) that takes an array of numbers. crazy_sum should multiply each number
# in the array by its position in the array, and return the sum.

a1 = [1, 2, 3, 4, 5]
a2 = [1, 2, 2]

def crazy_sum(array)
  returnArray = []

  array.each_with_index { |v, i| returnArray.push(v * i)}
  sum = returnArray.inject { |sum, n| sum + n }

  return sum
end

puts crazy_sum(a2)