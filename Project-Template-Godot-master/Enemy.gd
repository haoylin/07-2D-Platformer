extends KinematicBody2D

onready var stomp_area: Area2D = $StompArea2D
export var gravity: = 4000.0
export var speed: = Vector2(300.0, 1000.0)
var FLOOR_NORMAL = Vector2.UP
var velocity: = Vector2.ZERO

func _ready() -> void:
	velocity.x = -speed.x


func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	if is_on_wall():
		velocity.x *= -1.0
	velocity.y = move_and_slide(velocity,FLOOR_NORMAL).y




