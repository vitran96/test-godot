extends StaticBody2D

#var initPosition := Vector2()

#var x : float
#var y : float

var init : Vector2
var motion := Vector2()

var SPEED := 5
const DISPLACEMENT := 100

func _ready():
	init = position
	
func _physics_process(delta):
	if position.x < init.x - DISPLACEMENT || position.x > init.x + DISPLACEMENT:
		SPEED = -SPEED

	position.x += SPEED
