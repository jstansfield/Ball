require "./ball"
require "./TestArea"

print "Enter an area range>"
@userRange = Integer(gets.chomp)

main = TestArea.new("Main",@userRange)
redBall = Ball.new(0,main,"Red")
redBall.roll(1)

blueBall = Ball.new(1,main,"Blue")
blueBall.roll(6)
blueBall.roll(6)


print "There are #{main.countBalls} balls in the area #{main.name}\n"
print "#{redBall.color} ball is in position #{redBall.getPosition} \n" 
print "#{blueBall.color} ball is in position #{blueBall.getPosition}"
