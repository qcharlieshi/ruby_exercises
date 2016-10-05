# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j2]`.
#
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.
#
# Difficulty: 2/5


#write this more efficently
def nearest_larger(arr, idx)
  value = arr[idx]

  new_upper_index = idx + 1
  new_lower_index = idx - 1
  upper_index_value = 0
  lower_index_value = 0

  while new_upper_index < (arr.length)
    if arr[new_upper_index] > value
      upper_index_value = arr[new_upper_index]
      break
    end

    new_upper_index += 1
  end

  while new_lower_index >= 0
    if arr[new_lower_index] > value
      lower_index_value = arr[new_lower_index]
      break
    end

    new_lower_index -= 1
  end


  if(upper_index_value == 0 && lower_index_value == 0)
    return nil
  elsif(upper_index_value == 0)
    return new_lower_index
  elsif(lower_index_value == 0)
    return new_upper_index
  else
    if((new_upper_index - idx) > (idx - new_lower_index))
      return new_lower_index
    elsif((idx - new_lower_index) > (new_upper_index - idx))
      return new_upper_index
    else
      return new_lower_index
    end
  end

end



puts("Tests for #nearest_larger")
puts("===============================================")
puts "nearest_larger([2,3,4,8], 2) == 3: "  + (nearest_larger([2,3,4,8], 2) == 3).to_s
puts "nearest_larger([2,8,4,3], 2) == 1: "  + (nearest_larger([2,8,4,3], 2) == 1).to_s
puts "nearest_larger([2,6,4,8], 2) == 1: "  + (nearest_larger([2,6,4,8], 2) == 1).to_s
puts "nearest_larger([2,6,4,6], 2) == 1: "  + (nearest_larger([2,6,4,6], 2) == 1).to_s
puts "nearest_larger([8,2,4,3], 2) == 0: "  + (nearest_larger([8,2,4,3], 2) == 0).to_s
puts "nearest_larger([2,4,3,8], 1) == 3: "  + (nearest_larger([2,4,3,8], 1) == 3).to_s
puts "nearest_larger([2, 6, 4, 8], 3) == nil: "+ (nearest_larger([2, 6, 4, 8], 3) == nil).to_s
puts "nearest_larger([2, 6, 9, 4, 8], 3) == 2: "+ (nearest_larger([2, 6, 9, 4, 8], 3) == 2).to_s
puts("===============================================")