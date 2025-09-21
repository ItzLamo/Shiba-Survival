extends Button

func _on_pressed() -> void:
	$UI2.play()
	print("Start Button pressed!")
	get_tree().change_scene_to_file("res://Scenes/main-node.tscn")
