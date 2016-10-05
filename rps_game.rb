#Implement a Rock, Paper, Scissors game. The method rps should take a string (either "Rock", "Paper" or "Scissors")
# as a parameter and return the computer's choice, and the outcome of the match. Example:

#Rock
#Paper
#Sissors

def rps(decision)
  compDecision = rand(3) + 1
  decision = decision.to_i
  puts compDecision

  case compDecision
    when 1
      return "Tie game, computer selected Rock too!" if decision == 1
      return "You win, computer selected Rock!" if decision == 2
      return "You lose, computer selected Rock!" if decision == 3

    when 2
      return "You lose, computer selected Paper!" if decision == 1
      return "Tie game, computer selected Paper too!" if decision == 2
      return "You win, computer selected Paper!" if decision == 3

    when 3
      return "You win, computer selected Rock!" if decision == 1
      return "You lose, computer selected Paper!" if decision == 2
      return "Tie game, computer selected Sissor too!" if decision == 3

    else
      return "Invalid"
  end

end

decision = 0
while decision.to_i != 4
  puts "Make your decision: \n 1: Rock\n 2: Paper\n 3: Sissors\n 4: Exit"
  decision = gets.chomp
  puts rps(decision)
end
