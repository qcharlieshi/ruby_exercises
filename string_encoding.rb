def encrypt(str)
  strings = str.chars

  returnArray = []


  str.gsub(/(.)\1{0,5}/).each { |e| returnArray.push([e.chars.uniq!, e.length].flatten!) }
  #This implementation doesn't account for single

  # returnArray = []
  #
  # stringOrigin = str.chars
  # strings = str.chars
  #
  # strings.each.with_index { |e, i| count = 1
  #
  #                                   while e == stringOrigin[count]
  #                                     strings.shift
  #                                     puts "Comparing " + e + " " + stringOrigin[count] + " This is index #{i}"
  #                                     count += 1
  #                                   end
  #                                   stringOrigin = stringOrigin.drop(count)
  #                                   print strings
  #                                   puts
  #                                   returnArray.push([e, count])
  #
  # }
  #

  return returnArray


end

print encrypt("aaabbbbcccccccbbddddaccc")