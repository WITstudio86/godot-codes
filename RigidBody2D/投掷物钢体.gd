extends Node2D

# 加载投射物
var Genrade = preload("res://RigidBody2D/投掷物.tscn")

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("primary action"):
		# 实例化手雷
		var genrade = Genrade.instantiate() as RigidBody2D
		# 设置起始位置
		genrade.position = Vector2(0,200)
		# 设置速度
		genrade.linear_velocity = Vector2.RIGHT * 700 
		# 添加到节点树
		add_child(genrade)
