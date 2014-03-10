class Player

	#Initialize a new player with the name.
	# You'll have to create a board in there and randomize
	# the positioning of your ships on the board.

	def initialize(name)
		@name = name
	end

	# tells if there are still ships that have not been hit on his board

	def has_ships_still_floating?
	end

	#shoot at the opponents coordinates
	def shoot(at_coordinates, opponent_board)
	end
end