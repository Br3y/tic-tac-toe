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

  def update_board(number)
    case number
    when 1..9
      row = (number - 1) / 3
      col = (number - 1) % 3
      if @board[row][col] == " "
        @board[row][col] = @player
        @player_choice[@player] << number
        return true
      else
        puts "Invalid Input. Try Again"
        return false
      end
    else
      puts "Invalid Input. Try Again"
      return false
    end
  end

  def check_winner
    @player_choice[@player].sort!
    WINNING_COMBINATIONS.each do |combo|
      if @player_choice.values.include?(combo)
        puts "player #{@player} wins!"
        exit
      end
    end
  end

  def play
    loop do 
      display_board

      print "Player #{@player} pick from 1-9: "
      number = gets.chomp.to_i
      
      if update_board(number)
        check_winner
        abort "No one wins. Draw!" if @board.flatten.none? { |cell| cell == " "}
        @player = (@player == "X") ? "O" : "X"
      end
    end
  end
end

game = TicTacToe.new
game.play