extends Control


func _on_Health_health_changed(current_health: int, max_health: int):
	var health_ratio: float = (current_health as float) / max_health
	$CurrentHealthBar.value = health_ratio * 100
