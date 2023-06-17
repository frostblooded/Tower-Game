extends Node2D

export var enemy_scene: PackedScene


func _on_SpawningTimer_timeout():
	var enemy: Node2D = enemy_scene.instance()
	enemy.position = get_spawn_position(enemy)
	get_tree().get_root().add_child(enemy)


func get_spawn_position(enemy: Node2D) -> Vector2:
	var shape: RectangleShape2D = $Area2D/CollisionShape2D.shape as RectangleShape2D
	var extents: Vector2 = shape.extents * 2
	var enemy_shape: RectangleShape2D = enemy.get_node("Area2D/CollisionShape2D").shape as RectangleShape2D
	var x: float = extents.x + enemy_shape.extents.x
	var y: float = rand_range(0, extents.y)
	return position + Vector2(x, y)
