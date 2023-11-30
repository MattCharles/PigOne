extends Control

class_name Countdown

var t:=0.0
var time_in = 0
@onready var progress_bar := $ProgressBar
@onready var progress_label := $Label
@export var cooldown := 0.1
@export var gameover := false
@onready var try_again := $"../RetryMenu"
@onready var score_display : ScoreDisplay = $"../ScoreDisplay"
@onready var score_bar : ScoreBar = $"../ScoreBar"
@onready var scoreboard : ScoreBoard = $"../RetryMenu/Scoreboard"
@onready var texture_progress_bar = $"../ScoreBar/TextureProgressBar"
@onready var perfect_text = $"../ScoreBar/PerfectText"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if gameover:
		return
	if progress_bar.value <= 0:
		gameover = true
		try_again.visible = true
		scoreboard.add_score(score_display.score)
		return
	t+=delta
	if texture_progress_bar.value > 79 && texture_progress_bar.value < 100 :
		perfect_text.visible = true
		time_in += delta
		if time_in >= 1:
			progress_bar.value += 0.9
			time_in = 0
	else:
		perfect_text.visible = false
		time_in = 0
		
	
	if t >= cooldown:
		t = 0.0
		progress_bar.value-=cooldown
		progress_label.text = str(progress_bar.value)

func reset_game():
	gameover = false
	try_again.visible = false
	score_display.score = 0
	progress_bar.value = progress_bar.max_value
	score_bar.texture_progress_bar.value = 0
