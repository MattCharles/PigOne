extends Control

class_name Countdown

var t:=0.0
@onready var progress_bar := $ProgressBar
@onready var progress_label := $Label
@export var cooldown := 0.1
@export var gameover := false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if progress_bar.value <= 0:
		gameover = true
		return
	t+=delta
	if t >= cooldown:
		t = 0.0
		progress_bar.value-=cooldown
		progress_label.text = str(progress_bar.value)
