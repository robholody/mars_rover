# # A squad of robotic rovers are to be landed by NASA on a plateau on Mars. This plateau, which is curiously rectangular, must be navigated by the rovers so that their on-board cameras can get a complete view of the surrounding terrain to send back to Earth.

# A rover's position and location is represented by a combination of x and y co-ordinates and a letter representing one of the four cardinal compass points. The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the rover is in the bottom left corner and facing North.





class Rover
	def initialize(x, y, d)
	@x = x
	@y = y
	@d = d
end


	def read_instruction
		user_input = gets.chomp
		if user_input == "m"
		move
		else
		turn(user_input)

		end	
	end

	

end

action = Rover.new(1, 2, "n")
action.read_instruction
action.display_coordinates