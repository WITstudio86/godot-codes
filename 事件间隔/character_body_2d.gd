extends CharacterBody2D

"""
主要思路: 使用变量控制是否可以触发事件 , 在触发事件之后将变量 false 并且 打开计时器
计时器超时时将变量 true

计时器节点设置时长以及 one short , 使计时器只触发一次
"""

var can_primary = true
var can_second = true

func _process(_delta: float) -> void:
	#按下按键并剋触发的时候触发事件并将变量改为不触发 , 然后开启计时器
	if Input.is_action_pressed("primary action") and can_primary:
		print("主要事件触发")
		can_primary = false
		$PrimaryTimer.start()
	if Input.is_action_pressed("secondmary Action") and can_second:
		print("次要事件触发")
		can_second = false
		$SecondTimer.start()

#超时之后 改为可以触发
func _on_primary_timer_timeout() -> void:
	can_primary = true

func _on_second_timer_timeout() -> void:
	can_second = true
