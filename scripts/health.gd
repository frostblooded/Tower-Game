extends Node2D
class_name Health

signal health_changed(new_value)

export var maxHealth: int = 10
export var currentHealth: int = 10

func _ready():
	currentHealth = maxHealth
	emit_signal("health_changed", currentHealth)

func take_damage(amount: int):
	if amount <= 0:
		return

	currentHealth -= amount
	emit_signal("health_changed", currentHealth)

	if currentHealth <= 0:
		owner.queue_free()
