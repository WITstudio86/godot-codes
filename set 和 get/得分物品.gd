extends Node2D



func _on_area_2d_mouse_entered() -> void:
	"""
	鼠标进入的时候加分
	"""
	GlobalSetGet.score += 1
