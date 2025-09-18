extends CharacterBody2D

var Projectile = preload("res://面向及发射方向/发射物.tscn")
signal shoot(player_pos : Vector2 , direction:Vector2) # 携带玩家位置 , 面向方向

func _process(_delta: float) -> void:
	# 面向鼠标方向
	look_at(get_global_mouse_position())
	# 点击鼠标发射
	if Input.is_action_pressed("primary action"):
		# 计算鼠标相对于当前玩家的方向 , 并通分
		var direction = (get_global_mouse_position() - position).normalized()
		# 发送信号
		shoot.emit(global_position , direction)
		
