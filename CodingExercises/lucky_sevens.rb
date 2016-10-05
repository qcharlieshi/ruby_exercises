#Write a function lucky_sevens?(numbers), which takes in an array of integers and returns true if any three consecutive elements sum to 7.

def lucky_sevens?(array)
  array.each_with_index { |k, v| if k < array.length - 2
                                   return true if (v + array[k + 1] + array[k + 2]) == 7
                                 else
                                   return false
                                 end
                        }
end

a1 = [2,1,5,1,0]
a2 = [3,4,3,4]
puts lucky_sevens?(a2)