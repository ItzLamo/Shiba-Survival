extends Node2D
@export var speed: float = 150.0

func _physics_process(delta: float) -> void:
	position.x -= speed * delta
	if position.x < -200: # offscreen
		queue_free()
