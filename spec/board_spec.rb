require 'board'

describe Board do

	let(:board) {Board.new('')}

	it "has a grid when created" do
		expect(board.rows.nil?).to be_false
	end

	it 'should be able to take a hit' do
		board.register_shot("C1")
		expect(board.rows.flatten.include?('o')).to be_true
	end

	it 'should return an array that an opponent can see' do
		expect(board.opponent_view.flatten.include?('s')).to be_false
	end

	it 'should be able to take in 4 ships of one' do
		board.injects_a_ship_of_one
		expect(board.rows.flatten.include?('s')).to be_true
	end


end