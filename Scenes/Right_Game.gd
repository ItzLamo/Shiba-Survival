extends Node

var game_end := false
var moves := 70

func _process(_delta):
	$Moves.text = "Moves left: " + str(moves)

	if not game_end:
		var spots := $Spots.get_child_count()
		for i in $Spots.get_children():
			if i.occupied:
				spots -= 1

		if spots == 0:
			game_end = true
			Global.score += moves 
			$AcceptDialog.title = "You Win!"
			$AcceptDialog.dialog_text = "You have got\n         +%d SSS" % [moves]
			$AcceptDialog.popup()

		elif moves <= 0:
			game_end = true
			$AcceptDialog.title = "Game Over!"
			$AcceptDialog.dialog_text = "No moves left!\nPress R to restart"
			$AcceptDialog.popup()

func _on_accept_dialog_confirmed() -> void:
	pass


func _on_restart_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Right.tscn")

func _on_next_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Right.tscn")

func _on_quit_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main-node.tscn")
