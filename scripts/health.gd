extends Node2D
class_name Health

signal health_changed(current_health, max_health)

export var max_health: int = 10
var current_health: int = 10


func _ready():
	current_health = max_health


func take_damage(amount: int):
	if amount <= 0:
		return

	current_health -= amount
	emit_signal("health_changed", current_health, max_health)

	if current_health <= 0:
		owner.queue_free()
