extends Node2D

var direction: Vector2
export var speed: float = 200
export var damage: int = 1

func _physics_process(delta):
	if not direction.is_normalized():
		print_debug("Bullet direction not normalized: %s of length %f!" % [direction, direction.length()])

	position += delta * speed * direction

func _process(_delta):
	$Sprite.rotation = direction.angle() + PI / 2

func _on_Area2D_area_entered(area:Area2D):
	var node: Node2D = area.owner

	if node.is_in_group("enemies"):
		node.get_node("Health").take_damage(damage)
		queue_free()


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
