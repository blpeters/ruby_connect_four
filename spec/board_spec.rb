# frozen_string_literal: true

require_relative '../lib/board'

describe Board do
  describe '#initialize' do
    context 'when a new game begins' do

      subject(:board) { described_class.new }

      it 'creates a new empty 6 row, 7 columns, two-dimensional array' do
        expect(board.table).to eq([[nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil]])
      end
    end 
  end

  
end