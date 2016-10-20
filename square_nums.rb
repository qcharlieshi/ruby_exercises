#Write a method square_nums that takes a number max and returns the number of perfect squares less than max.
# Do not use Math.sqrt(x) or x ** 0.5; we don't want you to calculate square roots for this problem.
# You will, however, want to find squares (x * x is fine).


def square_nums(max)
  numbers = (1..max).to_a
  perfectSquares = numbers.map { |e| e * e }

  count = 0
  numbers.each { |e| count += 1 if perfectSquares.include?(e) }

  return count
end

puts square_nums(25)