extends Control


func _on_credits_pressed():
	get_tree().change_scene_to_file("res://Scenes/credits.tscn")


func _on_start_pressed():
	get_tree().change_scene_to_file("res://Scenes/sky.tscn")


func _on_options_pressed():
	get_tree().change_scene_to_file("res://Scenes/options.tscn")


func _on_quit_pressed():
	get_tree().quit()


func _on_sfx_slider_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"), value)


func _on_music_slider_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), value)
	
