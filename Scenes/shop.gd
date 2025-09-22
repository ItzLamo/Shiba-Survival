extends Control
func _unhandled_input(event):
	if event.is_action_pressed("quit"):
		get_tree().change_scene_to_file("res://Scenes/main-node.tscn")
