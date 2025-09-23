extends RigidBody2D

@export var flap_strength: float = 300.0  # Adjust as needed
@export var gravity: float = 800.0        # Gravity force
@export var max_fall_speed: float = 500.0 # Limit falling speed

func _ready() -> void:
	# Freeze rotation so the bird doesn’t spin
	freeze = true

func _physics_process(delta: float) -> void:
	# Apply gravity manually for more control
	if linear_velocity.y < max_fall_speed:
		linear_velocity.y += gravity * delta

	# Optional: rotate slightly based on movement
	rotation = clamp(linear_velocity.y * 0.002, -0.4, 0.4)

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"): # Space or Enter by default
		flap()

func flap() -> void:
	# Apply an upward velocity
	linear_velocity.y = -flap_strength
