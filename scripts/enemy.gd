extends Node2D

export var speed: float = 100
export var damage: float = 1

func _physics_process(delta):
	position += delta * speed * Vector2.LEFT;


func _on_Area2D_area_entered(area:Area2D):
	var parent = area.get_parent()

	if parent.is_in_group("bases"):
		var health_node: Node2D = parent.get_node("Health")
		health_node.take_damage(damage)
		queue_free()
