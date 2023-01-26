# frozen_string_literal: true

class Board
  
  attr_reader :table

  def initialize(table = Array.new(6) { Array.new(7) })
    @table = table
  end

  def display
    output = ''
    table.each do |row|
      row.each do |slot|
        case slot
        when nil
          output += "\u26aa"
        when 1
          output += "\u26ab"
        when 2
          output += "\u26ab"
        end
      end
      output += "\n"
    end
    puts output
    output
  end
end

# board = Board.new([[nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [1, nil, nil, 2, nil, nil, nil]]) 

# board.display