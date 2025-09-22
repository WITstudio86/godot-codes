extends Node2D
class_name color_parent

func _process(_delta: float) -> void:
	pass

func left() -> void:	
	print("被点击")
	
func right() -> void:	
	print("被点击")


func _on_area_2d_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	"""
	鼠标在区域中点击的时候触发对应函数
	"""
	if event is InputEventMouseButton:
		if event.is_action_pressed("primary action"):
			left()
		if event.is_action_pressed("secondmary Action"):
			right()
