extends "res://scripts/bullet.gd"


func _on_bullet_hit(node: Node2D):
	node.get_node("Health").take_damage($BulletDamage.damage)
	queue_free()