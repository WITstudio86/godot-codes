extends StaticBody2D


func _on_area_2d_body_entered(_body: Node2D) -> void:
	print("玩家已进入")


func _on_area_2d_body_exited(_body: Node2D) -> void:
	print("玩家已移出")
