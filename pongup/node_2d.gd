extends Node2D
var scoreL = 0
var scoreR = 0

func _process(delta):
	$Label.text = str(scoreL)
	$Label2.text = str(scoreR)


func _on_top_body_entered(body):
	body.direction.y *= -1

func _on_bot_body_entered(body):
	body.direction.y *= -1


func _on_left_body_entered(body):
	body.queue_free()
	var e = preload("res://bola.tscn").instantiate()
	e.global_position = Vector2(576,324)
	add_child(e)
	scoreR += 1

func _on_right_body_entered(body):
	body.queue_free()
	var e = preload("res://bola.tscn").instantiate()
	e.global_position = Vector2(576,324)
	add_child(e)
	scoreL += 1
