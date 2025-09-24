extends CanvasLayer


func change_scene( target: String ) -> void:
	"""
		接受目标场景路径 跳转并播放过渡动画
	"""
	$AnimationPlayer.play("a_to_b")
	await $AnimationPlayer.animation_finished
	get_tree().change_scene_to_file(target)
	$AnimationPlayer.play_backwards("a_to_b")
