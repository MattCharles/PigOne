extends Node3D

@export var rotation_speed := 0.01


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	rotate_y(rotation_speed)
