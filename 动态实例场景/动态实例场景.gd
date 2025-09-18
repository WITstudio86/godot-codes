extends Node2D

# 预加载被实例化场景类
var Target = preload("res://动态实例场景/被示例化.tscn")

func _process(_delta: float) -> void:
	if Input.is_action_pressed("primary action"):
		# 实例化场景
		var target = Target.instantiate() as Node2D
		# 添加到节点树
		add_child(target)
		#	设置其位置
		target.position = Vector2(0,200)
		
