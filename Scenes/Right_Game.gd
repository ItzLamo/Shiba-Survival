extends Node

var game_end = false
var moves = 0
func _process(_delta):
	$Moves.text = 'Total Moves: ' + str(moves)
	if game_end == false:
		var spots = $Spots.get_child_count()
		for i in $Spots.get_children():
			if i.occupied:
				spots -= 1
		if spots == 0:
			$AcceptDialog.popup()
			game_end = true


func _on_accept_dialog_confirmed() -> void:
	pass # Replace with function body.
