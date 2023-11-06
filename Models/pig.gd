extends Node3D

@onready var score_display := $"../CanvasLayer/ScoreDisplay"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var x = max(1.0, score_display.score / 100)
	scale = Vector3(x, x, x)
	pass
