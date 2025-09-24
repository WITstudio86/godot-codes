extends Node2D

var purple : int = 20
var blue : int = 5
@onready var purple_label = $"CanvasLayer/边距组件/水平盒子/垂直盒子/Label"
@onready var blue_label = $"CanvasLayer/边距组件/水平盒子/垂直盒子 2/Label"

const green = Color(0.108, 0.682, 0.358, 1.0)
const red = Color(0.949, 0.33, 0.314, 1.0)

func _ready() -> void:
	update_purple()
	update_blue()
	update_color(purple , purple_label)
	update_color(blue , blue_label)

func update_purple() -> void:
	purple_label.text = str(purple)

func update_blue() -> void :
	blue_label.text = str(blue)

func update_color(amount : int , label : Label ) -> void:
	"""
	@ amount 要判断的分数
	@ label 要变颜色的标签
	在分数为 0 ,的时候改为红色 , 否则设置为绿色
	"""
	if amount == 0:
		label.modulate = red
	else:
		label.modulate = green
	

func _on_垂直盒子_gui_input(event: InputEvent) -> void:
	"""
	在紫色盒子上触发 gui 事件的时候 更新数值
	"""
	if event is InputEventMouseButton:
		if event.is_action_pressed("primary action") and purple > 0:
			purple -= 1
			update_purple()
			update_color(purple , purple_label)

func _on_垂直盒子_2_gui_input(event: InputEvent) -> void:
	"""
	在蓝色盒子上触发 gui 事件的时候 更新数值
	"""
	if event is InputEventMouseButton:
		if event.is_action_pressed("primary action") and blue > 0:
			blue -= 1
			update_blue()
			update_color(blue , blue_label)
