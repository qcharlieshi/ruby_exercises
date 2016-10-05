#Write a method substrings that will take a String and return an array containing each of its substrings.
# Example output: substrings("cat") => ["c", "ca", "cat", "a", "at", "t"]

def substring(string)
  stringArray = string.each_char.to_a
  returnArray = []
  stringArray.each_with_index { |e, i| puts "current letter: #{e}"
                                    index = 0
                                    while index + i < stringArray.length
                                      if index == 0
                                        returnArray.push(e)
                                      else
                                        #Adding to a tempString to get entries longer than 2
                                        #This part could be cleaned up
                                        tempString = ''
                                        idx = index
                                        while i + idx < stringArray.length
                                          tempString += stringArray[i + idx]
                                          idx += 1
                                        end
                                        returnArray.push(e + tempString)
                                      end

                                      index += 1
                                    end
                              }

  print returnArray
end

substring("cat")