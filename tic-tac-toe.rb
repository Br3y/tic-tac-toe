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

player = "X"

loop do
  display_board(board)

  print "player pick from 1-9: "
  number = gets.chomp.to_i
end