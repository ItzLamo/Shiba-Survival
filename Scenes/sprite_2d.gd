extends Sprite2D

func _physics_process(delta: float) -> void:
	rotation_degrees
	if Input.is_action_pressed("ui_right"):
		flip_h = true
		pass
		
	if Input.is_action_pressed("ui_left"):
		flip_h = false
		pass
	
	pass
