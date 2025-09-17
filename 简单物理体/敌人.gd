extends CharacterBody2D

var speed = 500

func _process(_delta: float) -> void:
	var direction = Vector2.RIGHT
	velocity = direction * speed
	move_and_slide()
	
