class Move
  # rubocop:disable Style/ClassVars
  @@move = {}
  @@count = 0
  @@emp_array = []

  def add_player(player)
    @@move[player.name] = []
  end

  def add_move(player, number)
    @@move[player] << number.to_i if @@move[player].size < 5
    # @@count += 1
  end

  # def find_players
  #   @@move.each_with_index { |item, _index| print "#{item} \n" }
  # end

  def number_present(number)
    if @@emp_array.include?(number.to_i) || !((number.to_i <= 9) && (number.to_i >= 1))
      true
    else
      @@emp_array.push(number.to_i)
      false
    end
  end

  def win_check(player)
    arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
    true if @@move[player].size >= 3 and arr.any? { |x| combination(x, @@move[player]) }
  end

  private

  def combination(arrs, ar_played)
    sol_ar = arrs.join.to_s
    array = ar_played
    array = greater_than(ar_played, arrs) if ar_played.size > 3
    sol_ar_played = array.join.to_s
    if /[#{sol_ar}]{3}/.match(sol_ar_played)
      true
    else
      false
    end
  end

  def greater_than(arr, sol_ar)
    ars = arr.reject { |x| x == (arr - sol_ar)[0] }
    ars
  end
  # rubocop:enable Style/ClassVars
end
