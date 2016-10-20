def one_off_words(str, word_list)\
  returnArray = []
  word_list.each { |e| returnArray.push(e) if is_off?(str, e) }

  return returnArray
end

def is_off?(str, match)
  i = 0
  total = 0
  while i < str.length
    if str.chars[i] != match.chars[i]
      total += 1
    end

    i += 1
  end

  if total <= 1
    return true
  else
    return false
  end

end







WORDS = ["door", "moot", "boot", "boots"]
puts one_off_words("moor", WORDS)