class Ball
	attr_accessor :color
	def initialize(position,testArea,color)
		@position = position
		@color = color
		@testArea = testArea
		@testArea.addBall()
	end
	def roll(amount)	
		@position = @position + amount
	end
	def getPosition
		if (inRange)
			@position
		else
			return "OUT OF BOUNDS (#{@position})"
		end
	end
	def inRange
		if (@position > @testArea.range)
			false
		else
			true
		end
	end
end