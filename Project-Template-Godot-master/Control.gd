extends Control


signal score_updated
var score: = 0 setget set_score
var death: = 0
# Called when the node enters the scene tree for the first time.
func set_score(value: int) -> void:
	score = value
	emit_signal("score_updated")

