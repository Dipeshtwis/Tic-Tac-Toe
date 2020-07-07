#!/usr/bin/env ruby
require_relative '../lib/player'
require_relative '../lib/move'
move = Move.new
value = {}
p 'Welcome to this nice Tic-tac-toe game'
p 'Enter player 1 name'
p1 = gets.chomp
while p1 == ''
  p 'please enter a valid name'
  p1 = gets.chomp
end
one = Player.new(p1, 'X')

move.add_player(one)

p "Thank you for participating #{one.name}, you got X "
p 'Enter player 2 name'
p2 = gets.chomp
while p2 == p1 or p2 == ''
  p 'You have entered the same or invalid name. Try another'
  p2 = gets.chomp
end
two = Player.new(p2, 'O')
move.add_player(two)

p "Thank you for participating #{two.name}, you got O "

# playing
puts "This is the board \n"
board = " 1 | 2 | 3 | \n 4 | 5 | 6 | \n 7 | 8 | 9 |"
puts board

emp_array = []
win = false
i = 1
while i <= 9
  if i.odd?
    p "It's #{p1} turn, please enter a digit between 1-9"
    x = gets.chomp
    if emp_array.include?(x.to_i) || !((x.to_i <= 9) && (x.to_i >= 1))
      puts "The number entered is either invalid or duplicate!\n please put an another number"
      next
    else
      emp_array.push(x.to_i)
    end
    move.add_move(one.name, x)
    p "your move is on slot #{x}"
    if move.win_check(one.name, value)
      puts board.gsub!(x, 'X')
      puts "winner is #{one.name}"
      win = true
      break
    end
    board = board.gsub!(x, 'X')
  else
    p "It's #{p2} turn, please enter a digit between 1-9"
    o = gets.chomp
    if emp_array.include?(o.to_i) || !((o.to_i <= 9) && (o.to_i >= 1))
      puts "The number entered is either invalid or duplicate!\n please put an another number"
      next
    else
      emp_array.push(o.to_i)
    end
    move.add_move(two.name, o)
    p "your move is on slot #{o}"
    if move.win_check(two.name, value)
      puts board.gsub!(o, 'O')
      puts "winner is #{two.name}"
      win = true
      break
    end
    board = board.gsub!(o, 'O')
  end
  puts board
  i += 1
end

puts 'It is a DRAW!!!!' unless win

p 'Thank you for playing the game!'
