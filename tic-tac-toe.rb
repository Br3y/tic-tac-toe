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

class Board
  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end
end