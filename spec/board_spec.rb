# frozen_string_literal: true

require_relative '../lib/board'

describe Board do

  subject(:board) { described_class.new }

  describe '#place_token' do

    context 'when column is empty' do
      it 'places token at the bottom row' do
        board.place_token(1, '⚫')
        expect(board.table[5][0]).to eq('⚫')
      end
    end

    context 'when column is partially filled' do
      table = [[' ',' ',' ',' ',' ',' ',' '],
      [' ',' ',' ',' ',' ',' ',' '],
      [' ',' ',' ',' ',' ',' ',' '],
      [' ',' ',' ',' ',' ',' ',' '],
      [' ',' ',' ',' ',' ',' ',' '],
      ['⚫',' ',' ',' ',' ',' ',' ']]
      subject(:partial_board) { described_class.new(table)}

      it 'places token on the next available row' do
        partial_board.place_token(1, '⚫')
        expect(partial_board.table[4][0]).to eq('⚫')
      end
    end
  end

end