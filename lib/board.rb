class Board

	attr_reader :rows

	COLUMNS = {
	"A" => 0,
	"B" => 1,
	"C" => 2,
	"D" => 3,
	"E" => 4,
	"F" => 5,
	"G" => 6,
	"H" => 7,
	"I" => 8,
	"J" => 9
	}

	def initialize(player)
		@player = player
		@rows = Array.new(10) { Array.new(10, ' ') }
		20.times { rows[rand(9)][rand(9)] = 's' }
		# 4 ships of 1
		# 3 ships of 2
		# 2 ships of 3
		# 1 ships of 4
	end



	def owner
		@player.name
	end

	def replace_with_x(x,y)
		self.rows[x][y] = 'x'
	end

	def replace_with_o(x,y)
		self.rows[x][y] = 'o'
	end


	def register_shot(at_coordinates)
		x = COLUMNS[at_coordinates[0]]
		y = at_coordinates[1].to_i - 1
		self.rows[x][y] == 's' ? replace_with_x(x,y) : replace_with_o(x,y)
	end

	#this method returns an array containing 10 arrays with 10 elementsd each ( as in rows) replacing the ships
	# with an empty string ('') so that your opponent cannot see your ships.
	def opponent_view
		self.rows.map { |row| row.map { |value| value == 's' ? '' : value }}
	end
end