extends KinematicBody2D

const Gravity = 5
const Fly = -250
const rotate = 0

var velocity = Vector2()

func _physics_process(delta):
	
	if Input.is_action_just_pressed("ui_select") or Input.is_mouse_button_pressed(BUTTON_LEFT) == true:
		velocity.y = Fly
		rotation_degrees = rotation_degrees - 35
		
	rotation_degrees = rotation_degrees + 0.4
	velocity.y = velocity.y + Gravity
	move_and_slide(velocity)
