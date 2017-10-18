def initialise_board()
  brd = {}
  for i in 1..9 
    brd[i] = '_'
  end
  brd
end

def empty_squares(brd)
  brd.keys.select {|square| brd[square] == " "}
end

board = initialise_board()
print empty_squares(board)