extends Node2D

func _process(delta: float) -> void:
	position += Vector2.RIGHT * 300 * delta
