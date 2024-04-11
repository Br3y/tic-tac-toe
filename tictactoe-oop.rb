class TicTacToe
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

  def initialize
    @board = [
      [" ", " ", " "],
      [" ", " ", " "],
      [" ", " ", " "]
    ]
    @player = "X"
    @player_choice = {
      "X" => [],
      "O" => []
    }
  end

  def display_board
    puts "-" * 13
    @board.each do |row|
      puts "| #{row.join(' | ')} |"
      puts "-" * 13
    end
  end
end