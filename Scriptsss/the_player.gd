extends CharacterBody2D

var player_speed = 3 * 60

@onready var footstep = $step
@onready var sprite = $Sprite2D

func _physics_process(delta: float) -> void:
	velocity = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		sprite.flip_h = true
		velocity.x += 1
		sprite.play("WALK")
		
	if Input.is_action_pressed("ui_left"):
		sprite.flip_h = false
		velocity.x -= 1
		sprite.play("WALK")

	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
		sprite.play("WALK")

	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
		sprite.play("WALK")

	if velocity == Vector2.ZERO:
		sprite.play("IDLE")
		if footstep.playing:
			footstep.stop()
	else:
		velocity = velocity.normalized() * player_speed
		if not footstep.playing:
			footstep.play()

	move_and_slide()


func _on_right_door_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		get_tree().change_scene_to_file("res://Scenes/Right.tscn")

func _on_shop_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		get_tree().change_scene_to_file("res://Scenes/Shop.tscn")
