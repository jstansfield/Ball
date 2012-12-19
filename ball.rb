class Ball
	attr_accessor :color
	def initialize(position,testArea,color)
		@position = position
		@color = color
		@testArea = testArea
		@testArea.addBall()
	end
	def roll(amount)
		if (amount.is_a? Integer)
			@position = @position + amount
		else
			@position = @position
		end
	end
	def getPosition
		if (inRange)
			@position
		else
			@position = "OUT OF BOUNDS"
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