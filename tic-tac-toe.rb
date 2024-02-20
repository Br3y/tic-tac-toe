WIN_COMBINATIONS = [
  [0, 1, 2], [0, 4, 8], [0, 3, 6],
  [1, 4, 7], [2, 4, 6], [2, 5, 8],
  [3, 4, 5], [6, 7, 8]
]

class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

class Player < Person
  attr_reader :sign
  def initialize(name, sign)
    super(name)
    @sign = sign
  end
end

# set and display board
board = [
  [' ', ' ', ' '],
  [' ', ' ', ' '],
  [' ', ' ', ' ']
]

def display_board(board)
  board.each do |row|
    puts "-" * 10
    puts "| #{row.join("| ")}|"
  end
  puts "-" * 10
end

display_board(board)