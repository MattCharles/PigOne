extends Control
@onready var yeah_label := $Control/Yeah/Label
@export var PRESS_OFFSET := Vector2(0.0, 20.0)
@onready var countdown:Countdown = $"../Countdown"

func move_button(label: Label, pressed:bool) -> void:
	label.position = label.position + PRESS_OFFSET if pressed else label.position - PRESS_OFFSET


func _on_yeah_button_down():
	countdown.reset_game()
	move_button(yeah_label, true)


func _on_yeah_button_up():
	move_button(yeah_label, false)
