extends Node2D
class_name l1

#@export var target_level : PackedScene
@export var scence_path : String # 解决覆盖为 null 的情况

func _ready() -> void:
	if not scence_path:
		# 或者兜底
		scence_path = "res://关卡切换/关卡2.tscn"

func _on_area_2d_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.is_action_pressed("primary action"):
			TransitionLayer.change_scene(scence_path)
			print('切换 , target level:' , scence_path)
