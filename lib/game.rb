# frozen_string_literal: true

require_relative 'board.rb'

class Game

  SYMBOLS = ['⚫', '⚪']

  def create_player(number)
    puts "\nPlayer #{number}, enter your name:"
    name = gets.chomp.capitalize
    symbol = SYMBOLS[number - 1]
    Player.new(name, symbol)
  end


end


class Player

end
