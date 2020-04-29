extends RigidBody2D

export var speed = 500
onready var Player = get_node("/root/Game/KinematicBody2D")

func _ready():
	contact_monitor = true
	set_max_contacts_reported(4)


	if position.x < -10:
		queue_free()

func _integrate_forces(state):
	state.set_linear_velocity(Vector2(0,speed))
	state.set_angular_velocity(0)


