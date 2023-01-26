# frozen_string_literal: true

require_relative 'board.rb'

class Game

  attr_reader :player1, :player2, :board

  def initialize
    @player1 = nil
    @player2 = nil
    @board = Board.new
  end

end