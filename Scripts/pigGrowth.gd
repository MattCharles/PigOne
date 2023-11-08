extends Node3D

class_name PigGrowth

@export var growth_rate := 0.2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _unhandled_input(event):
	#if countdown.gameover:
	#	return
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				scale += Vector3(growth_rate,growth_rate,growth_rate)

