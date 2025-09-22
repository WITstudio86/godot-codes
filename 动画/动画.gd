extends Node2D


func _process(delta: float) -> void:
	if Input.is_action_pressed("primary action"):
		var tweens = create_tween()
		tweens.tween_property($AnimatedSprite2D/Camera2D,"zoom",Vector2(1,1),1)
		
	if Input.is_action_pressed("secondmary Action"):
		var tweens = create_tween()
		tweens.tween_property($AnimatedSprite2D/Camera2D,"zoom",Vector2(0.6,0.6),1)
	
