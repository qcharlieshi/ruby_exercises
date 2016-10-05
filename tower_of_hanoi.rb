#Shift, unshift, pop and cause issues when editing

$pile1, $pile2, $pile3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [], []
$maxLength = [$pile1.length, $pile2.length, $pile3.length].max()
$step = 1

#move method
def move(p1, p2)
  #return_pile = p2
  p1_dup = p1.dup
  p2_dup = p2.dup

  #puts p2.length
  p2_dup.unshift.class
  #puts p1.shift

  if (p1.length <= 0)
    puts "Can't make move, origin pile has no discs"
    return
  elsif (p2.length > 0)
    if (p2_dup.unshift.first > p1_dup.shift)
      p2.unshift(p1.shift)
      return
    else
      puts "Can't make move, new pile has bigger discs than origin pile"
      return
    end
  else
    p2.unshift(p1.shift)
  end

  puts "This is step # #{$step}"
  $step += 1
  display_piles($pile1, $pile2, $pile3)

  puts

end

#display method
def display_piles(p1, p2, p3)

  count = 0
  pile1 = p1.dup
  pile2 = p2.dup
  pile3 = p3.dup

  while count < $maxLength
    pile1e = pile1.pop
    pile2e = pile2.pop
    pile3e = pile3.pop

    if pile1e == nil
      print "0 ||"
    elsif
      print "#{pile1e} ||"
    end

    if pile2e == nil
      print " 0 ||"
    elsif
      print " #{pile2e} ||"
    end

    if pile3e == nil
      print " 0"
    elsif
      print " #{pile3e}"
    end

    puts
    count += 1
  end

end

def move_tower(length, originPole, destinationPole, intermediatePole)

  if length >= 1
    move_tower(length - 1, originPole, intermediatePole, destinationPole)
    move(originPole, intermediatePole)
    move_tower(length - 1, destinationPole, originPole, intermediatePole)
  end




end

move_tower($maxLength, $pile1, $pile3 , $pile2)
display_piles($pile1, $pile3, $pile2)
#while pile2.length <= $maxLength || pile3.length <= $maxLength
#end

=begin
#main loop, check if game if complete, if not, run program loop
while pile2.length <= $maxLength || pile3.length <= $maxLength
  display_piles(pile1, pile2, pile3)
  print "What pile would you wish to move: "
  selectedPile = gets.chomp()
  puts
  print "What pile would you wish to move to: "
  movedPile = gets.chomp()
  puts

  case selectedPile
    when "1"
      selectedPile = pile1
    when "2"
      selectedPile = pile2
    when "3"
      selectedPile = pile3
    when "exit"
      exit(0)
  end


  case movedPile
    when "1"
      movedPile = pile1
    when "2"
      movedPile = pile2
    when "3"
      movedPile = pile3
    when "exit"
      exit(0)
  end

  move(selectedPile, movedPile)
end
=end
