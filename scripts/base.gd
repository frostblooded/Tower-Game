extends Node2D

signal health_changed(new_value)


func _on_Health_health_changed(new_value: int):
	emit_signal("health_changed", new_value)
