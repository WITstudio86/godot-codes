extends Area2D
class_name Laser


var direction = Vector2.LEFT
var speed = 500

func _process(delta: float) -> void:
	position += direction * speed * delta
	
