# frozen_string_literal: true

require_relative '../lib/board'

describe Board do

  subject(:board) { described_class.new }

  describe '#initialize' do
    context 'when a new game begins' do


      it 'creates a new empty 6 row, 7 columns, two-dimensional array' do
        expect(board.table).to eq([[nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil]])
      end
    end 
  end

  describe '#display' do
    context 'when the board is empty' do
      it 'displays board'do
      output = "\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\n\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\n\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\n\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\n\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\n\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\n"
      expect(board.display).to eq(output)
      end
    end

    context 'when the board is populated' do
      
      populated_table = [[nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [1, nil, nil, 2, nil, nil, nil]]
      subject(:populated_board) { described_class.new(populated_table) }
      
      it 'displays board' do
        output = "\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\n\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\n\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\n\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\n\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\u26aa\n\u26ab\u26aa\u26aa\u26ab\u26aa\u26aa\u26aa\n"
        expect(populated_board.display).to eq(output)
      end
    end

  end



end