extends Control

@onready var start_label := $ButtonContainer/Start/Label
@onready var options_label := $ButtonContainer/Options/Label
@onready var exit_label := $ButtonContainer/Exit/Label
@onready var oinker := $Oinker
@export var PRESS_OFFSET := Vector2(0.0, 20.0)



func move_button(label: Label, pressed:bool) -> void:
	label.position = label.position + PRESS_OFFSET if pressed else label.position - PRESS_OFFSET


func _on_start_button_down():
	move_button(start_label, true)
	get_tree().change_scene_to_file("res://sky.tscn")


func _on_start_button_up():
	move_button(start_label, false)


func _on_options_button_down():
	move_button(options_label, true)


func _on_options_button_up():
	move_button(options_label, false)


func _on_exit_button_down():
	get_tree().quit()
	move_button(exit_label, true)


func _on_exit_button_up():
	move_button(exit_label, false)


func _on_button_entered():
	oinker.play()
