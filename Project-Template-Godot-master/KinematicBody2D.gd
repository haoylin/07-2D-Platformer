extends KinematicBody2D

const jump_height = -500
const speed = 200
const gravity = 20
const UP = Vector2(0,-1)
var motion = Vector2()
onready var Bullet = load("res://Bullets.tscn")


func _physics_process(delta):
	motion.y += gravity
	if Input.is_action_pressed("fire"):
		var b = Bullet.instance()
		b.position = position
		b.position.y -= 296
		b.position.x -= 460
		get_node("/root/Game/Bullet").fire(b)
	
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
	else:
		motion.x = 0
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = jump_height
	
	motion = move_and_slide(motion,UP)
	pass
	

