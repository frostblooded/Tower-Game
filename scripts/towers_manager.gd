extends Node2D

export var starter_tower: PackedScene


func _ready():
	add_tower(starter_tower)


func add_tower(tower_scene: PackedScene):
	var free_spawners: Array = get_free_spawners()

	if free_spawners.empty():
		return
	
	var spawner: TowerSpawner = free_spawners[0] as TowerSpawner
	spawner.add_tower(tower_scene)


func get_free_spawners() -> Array:
	var tower_spawners: Array = get_tree().get_nodes_in_group("tower_spawners")
	var free_spawners: Array = [];

	for spawner in tower_spawners:
		if not spawner.has_spawned_tower:
			free_spawners.append(spawner)
	
	return free_spawners
