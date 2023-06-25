extends CanvasLayer


func _on_Base_health_change(current_health: int, max_health: int):
	update_health_text(current_health, max_health)


func init_health_text(max_health: int):
	update_health_text(max_health, max_health)


func update_health_text(current_health: int, max_health: int):
	$HealthLabel.text = "Health: %d/%d" % [current_health, max_health]
