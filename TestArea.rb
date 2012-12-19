class TestArea
	attr_accessor :name
	attr_accessor :range
	def initialize(name,range)
		@name = name
		@balls = 0
		@range = range
		
	end
	def addBall()
		@balls += 1
	end
	def countBalls
		@balls
	end
end