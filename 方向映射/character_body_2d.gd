extends CharacterBody2D

# 声明移动速度
@export var speed = 500

"""
需要先到 项目 => 项目设置 => 按键映射中添加按键
"""
func _process(_delta: float) -> void:
	#按照顺序获取-x, +x +y -y 事件
	# 下面的方法就根据时间生成对应的方向Vector2
	var direction = Input.get_vector("left" , "right","up","down")
	# 存储移动速度向量 , 移动方向 * 速度 , 
	# delta 不用 , move_and_slide 会自动处理
	velocity = direction * speed
	# 调用内置方法根据velocity 进行移动
	move_and_slide()
