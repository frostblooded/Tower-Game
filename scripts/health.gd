extends Node2D

export var maxHealth: float = 10
export var currentHealth: float = 10

func _ready():
	currentHealth = maxHealth

func take_damage(amount: float):
	currentHealth -= amount

	if currentHealth <= 0:
		owner.queue_free()
