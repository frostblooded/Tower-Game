extends Node2D
class_name TowerSpawner

var has_spawned_tower: bool = false


func add_tower(tower_scene: PackedScene):
	if has_spawned_tower:
		print_debug("Trying to spawn tower on spawner that already has spawned tower")
		return

	var tower: Node2D = tower_scene.instance()
	has_spawned_tower = true
	add_child(tower)
