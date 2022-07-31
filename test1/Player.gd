extends KinematicBody2D

var motion := Vector2()
const SPEED := 140

# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.

func _physics_process(delta):
    if Input.is_action_pressed("ui_up"):
        motion.y = -SPEED
    elif Input.is_action_pressed("ui_down"):
        motion.y = SPEED
    else:
        motion.y = 0

    if Input.is_action_pressed("ui_left"):
        motion.x = -SPEED
    elif Input.is_action_pressed("ui_right"):
        motion.x = SPEED
    else:
        motion.x = 0

    move_and_slide(motion)



func _on_Area2D2_body_entered(body):
    print(name + " " + body.name)
