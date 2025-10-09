extends Control

func _ready():
	$TabBar/RichTextLabel/ItemsContainer/Panel1/Button.pressed.connect(_on_panel1_pressed)
	$TabBar/RichTextLabel/ItemsContainer/Panel2/Button.pressed.connect(_on_panel2_pressed)
	$TabBar/RichTextLabel/ItemsContainer/Panel3/Button.pressed.connect(_on_panel3_pressed)
	$TabBar/RichTextLabel/ItemsContainer/Panel4/Button.pressed.connect(_on_panel4_pressed)
	$TabBar/RichTextLabel/ItemsContainer/Panel5/Button.pressed.connect(_on_panel5_pressed)
	$TabBar/RichTextLabel/ItemsContainer/Panel6/Button.pressed.connect(_on_panel6_pressed)

func _on_panel1_pressed():
	_change_player_skin("res://assets/test1.png")

func _on_panel2_pressed():
	_change_player_skin("res://assets/test2.png")

func _on_panel3_pressed():
	_change_player_skin("res://assets/test3.png")

func _on_panel4_pressed():
	_change_player_skin("res://assets/test4.png")

func _on_panel5_pressed():
	_change_player_skin("res://assets/testt5.png")

func _on_panel6_pressed():
	_change_player_skin("res://assets/test6.png")

func _change_player_skin(texture_path: String):
	if Global.player == null:
		print("No player found in Global.gd!")
		return

	Global.player.change_skin(texture_path)
	print("Player skin changed to:", texture_path)

func _unhandled_input(event):
	if event.is_action_pressed("quit"):
		get_tree().change_scene_to_file("res://Scenes/main-node.tscn")
