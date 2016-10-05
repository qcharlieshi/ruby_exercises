# Write a function oddball_sum(numbers), which takes in an array of integers and returns the sum of all the odd elements.

def oddball_sum(array)
  #puts array.inject(0) { |sum, e| (e % 2 != 0) ? sum + e : sum }

  puts array.inject { |sum, e|
    if (e % 2 != 0)
      sum + e
    else
      sum
    end
  }


end

oddball_sum([1,2,3,4,5])