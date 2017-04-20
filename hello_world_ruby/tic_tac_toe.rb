class TicTacToe

  def next_move(move)
    move['board'].sub!(/\*/, move['piece'])
    move['board']
  end

end






# def next_move(move)
#   move['board'].split
#   move['board']

# #   winning_triplets: [[1, 2, 3], [4, 5, 6],
#     [7, 8, 9], [1, 5, 9], [2, 5, 8], [3, 5, 7],
#     [1, 4, 7], [3, 6, 9]]
#   # board_array = @board.split('')
# # go 1 starting at 1, 4, and 7
# #   go 4 starting at 1
# #   go 3 starting at 1, 2, and 3
# #   go 2 starting at 3
#   #TODO: add some calculations
#   # @board = board_array.join
# end

#TODO: Unit test
