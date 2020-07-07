require_relative '../lib/move.rb'
require_relative '../lib/player.rb'

describe Move do
  let(:player) { Player.new('Iggy', 'X') }
  let(:move) { Move.new }
  describe '#add_player' do
    it 'add the player' do
      expect(move.add_player(player)).to eql([])
    end
  end

  describe '#add_move' do
    it 'add move to the array' do
      expect(move.add_move(player.name, 6)).to eql([6])
    end
  end

  describe '#win_check' do
    context 'when player plays the winning move' do
      it 'return true if player move only winning combination' do
        expect(move.win_check(player.name, [3, 1, 2])).to eql(true)
      end

      it 'return true if player has another value with the winning combination' do
        expect(move.win_check(player.name, [3, 2, 7, 1])).to eql(true)
      end
    end

    context ' when player started his move' do
      it 'return false when his array length less than 3' do
        expect(move.win_check(player.name, [1])).to eql(false)
      end

      it 'return false when array has not the combination of winning move' do
        expect(move.win_check(player.name, [1, 2, 4, 5])).to eql(false)
      end
    end
  end
end
