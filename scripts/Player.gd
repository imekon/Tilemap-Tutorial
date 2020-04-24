extends KinematicBody2D

const SPEED = 160
const GRAVITY = 10
const JUMP_POWER = -550
const FLOOR = Vector2(0, -1)

var velocity = Vector2()

func _physics_process(delta):
	velocity.x = 0
	
	if Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
	elif Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		
	if is_on_floor() && Input.is_action_pressed("ui_up"):
		velocity.y = JUMP_POWER
		
	velocity.y += GRAVITY
	
	velocity = move_and_slide(velocity, FLOOR)
