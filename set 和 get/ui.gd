extends CanvasLayer

@onready var label = $MarginContainer/VBoxContainer/Label

func _ready() -> void:
	# 手动关联来自于全局的消息
	GlobalSetGet.connect("change_score" , Callable(on_change_score))
	update_label()

func update_label() -> void:
	label.text = str(GlobalSetGet.score)

func on_change_score() -> void:
	"""
	change_score消息触发的时候更新
	"""
	update_label()
