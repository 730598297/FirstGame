extends CharacterBody2D


const SPEED = 300.0

@onready var flip = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	var direction := Input.get_axis("ui_left", "ui_right")
	if "ui_left":
		#flip.flip_h = true
		velocity.x = direction * SPEED
	elif "ui_right":
		velocity.x = direction * SPEED
		#flip.flip_h = false
		

	var yAxis := Input.get_axis("ui_up", "ui_down")
	if yAxis:
		velocity.y = yAxis * SPEED
	else:
		velocity.y = yAxis * SPEED

	move_and_slide()
