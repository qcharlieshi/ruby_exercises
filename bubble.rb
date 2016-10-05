# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)
#
# Difficulty: 3/5

=begin
def bubble_sort(arr)

    last_unsorted_index = arr.length - 1

    while last_unsorted_index >= 1
      arr.each_with_index.map { |x, i|
                    puts arr[i]
                    puts arr[i + 1]
                    if x > arr[i + 1]
                      arr[i], arr[i + 1] = arr[i + 1], arr[i]
                    else
                      next
                    end

                    if i + 1 == last_unsorted_index
                      last_unsorted_index = i
                      break
                    end
              }
    end

    return arr
end
=end

def bubble_sort(arr)
  returnArray = []

  while arr.length > 0

    arr.each_with_index { |v, i| #puts "curent index #{i} and current value #{v}"
                                  if i < arr.length - 1

                                   if arr[i] < arr[i + 1]
                                     #puts "swapping #{v} and #{arr[i + 1]}"
                                     arr[i] = arr[i + 1]
                                     arr[i + 1] = v
                                   end
                                 end
                         }

    returnArray.push(arr.pop)


  end
  print returnArray
  #returnArray
end

print bubble_sort([5, 2, 1, 3, 1])
#print bubble_sort([5, 4, 3, 2, 1])


puts("\nTests for #bubble_sort")
puts("===============================================")
#puts "bubble_sort([]) == []: "  + (bubble_sort([]) == []).to_s
#puts "bubble_sort([1]) == [1]: "  + (bubble_sort([1]) == [1]).to_s
#puts "bubble_sort([5, 4, 3, 2, 1]) == [1, 2, 3, 4, 5]: "  + (bubble_sort([5, 4, 3, 2, 1]) == [1, 2, 3, 4, 5]).to_s
puts("===============================================")