extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	pass
	
func _input(event):
	if event is InputEventMouseButton:
		print("Mouse click at ", event.position);
		var mouse_position = get_viewport().get_mouse_position();
		print(mouse_position);
		#var collider = $pig.get_collider()
		#if collider != null:
			#print("we gottem");
		

