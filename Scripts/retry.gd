extends Control

@onready var countdown:Countdown = $"../Countdown"

func _on_yeah_pressed():
	countdown.reset_game()
