
def ordered_word?(word)
  word.chars.each_with_index { |e, i| if i > 1
                                        return false if e < word[i - 1]
                                      end
                              }
  return true
end


puts ordered_word?("amz")
puts ordered_word?("zma")
puts ordered_word?("aa")