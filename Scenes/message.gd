extends Button

func _on_start_button2_pressed() -> void:
	$UI.play()
	print("Start Button pressed!")
	get_tree().change_scene_to_file("res://Scenes/main-node.tscn")
