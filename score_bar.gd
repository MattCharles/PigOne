extends Control

class_name ScoreBar

@onready var texture_progress_bar := $TextureProgressBar
@export var speed := 20.0
@export var points_per_click := 10.0

var t := 0.0

func _physics_process(delta):
	t+=delta * speed
	if t >= 1.0:
		t=0.0
		texture_progress_bar.value -= 1
	

func _unhandled_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				print("Left button was clicked at ", event.position)
				texture_progress_bar.value += points_per_click
			else:
				print("Left button was released")
