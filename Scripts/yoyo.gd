extends Camera3D

@export var speed := 1.0
@export var default_distance := 20.0
var t := 0.0

func _physics_process(delta):
	t += delta
	position.z = default_distance + sin(speed * t)
	
	
func _unhandled_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				default_distance += .2
