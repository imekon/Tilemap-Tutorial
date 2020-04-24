extends KinematicBody2D

const SPEED = 120
const GRAVITY = 10
const JUMP_POWER = -550
const FLOOR = Vector2(0, -1)

var velocity = Vector2()

func _physics_process(delta):
	if Global.player == null:
		return
		
	var x = clamp(Global.player.position.x - position.x, -SPEED, SPEED)
	
	velocity.x = x
	velocity.y += GRAVITY
	
	velocity = move_and_slide(velocity, FLOOR)
