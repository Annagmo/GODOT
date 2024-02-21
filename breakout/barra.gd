extends CharacterBody2D

const ballScene = preload("res://bola.tscn")
var direction = 0

func _physics_process(delta):
	var y = position.y
	var mouseX = get_global_mouse_position().x
	set_position(Vector2(mouseX, y))
	if Input.is_action_just_pressed("mouse"):
		var ball = ballScene.instantiate()
		get_tree().get_root().add_child(ball)
		

func _on_area_2d_body_entered(body):
	body.direction.y *= -1
