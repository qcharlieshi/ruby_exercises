#Write your own uniq method, called my_uniq;
# it should take in an Array and return a new array. It should not call uniq.
a1 = [1, 2, 3, 3]

def remove_dups(array1)
  returnArray = []
  array1.each { |e| returnArray.push(e) unless returnArray.include?(e) }

  return returnArray
end

a1 = remove_dups(a1)
puts a1
