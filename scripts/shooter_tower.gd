extends Node2D

export var bullet_scene: PackedScene

func get_closest_enemy():
	var enemies = get_tree().get_nodes_in_group("enemies")
	var closestEnemy = null
	var closestEnemyDist = INF

	for enemy in enemies:
		if not enemy:
			closestEnemy = enemy
		else:
			var distance = position.distance_to(enemy.position)

			if distance < closestEnemyDist:
				closestEnemy = enemy
				closestEnemyDist = distance

	return closestEnemy


func _on_ShotTimer_timeout():
	var bullet: Node2D = bullet_scene.instance()
	get_tree().get_root().add_child(bullet)

	var closestEnemy: Node2D = get_closest_enemy()
	var direction = (closestEnemy.position - position).normalized()

	bullet.direction = direction
	bullet.position = position
