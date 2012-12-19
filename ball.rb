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
		if (inRange)
			@position
		else
			@position = "OUT OF BOUNDS"
		end
	end
	def getPosition
		@position
	end
	def inRange
		if (@position > @testArea.range)
			false
		else
			true
		end
	end
end

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
puts "Set area range"
#@userRange = gets.chomp
main = TestArea.new("Main",@userRange)
redBall = Ball.new(0,main,"Red")
redBall.roll(1)

blueBall = Ball.new(1,main,"Blue")
blueBall.roll(6)
blueBall.roll(4)

print "There are #{main.countBalls} balls in the area #{main.name}\n"
print "#{redBall.color} ball is in position #{redBall.getPosition} \n" 
print "#{blueBall.color} ball is in position #{blueBall.getPosition}"
