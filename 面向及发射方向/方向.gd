extends Node2D

var Laser = preload("res://面向及发射方向/发射物.tscn")

func _on_character_body_2d_shoot(player_pos: Vector2, direction: Vector2) -> void:
	"""
	接收到发送信号
	"""
	# 实例化一个子弹
	var laser:Laser = Laser.instantiate() as Area2D
	# 修改位置到玩家
	laser.position = player_pos
	# 面向鼠标位置
	laser.rotation = direction.angle()
	# 设置移动方向
	laser.direction = direction
	# 添加到节点树
	add_child(laser)
