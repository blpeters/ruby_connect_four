# frozen_string_literal: true

class Board
  
  attr_reader :table

  def initialize(table = Array.new(6) { Array.new(7, ' ') })
    @table = table
  end

  def place_token(column, symbol)
    col_index = column - 1
    table[5][col_index] = symbol
  end
end
