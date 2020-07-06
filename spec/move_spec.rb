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

	describe "#number_present" do
		context "If number is between 1 to 9" do
			it "return false if number is present" do
				expect(move.number_present(2)).to eql(false)
			end

			it "return true if number is not present" do
				expect(move.number_present(10)).to eql(true)
			end
		end

		context "If number is present in the array" do
			it "return true if number is already present in the array" do
				expect(move.number_present(2)).to eql(true)
			end
		end
	end
end