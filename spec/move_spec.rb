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
end