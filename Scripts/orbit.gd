extends Node3D

@export var rotation_speed := 0.01
@onready var pigGrowth :PigGrowth = $"../"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	rotate_y(rotation_speed)
	
	#camera position.z needs to grow while position.y of node grows
func _unhandled_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				print("growing?")
				#position += Vector3(0, pigGrowth.growth_rate, 0)
