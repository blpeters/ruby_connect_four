# frozen_string_literal: true

require_relative '../lib/game'
require_relative '../lib/player'

describe Game do
  subject(:game) { described_class.new }
  # let(:player1) { double(Player, name: 'Brett', symbol: '⚫') }
  # let(:board) { double(Board) }

  describe '#create_player' do
    
    context 'when creating player 1' do
      before do
        allow(game).to receive(:puts)
        allow(game).to receive(:gets).and_return('Brett')
      end

      it 'creates player 1 with the right parameters' do
        expect(Player).to receive(:new).with('Brett', '⚫')
        game.create_player(1)
      end
    end

    context 'when creating player 2' do
      before do
        allow(game).to receive(:puts)
        allow(game).to receive(:gets).and_return('Karen')
      end

      it 'creates player 2 with the right parameters' do
        expect(Player).to receive(:new).with('Karen', '⚪')
        game.create_player(2)
      end
    end

  end
end
