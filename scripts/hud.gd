extends CanvasLayer


func _on_Base_health_changed(new_value: int):
	$HealthLabel.text = "Health: %d" % new_value
