#Write a method that finds the median of a given array of integers. If the array has an odd number of integers,
# return the middle item from the sorted array. If the array has an even number of integers, return the average of
# the middle two items from the sorted array.

a1 = [1, 2, 3, 4, 5, 6, 1]

def find_median(array)
  array.sort!
  if array.length % 2 == 0
    return ((array[array.length/2] + array[(array.length/2) - 1]) / 2.0)
  else
    return array[(array.length/2).ceil]
  end
end

print find_median(a1)