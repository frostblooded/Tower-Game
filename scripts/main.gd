extends Node2D


func _init():
	randomize()


func _ready():
	assert($Base/Health.connect("health_changed", $HUD, "_on_Base_health_change") == OK)
	$HUD.init_health_text($Base/Health.max_health)

