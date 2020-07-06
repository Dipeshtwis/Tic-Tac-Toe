require_relative '../lib/move.rb'
require_relative '../lib/player.rb'

describe Move do
	let(:player) {Player.new('Iggy', 'X')}
	let(:move) {Move.new}
	describe "#add_player" do
		it "add the player" do
			expect(move.add_player(player)).to eql([])
		end
	end

	describe "#add_move" do
		it "add move to the array" do
			expect(move.add_move(player.name, 6)).to eql([6])
		end
	end
end