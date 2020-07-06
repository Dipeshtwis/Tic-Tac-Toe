require './lib/player.rb'

RSpec.describe Player do
	let(:player) {Player.new('Iggy', 'X')}
	describe 'create a new player' do
		it 'return the player name' do
			expect(player.name).to eql("Iggy")
		end
	end
end