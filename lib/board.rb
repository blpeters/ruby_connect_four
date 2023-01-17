# frozen_string_literal: true

class Board
  
  attr_reader :table

  def initialize
    @table = Array.new(6) { Array.new(7) }
  end
end
