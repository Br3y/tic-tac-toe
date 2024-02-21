WINNING_COMBINATIONS = [
  [0, 1, 2], [0, 4, 8], [0, 3, 6],
  [1, 4, 7], [2, 4, 6], [2, 5, 8],
  [3, 4, 5], [6, 7, 8]
]

board = [
  [" ", " ", " "],
  [" ", " ", " "],
  [" ", " ", " "]
]

def display_board(board)
  puts "-" * 13
  board.each do |row|
    puts "| #{row.join(' | ')} |"
    puts "-" * 13
  end
end

def update_board(player, number, board)
  case number
  when 1
    board[0][0] = player
  when 2
    board[0][1] = player
  when 3
    board[0][2] = player
  when 4
    board[1][0] = player
  when 5
    board[1][1] = player
  when 6
    board[1][2] = player
  when 7
    board[2][0] = player
  when 8
    board[2][1] = player
  when 9
    board[2][2] = player
  end
end

player = "X"

loop do
  display_board(board)

  print "player pick from 1-9: "
  number = gets.chomp.to_i
  
  update_board(player, number, board)

  player = (player == "X") ? "O" : "X"

end