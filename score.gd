extends Control

@onready var score_bar : ScoreBar = $"../ScoreBar"
@onready var score_value := $HBoxContainer/ScoreValue
var texture_progress_bar : TextureProgressBar
var score := 0
var t := 0.0
var previous_t := 0.0
@export var update_interval := 0.1
var max_value := 100.0
@export var overfeed_penalty := -100.0

func _ready():
	texture_progress_bar = score_bar.texture_progress_bar as TextureProgressBar

func _physics_process(delta):
	t += delta
	if t - previous_t >= update_interval:
		previous_t = t
		if texture_progress_bar.value > max_value:
			score = score + overfeed_penalty
		else:
			score = score + texture_progress_bar.value
		score_value.text = str(score)
