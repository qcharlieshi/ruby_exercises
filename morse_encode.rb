# Build a function, `morse_encode(str)` that takes in a string (no
# numbers or punctuation) and outputs the morse code for it. See
# http://en.wikipedia.org/wiki/Morse_code. Put two spaces between
# words and one space between letters.
#
# You'll have to type in morse code: I'd use a hash to map letters to
# codes. Don't worry about numbers.
#
# I wrote a helper method `morse_encode_word(word)` that handled a
# single word.
#
# Difficulty: 2/5

def morse_encode(str)
  new_array = str.each_char.to_a.map { |e| morse_encode_word(e) }

  new_array.join(" ")

  return new_array
end

def morse_encode_word(word)
  morse_dict = {  "a" => ".-",
                  "b" => "-...",
                  "c" => "-.-.",
                  "d" => "-..",
                  "e" => ".",
                  "f" => "..-.",
                  "g" => "--.",
                  "h" => "....",
                  "i" => "..",
                  "j" => ".---",
                  "k" => "-.-",
                  "l" => ".-..",
                  "m" => "--",
                  "n" => "-.",
                  "o" => "---",
                  "p" => ".--.",
                  "q" => "--.-",
                  "r" => ".-.",
                  "s" => "...",
                  "t" => "-",
                  "u" => "..-",
                  "v" => "...-",
                  "w" => ".--",
                  "x" => "-..-",
                  "y" => "-.--",
                  "z" => "--..",
                  " " => " "
              }

  return morse_dict[word]
end

#morse_encode("cat in hat")
morse_encode("q")
puts "morse_encode(\"q\") == \"--.-\": "  + (morse_encode("q") == "--.-").to_s

=begin
puts("\nTests for #morse_encode")
puts("===============================================")
puts "morse_encode(\"q\") == \"--.-\": "  + (morse_encode("q") == "--.-").to_s
puts "morse_encode(\"cat\") == \"-.-. .- -\": "  + (morse_encode("cat") == "-.-. .- -").to_s
puts "morse_encode(\"cat in hat\") == \"-.-. .- -  .. -.  .... .- -\": "  + (morse_encode("cat in hat") == "-.-. .- -  .. -.  .... .- -").to_s

puts("===============================================")

=end