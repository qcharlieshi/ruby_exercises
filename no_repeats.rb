# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5

def no_repeats(year_start, year_end)
  no_repeat_array = []

  while year_start <= year_end
    if no_repeat?(year_start)
      no_repeat_array.push(year_start)
    end
    year_start += 1
  end

  return no_repeat_array
end

def no_repeat?(year)

  year_a = Math.log10(year).floor.downto(0).map { |i| (year / 10**i) % 10 }

  if year_a.uniq.length == Math.log10(year).floor + 1

    return true
  else
    return false
  end
end

no_repeats(1980, 1987)





puts("\nTests for #no_repeats")
puts("===============================================")
puts "no_repeats(1234, 1234) == [1234]: "  + (no_repeats(1234, 1234) == [1234]).to_s
puts "no_repeats(1123, 1123) == []: "  + (no_repeats(1123, 1123) == []).to_s
puts "no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987]: " + (no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987]).to_s
puts("===============================================")
