#Write a method, my_transpose, which will convert between the row-oriented and column-oriented representations.

rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
]

def transpose(array1)
  returnArray, tempArray  = [], []





  array1.each_with_index { |e, i| e.each_with_index { |el, ind| returnArray[i][ind] =  el } }

  return returnArray
end

print transpose(rows)


=begin
count = 0
while count < array1.length
  array1.each { |e| tempArray.push(e.shift) }
  returnArray[count] = tempArray

  tempArray = []
  count += 1
end
=end