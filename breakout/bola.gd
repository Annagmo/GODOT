extends CharacterBody2D
const speed = 300

var direction = Vector2.ZERO

func _ready():
	direction.x = [-1,1].pick_random()
	direction.y = [-1,1].pick_random()

func _physics_process(delta):
	velocity = (direction * speed)
	move_and_slide()
