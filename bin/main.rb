#!/usr/bin/env ruby
p 'Welcome to this nice Tic-tac-toe game'
p 'Enter player 1 name'
p1 = gets.chomp
p "Thank you for participating #{p1}, you got X "
p 'Enter player 2 name'
p2 = gets.chomp
p "Thank you for participating #{p2}, you got O "

# playing
puts "This is the board \n"

puts " 1 | 2 | 3 | \n 4 | 5 | 6 | \n 7 | 8 | 9 |"

i = 1
while i <= 9
  if i.odd?
    p "It's #{p1} turn, please enter a digit between 1-9"
    x = gets.chomp
    p "your move is on slot #{x}"
  else
    p "It's #{p2} turn, please enter a digit between 1-9"
    o = gets.chomp
    p "your move is on slot #{o}"
  end
  i += 1
end

p "Hooray!!! #{p1} is the winner"
p 'Thank you for playing the game!'
