extends Node2D

var direction: Vector2
export var speed: float = 200

func _physics_process(delta):
	position += delta * speed * direction


func _ready():
	$Sprite.rotation = direction.angle() + PI / 2


func _on_Area2D_area_entered(area: Area2D):
	var node: Node2D = area.owner

	if node.is_in_group("enemies"):
		_on_bullet_hit(node)


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_bullet_hit(_node: Node2D):
	queue_free()
