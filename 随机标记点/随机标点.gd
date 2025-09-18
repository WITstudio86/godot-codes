extends Node2D

#获取所有的标记点

func _process(_delta: float) -> void:
	var markers = $Markers.get_children()
	if Input.is_action_pressed("primary action"):
		var randpos =  markers[randi() % markers.size()] as Marker2D
		print(randpos , randpos.position , randpos.global_position)
