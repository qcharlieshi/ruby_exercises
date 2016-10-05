# Catsylvanian money is a strange thing: they have a coin for every
# denomination (including zero!). A wonky change machine in
# Catsylvania takes any coin of value N and returns 3 new coins,
# valued at N/2, N/3 and N/4 (rounding down).
#
# Write a method `wonky_coins(n)` that returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.
#
# Difficulty: 3/5



def wonky_coins(n)
  $global_coins = 0
  wonky_coins_solver(n)
  puts $global_coins
  return $global_coins
end

def wonky_coins_solver(n)

  while n > 0
    return wonky_coins_solver((n/2).floor), wonky_coins_solver(n/3.floor), wonky_coins_solver(n/4.floor)
  end

  $global_coins += 1

end

=begin #cleaner recursion
def wonky_coins(n)
  return 1 if n == 0

  # call wonky_coins from inside itself. This is called *recursion*.
  return wonky_coins(n / 2) + wonky_coins(n / 3) + wonky_coins(n / 4)
end
=end





puts("\nTests for #wonky_coins")
puts("===============================================")
puts "wonky_coins(1) == 3: "  + (wonky_coins(1) == 3).to_s
puts "wonky_coins(5) == 11: "  + (wonky_coins(5) == 11).to_s
puts "wonky_coins(6) == 15: "  + (wonky_coins(6) == 15).to_s
puts "wonky_coins(0) == 1: "  + (wonky_coins(0) == 1).to_s
puts("===============================================")

