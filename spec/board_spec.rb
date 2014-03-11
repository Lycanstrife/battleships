require 'board'

describe Board do

	let(:board) {Board.new('')}

	it "has a grid when created" do
		expect(board.rows.nil?).to be_false
	end

	it 'should be able to take a hit' do
		board.register_shot("C1")
		expect(board.rows.flatten.include?('s' || 'o')).to be_true	
	end


end