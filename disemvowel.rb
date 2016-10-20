#Write a function disemvowel(string), which takes in a string,
# and returns that string with all the vowels removed. Treat "y" as a consonant.

def disemvowel(string)
  #return string.gsub(/[aeiou]/, '')

  string.each_char.select { |e| %w[a e i o u].include?(e) == false}
end

puts disemvowel("abcou")