extends Node2D

var direction: Vector2
export var speed: float = 200

func _physics_process(delta):
	if not direction.is_normalized():
		print_debug("Bullet direction not normalized: %s of length %f!" % [direction, direction.length()])

	position += delta * speed * direction
