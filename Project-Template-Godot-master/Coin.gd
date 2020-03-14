extends Area2D

export var score: = 100
onready var anim_player: AnimationPlayer = get_node("AnimationPlayer")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Coin_body_entered(body):
	pass # Replace with function body.


func _on_body_entered(body: PhysicsBody2D) ->void:
	anim_player.play("New Anim")

