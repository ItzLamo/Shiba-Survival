extends Control


func _on_start_button_pressed() -> void:
	$UI.play()
	print("Start Button pressed!")
	get_tree().change_scene_to_file("res://Scenes/MessageScene.tscn")

func _on_exit_button_pressed() -> void:
	$UI.play()
	print("Exit button pressed!")
	get_tree().quit()

func _physics_process(_float) -> void:
	if 1 == 1 : 
		$Sprite2D.play("IDLE")
