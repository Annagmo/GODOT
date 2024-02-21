extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_barreira_body_entered(body):
	body.direction.y *= -1
	body.direction.x *= -1


func _on_sides_body_entered(body):
	body.direction.x *= -1


func _on_top_body_entered(body):
	body.direction.x *= -1
