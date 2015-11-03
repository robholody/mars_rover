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

	def move 
		if @d == "n"
			@y = @y + 1
		elsif @d == "s"
			@y = @y - 1
		elsif @d == "e"
			@x = @x + 1
		else @d == "w"
			@x = @x - 1 
		end	
	end

	def turn(d)
		if d == "l"
			if @d == "n"
			@d = "w"
			elsif @d == "s"
			@d = "e"
			elsif @d == "e"
			@d = "n"
			else 
			@d = "s"
			end
				
	
		else #R
			if @d == "n"
			@d = "e"
			elsif @d == "s"
			@d == "w"
			elsif @d == "w"
			@d == "n"
			else
			@d = "s"

			end
		end
	end

	def display_coordinates
		puts "#{@x}, #{@y}, #{@d}"
	end

end

action = Rover.new(1, 2, "n")
action.read_instruction
action.display_coordinates