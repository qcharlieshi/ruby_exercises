#In this exercise, I'd like you to write a method num_to_s(num, base),
# which will convert a number to a string in a different base. For
# instance, num_to_s(123, 10) == "123" and num_to_s(4, 2) == 100. It
# should work for bases up to 16 (hexadecimal).

#You can also think of writing numbers in bases like this. 123 in base 10 = 110^2 + 210^1 + 3*10^0

$finalResult = ''

def baseConversion(num, base)
  if (num % base) >= 10
    $finalResult << convertHex(num % base).to_s
  else
    $finalResult << (num % base).to_s
  end

  baseConversion((num - (num % base))/ base, base) if num >= base

end

def convertHex(num)

  hexHash = { 10 => 'A',
              11 => 'B',
              12 => 'C',
              13 => 'D',
              14 => 'E',
              15 => 'F',
              16 => 'G',
              17 => 'H',
              18 => 'I',
              19 => 'J',
              20 => 'K',
              21 => 'L',
              22 => 'M',
            }

  return hexHash[num]

end

#puts convertHex(16)
baseConversion(150, 12)
puts $finalResult.reverse