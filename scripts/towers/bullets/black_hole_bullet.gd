extends "res://scripts/towers/bullets/bullet.gd"

export var on_hit_spawned_scene: PackedScene


func _on_bullet_hit(_node: Node2D):
	var instance: Node2D = on_hit_spawned_scene.instance()
	instance.position = global_position
	get_tree().get_root().add_child(instance)
	queue_free()
