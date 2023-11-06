extends Control

class_name ScoreBoard

@onready var score_container := $Control/ScrollContainer/VBoxContainer
var log_entry := preload("res://Scenes/score_log.tscn")
var scores : Array = []

func add_score(score:int) -> void:
	var index = score_container.get_child_count() # todo: sort
	var new_entry:ScoreLog = log_entry.instantiate()
	score_container.add_child(new_entry)
	new_entry.write(index, score)
	var children := score_container.get_children()
	var sorted_nodes = children
	sorted_nodes.sort_custom(func(a: ScoreLog, b:ScoreLog):
		return a.point_value > b.point_value)
	for child in children:
		score_container.remove_child(child)
	for node in sorted_nodes:
		score_container.add_child(node)
	
