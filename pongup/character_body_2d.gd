extends CharacterBody2D

@export var side = 0
const SPEED = 300.0

func _physics_process(delta):
	var direction
	if side == 1:
		direction = Input.get_axis("ui_left", "ui_right")
	else:
		direction = Input.get_axis("z", "x")
	
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()


func _on_area_2d_body_entered(body):
	body.direction.x *= -1
