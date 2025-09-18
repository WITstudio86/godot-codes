extends StaticBody2D

#定义父组件的信号 , 在收到区域触碰消息之后父组件发出信号
signal body_entred
signal body_exited

func _on_area_2d_body_entered(_body: Node2D) -> void:
	print("玩家已进入")
	#传递信号
	body_entred.emit()

func _on_area_2d_body_exited(_body: Node2D) -> void:
	print("玩家已移出")
	body_exited.emit()
