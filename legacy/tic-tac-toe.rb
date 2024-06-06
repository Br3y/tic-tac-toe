WINNING_COMBINATIONS = [
  [1, 2, 3], [1, 5, 9], [1, 4, 7],
  [2, 5, 8], [3, 5, 7], [3, 6, 9],
  [4, 5, 6], [7, 8, 9],
  [1, 2, 5, 8], [1, 3, 5, 7], [1, 4, 5, 6],
  [2, 3, 5, 7], [2, 4, 5, 6], [3, 4, 5, 9],
  [4, 5, 8, 9], [6, 7, 8, 9],
  [1, 2, 3, 4, 5], [1, 6, 7, 8, 9], [2, 4, 5, 6, 8],
  [1, 2, 4, 5, 7], [1, 2, 6, 8, 9]
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
  case 
  when number == 1 && board[0][0] == " "
    board[0][0] = player
  when number == 2 && board[0][1] == " "
    board[0][1] = player
  when number == 3 && board[0][2] == " "
    board[0][2] = player
  when number == 4 && board[1][0] == " "
    board[1][0] = player
  when number == 5 && board[1][1] == " "
    board[1][1] = player
  when number == 6 && board[1][2] == " "
    board[1][2] = player
  when number == 7 && board[2][0] == " "
    board[2][0] = player
  when number == 8 && board[2][1] == " "
    board[2][1] = player
  when number == 9 && board[2][2] == " "
    board[2][2] = player
  else
    puts "Invalid Input. Try Again"
  end
end

def check_winner(player, player_choice)
  player_choice[player].sort!
  WINNING_COMBINATIONS.each do |combo|
    if player_choice.values.include?(combo)
      puts "player #{player} wins!"
      exit
    end
  end
end

player = "X"
player_choice = {
  "X" => [],
  "O" => []
}

loop do
  display_board(board)

  print "player pick from 1-9: "
  number = gets.chomp.to_i
  
  if update_board(player, number, board)
    player_choice[player] << number
    check_winner(player, player_choice)
    abort "No one win. Draw!" if board.flatten.none? { |cell | cell == " "}
    player = (player == "X") ? "O" : "X"
  end

end