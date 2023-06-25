extends Node2D


export var black_hole_power: float = 1000000
export var max_tick_force: float = 10


func _physics_process(delta):
	var enemies: Array = get_tree().get_nodes_in_group("enemies")

	for enemy in enemies:
		var vector_to_enemy: Vector2 = global_position - enemy.global_position
		var distance: float = vector_to_enemy.length()

		if is_zero_approx(distance):
			return

		var move_direction: Vector2 = vector_to_enemy.normalized()
		var force: float = clamp(black_hole_power / (distance * distance), 0, max_tick_force)
		enemy.position += move_direction * force * delta


func _on_DisappearTimer_timeout():
	queue_free()
