extends CharacterBody3D

@export var speed: float = 5.0  # Variable to control movement speed

func _physics_process(delta):
	var direction = Vector3.ZERO

	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_pressed("move_right"):
		direction.x += 1
	if Input.is_action_pressed("move_up"):
		direction.z -= 1
	if Input.is_action_pressed("move_down"):
		direction.z += 1
	
	# Normalize direction to prevent faster diagonal movement
	direction = direction.normalized()
	
	# Apply movement speed
	velocity = direction * speed
	
	# Move the character
	move_and_slide()
