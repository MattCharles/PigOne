extends Control

class_name ScoreBar

@onready var texture_progress_bar := $TextureProgressBar
@export var speed := 20.0
@export var points_per_click := 10.0
@onready var countdown:Countdown = $"../Countdown"

var t := 0.0

func _physics_process(delta):
	if countdown.gameover:
		return
	t+=delta * speed
	if t >= 1.0:
		t=0.0
		texture_progress_bar.value -= 1
	

func _unhandled_input(event):
	if countdown.gameover:
		return
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				texture_progress_bar.value += points_per_click
		elif event.button_index == MOUSE_BUTTON_RIGHT:
			if event.pressed:
				texture_progress_bar.value = 0
